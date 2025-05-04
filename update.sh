#!/bin/bash

# Define the snippets folder
SNIPPETS_DIR="/home/aiden178/Programming/amm-git-repos/amm-code-snippets"

# Navigate to the snippets directory
cd "$SNIPPETS_DIR" || { echo "Failed to cd into $SNIPPETS_DIR"; exit 1; }

# Check for changes
if ! git diff --quiet || ! git diff --cached --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
    git add .
    git commit -m "Update snippets on $(date '+%Y-%m-%d %H:%M:%S')"
    git push -u origin main
else
    echo "No changes to commit."
fi
