#!/bin/bash



sudo apt-get install -y git bash-completion

if grep -q bash ~/.profile; then
	echo "FOUND"
else
	cat ./git/bash_completion_addition >> ~/.profile
	echo "NOT FOUND"
fi	

