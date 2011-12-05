#!/bin/bash

if [ ! -d "$HOME/Puppet" ]; then
	echo "Couldnt find \"$HOME/Puppet\""
	exit
fi

cat <<EO | sudo puppet --modulepath $HOME/Puppet/modules -v
include autofs
include repos
include display::nvidia
include chat
include bluetooth
include video
include configmanagement
include debugutils
include media
include diskutils
include gnome3
include	flash
include mindmanager
include remote
include programming
include watewasdo
include finance
EO
