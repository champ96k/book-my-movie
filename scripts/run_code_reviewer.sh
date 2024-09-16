#!/bin/bash

# Set environment variables
OPENAI_API_KEY="$OPENAI_API_KEY"
GITHUB_TOKEN="$GITHUB_TOKEN"
GITHUB_REPO="$GITHUB_REPO"
PR_NUMBER="$PR_NUMBER"

# Get the list of changed files in the PR
CHANGED_FILES=$(git diff --name-only origin/main)

echo "Changed files:"
echo "$CHANGED_FILES"

# Loop through each changed file and review it using OpenAI API
for file in $CHANGED_FILES; do
    echo "Reviewing $file"

    # Get the diff of the file
    FILE_DIFF=$(git diff origin/main -- "$file")

    # Call OpenAI's API for code review
    RESPONSE=$(curl -X POST https://api.openai.com/v1/completions \
      -H "Authorization: Bearer $OPENAI_API_KEY" \
      -H "Content-Type: application/json" \
      -d '{
        "model": "gpt-4",
        "prompt": "Review the following code and provide detailed suggestions for improvement:\n\n'"$FILE_DIFF"'",
        "max_tokens": 300,
        "temperature": 0
      }')

    # Extract and print the suggestions from OpenAI's response
    SUGGESTION=$(echo "$RESPONSE" | jq -r '.choices[0].text')
    echo "Suggestion for $file:"
    echo "$SUGGESTION"

    # Use the GitHub API to post the suggestion as a comment on the PR
    COMMENT_PAYLOAD=$(cat <<EOF
{
  "body": "$SUGGESTION",
  "path": "$file",
  "position": 1,
  "side": "RIGHT"
}
EOF
    )

    curl -X POST \
      -H "Authorization: token $GITHUB_TOKEN" \
      -H "Content-Type: application/json" \
      -d "$COMMENT_PAYLOAD" \
      "https://api.github.com/repos/$GITHUB_REPO/pulls/$PR_NUMBER/comments"
done
