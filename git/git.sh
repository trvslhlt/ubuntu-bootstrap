#!/bin/bash



sudo apt-get install -y git bash-completion

if grep -q bash-completion ~/.profile; then
	echo "FOUND bash-completion"
else
	cat ./git/bash_completion_addition >> ~/.profile
	echo "ADDED bash-completion"
fi	


if grep -q parse_git_branch ~/.profile; then
	echo "FOUND parse_git_branch"
else
	cat ./git/parse_git_branch >> ~/.profile
	echo "ADDED parse_git_branch"
fi
