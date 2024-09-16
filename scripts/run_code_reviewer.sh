#!/bin/bash

# Exit on any error
set -e

# Set environment variables
OPENAI_API_KEY="$OPENAI_API_KEY"
GITHUB_TOKEN="$GITHUB_TOKEN"
GITHUB_REPO="$GITHUB_REPO"
PR_NUMBER="$PR_NUMBER"

# Function to post a comment to the PR
post_pr_comment() {
    local message=$1
    curl -X POST \
      -H "Authorization: token $GITHUB_TOKEN" \
      -H "Content-Type: application/json" \
      -d "{\"body\": \"$message\"}" \
      "https://api.github.com/repos/$GITHUB_REPO/issues/$PR_NUMBER/comments"
}

# Function to post a review to the PR
post_pr_review() {
    local message=$1
    local event=$2
    curl -X POST \
      -H "Authorization: token $GITHUB_TOKEN" \
      -H "Content-Type: application/json" \
      -d "{\"body\": \"$message\", \"event\": \"$event\"}" \
      "https://api.github.com/repos/$GITHUB_REPO/pulls/$PR_NUMBER/reviews"
}

echo "Using GitHub repo: $GITHUB_REPO"
echo "Using PR number: $PR_NUMBER"

# Fetch all branches and commits
git fetch --all

# Check out the base branch (e.g., 'main') to ensure it's available
git checkout main

# Get the list of changed files in the PR
CHANGED_FILES=$(git diff --name-only origin/main)

echo "Changed files:"
echo "$CHANGED_FILES"

# Flag for successful review
success=true

for file in $CHANGED_FILES; do
    echo "Reviewing $file"

    FILE_DIFF=$(git diff origin/main -- "$file")

    RESPONSE=$(curl -X POST https://api.openai.com/v1/completions \
      -H "Authorization: Bearer $OPENAI_API_KEY" \
      -H "Content-Type: application/json" \
      -d '{
        "model": "gpt-4",
        "prompt": "Review the following code and provide detailed suggestions for improvement:\n\n'"$FILE_DIFF"'",
        "max_tokens": 300,
        "temperature": 0
      }')

    echo "OpenAI response:"
    echo "$RESPONSE"

    SUGGESTION=$(echo "$RESPONSE" | jq -r '.choices[0].text // "No suggestions available"')

    echo "Suggestion for $file:"
    echo "$SUGGESTION"

    if [ "$SUGGESTION" != "No suggestions available" ]; then
        REVIEW_PAYLOAD=$(cat <<EOF
        {
          "body": "$SUGGESTION",
          "event": "COMMENT"
        }
EOF
        )

        echo "Posting review:"
        echo "$REVIEW_PAYLOAD"

        RESPONSE=$(curl -X POST \
          -H "Authorization: token $GITHUB_TOKEN" \
          -H "Content-Type: application/json" \
          -d "$REVIEW_PAYLOAD" \
          "https://api.github.com/repos/$GITHUB_REPO/pulls/$PR_NUMBER/reviews")

        # Check if response indicates an error
        if echo "$RESPONSE" | grep -q "error"; then
            echo "Error posting review for $file: $RESPONSE"
            success=false
        fi
    else
        echo "No suggestion provided for $file."
    fi
done

# Post final review based on success flag
if [ "$success" = true ]; then
    post_pr_comment "The PR has been reviewed and is ready to merge."
else
    post_pr_comment "The PR has been reviewed but contains issues. Please check the review comments."
fi
