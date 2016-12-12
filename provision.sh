#!/bin/bash


if [ -f ./provision.sh ]
then
	echo Begining provisioning...	
else
	echo "Please run provisioning.sh from that file's directory"
fi


sudo apt-get -y update

. ./git/git.sh

