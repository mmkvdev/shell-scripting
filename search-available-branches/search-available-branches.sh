#!/bin/bash

# searches for a branch based on the command line argument passed (search-item) from the list of existing available branches

search_branch="$1"

if git branch | grep "$search_branch"
then
	echo "The branch that you are looking for is already present in your current repository"
	echo "checking to the branch that you're looking for"
	git switch "$search_branch"
else
	echo "$search_branch" "doesn't exist in your list of branches. Most probably you didn't create or didn't fetch from origin."
	echo "Let me do that now"
	git checkout -b "$search_branch"
fi

# TODO: checking the current changes in the branch before switching to a new branch created from the automated command