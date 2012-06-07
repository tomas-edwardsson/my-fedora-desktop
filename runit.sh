#!/bin/bash


rpm -q puppet || sudo yum install -y puppet

if [ ! -d "$HOME/Puppet" ]; then
	echo "Couldnt find \"$HOME/Puppet\""
	exit
fi

sudo puppet apply --modulepath $HOME/Puppet/modules -v my-fedora-desktop.pp
