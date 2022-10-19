#!/bin/bash

echo -e '\033[1;31mPlease put IMG or ISO file in the same directory \033[m'

lsblk | grep disk

echo "------------------------------------"

echo "What  USB do you want to use?"

read USB

echo "------------------------------------"

ls | grep *.img
ls | grep *.iso

echo '-------------------------------------'

echo "What file above would you like to use?"

read file


sudo dd if=$file of=/dev/$USB bs=4M status=progress

exit 0
