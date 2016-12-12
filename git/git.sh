#!/bin/bash

. ./utils/functions.sh

sudo apt-get install -y git bash-completion

if file_contains_string ~/.profile bash-completion; then
	echo "FOUND bash-completion"
else
	cat ./git/bash_completion >> ~/.profile
	echo "ADDED bash-completion"
fi	


if file_contains_string ~/.profile parse_git_branch; then
	echo "FOUND parse_git_branch"
else
	cat ./git/parse_git_branch >> ~/.profile
	echo "ADDED parse_git_branch"
fi

