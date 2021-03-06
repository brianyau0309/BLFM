#!/bin/sh
# Required dmenu and st

# If list of ssh not exist, quit.
ssh_list="$HOME/.ssh/ssh_list"
[ -f $ssh_list ] || exit 1

list=$(grep "NAME:" $ssh_list | cut -d':' -f2)
[ -z "$list" ] && exit

selected=$(echo "Open config\n$list" | dmenu -i -l 10 -p "SSH")
[ -z "$selected" ] && exit
[ "$selected" = "Open config" ] && exec st -e $EDITOR $ssh_list && exit

info=$(sed -n "/$selected/,/^$/p" $ssh_list)
user=$(echo "$info" | grep 'USER:' | sed -e 's/USER://')
host=$(echo "$info" | grep 'HOST:' | sed -e 's/HOST://')
port=$(echo "$info" | grep 'PORT:' | sed -e 's/PORT://')
[ -z "$port" ] && port=22
iden=$(echo "$info" | grep 'IDEN:' | sed -e 's/IDEN://')

[ -z "$iden" ] &&
  st -t "$selected" -e ssh $user@$host -p $port ||
  st -t "$selected" -e ssh $user@$host -p $port -i $iden
