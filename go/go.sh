#!/bin/bash

. ./utils/functions.sh

sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
sudo apt-get install -y golang


if [ -d ~/golang ]; then
	echo "FOUND golang directory / workspace" 
else
	mkdir ~/golang
	echo "MADE ~/golang"
fi


if file_contains_string ~/.profile go-environment-variables; then
	echo "FOUND go-environment-variables"
else
	cat ./go/go-environment-variables >> ~/.profile
	echo "ADDED go-environment-variables"
fi	

