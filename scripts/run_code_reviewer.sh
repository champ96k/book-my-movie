#!/bin/bash

set -e

# Environment variables
OPENAI_API_KEY="$OPENAI_API_KEY"
GITHUB_TOKEN="$GITHUB_TOKEN"
GITHUB_REPO="$GITHUB_REPO"
PR_NUMBER="$PR_NUMBER"

# Function to post a comment to the PR
post_pr_comment() {
    local message=$1
    echo "Posting comment: $message"
    curl -s -X POST \
      -H "Authorization: token $GITHUB_TOKEN" \
      -H "Content-Type: application/json" \
      -d "{\"body\": \"$message\"}" \
      "https://api.github.com/repos/$GITHUB_REPO/issues/$PR_NUMBER/comments"
}

# Function to generate a review using OpenAI
generate_review() {
    local file_diff=$1
    local response=$(curl -s -X POST https://api.openai.com/v1/completions \
      -H "Authorization: Bearer $OPENAI_API_KEY" \
      -H "Content-Type: application/json" \
      -d '{
        "model": "gpt-4",
        "prompt": "Review the following code and provide detailed suggestions for improvement:\n\n'"$file_diff"'",
        "max_tokens": 1000,
        "temperature": 0.7
      }')

    local review=$(echo "$response" | jq -r '.choices[0].text // "No suggestions available"')
    echo "$review"
}

# Generate a summary of changes in the PR
generate_summary() {
    local changed_files=$1
    local summary="### Summary of Changes\n\n"

    for file in $changed_files; do
        local file_summary="**File:** $file\n"
        local file_diff=$(git diff origin/main...HEAD -- "$file")
        local functions_added=$(echo "$file_diff" | grep -E '^\+[^+]' | grep -E '^[^\+\s]*\s+[\w]+\s*\(.*\)' | sort | uniq)
        local functions_deleted=$(echo "$file_diff" | grep -E '^\-[^-]' | grep -E '^[^\-\s]*\s+[\w]+\s*\(.*\)' | sort | uniq)
        local functions_refactored=$(echo "$file_diff" | grep -E '^\+[^+]' | grep -E '^[^\+\s]*\s+[\w]+\s*\(.*\)' | grep -E '^[^\+\s]*\s+[\w]+\s*\(.*\)' | sort | uniq)

        file_summary+="**Changes:**\n$file_diff\n\n"
        if [ -n "$functions_added" ]; then
            file_summary+="**Functions Added:**\n$functions_added\n\n"
        fi
        if [ -n "$functions_deleted" ]; then
            file_summary+="**Functions Deleted:**\n$functions_deleted\n\n"
        fi
        if [ -n "$functions_refactored" ]; then
            file_summary+="**Functions Refactored:**\n$functions_refactored\n\n"
        fi

        summary+="$file_summary"
    done

    echo "$summary"
}

echo "Using GitHub repo: $GITHUB_REPO"
echo "Using PR number: $PR_NUMBER"

# Fetch all branches and commits
git fetch --all

# Check out the base branch (e.g., 'main') to ensure it's available
git checkout main

# Get the list of changed files in the PR
CHANGED_FILES=$(git diff --name-only origin/main...HEAD)

echo "Changed files:"
echo "$CHANGED_FILES"

# Flag for successful review
success=true

# Initialize summary
SUMMARY=""

# Loop through changed files and generate reviews
for file in $CHANGED_FILES; do
    echo "Reviewing $file"

    FILE_DIFF=$(git diff origin/main...HEAD -- "$file")

    # Generate review from OpenAI
    SUGGESTION=$(generate_review "$FILE_DIFF")

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

        RESPONSE=$(curl -s -X POST \
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

# Generate summary of changes
SUMMARY=$(generate_summary "$CHANGED_FILES")

# Post final review based on success flag
if [ "$success" = true ]; then
    post_pr_comment "The PR has been reviewed and is ready to merge.\n\n$SUMMARY"
else
    post_pr_comment "The PR has been reviewed but contains issues. Please check the review comments.\n\n$SUMMARY"
fi
