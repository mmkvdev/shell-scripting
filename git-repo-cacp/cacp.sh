### Shell Script to Automate CheckOut(Branch) - Add - Commit(Staging) - Push(Origin) - Pull (Upstream)
# echo ('Under a shell of plenty of things')


#!/bin/bash

# Solely Made with Research and Grind for progressive thinking
# @Bash

# formatting git_status
statusColor='\e[1;31m'
# commitColor='\e[1;42m'

# determine the current branch
feature_branch=$(git rev-parse --abbrev-ref HEAD)

echo "the feature branch is: " "$feature_branch"

# displaying the git status
feature_status=$(git status)

echo "git status:\n" ""$statusColor" $feature_status"\

# adding all the changes to staging environment
git add -i

# capturing the commit message
commit_message="$1"

echo "the commit message is:" "${commit_message}"

# committing all the changes
git commit -m "$commit_message"

# checking-in all the latest changes from upstream
echo "checking-in all the latest changes from upstream"
git pull origin master

# pushing all the changes to the feature branch
git push origin "$feature_branch"

