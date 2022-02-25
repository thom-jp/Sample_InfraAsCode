#!/bin/bash

if [ $# -ne 2 ]; then
	echo "You need to place [ID] and [HOST] as arguments" 1>&2
	exit 1
fi

echo -e "[servers]\n$2 ansible_ssh_user=$1" > ./inventory.ini
ssh-copy-id -i $HOME/.ssh/id_rsa.pub $1@$2

exit 0
