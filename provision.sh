#!/bin/bash


if [ -f ./provision.sh ]
then
	echo Begining provisioning...	
else
	echo "Please run provisioning.sh from the file's directory"
	return 1
fi


sudo apt-get -y update

. ./git/git.sh
. ./go/go.sh
. ./vim/vim.sh

