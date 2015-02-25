#!/bin/bash

VAGRANT_DIR=$1

HEADER_BLOCK_REGEX="# START VAGRANT:.*$(basename $VAGRANT_DIR)"
END_BLOCK_REGEX="# END VAGRANT:.*$(basename $VAGRANT_DIR)"

HEADER_BLOCK="# START VAGRANT: $VAGRANT_DIR"
END_BLOCK="# END VAGRANT: $VAGRANT_DIR"

# replace existing block in sshd_config
sed -in "/$HEADER_BLOCK_REGEX/,/$END_BLOCK_REGEX/d" ~/.ssh/config

# Grab vagrant status of all
VSTATUS=$( vagrant status | grep 'running' | awk '{print $1}')

echo $HEADER_BLOCK
for vm in $VSTATUS
do
  vagrant ssh-config $vm
done
echo $END_BLOCK