#!/bin/bash
[[ -d $HOME/.wgetall ]] || mkdir $HOME/.wgetall
# Download directory
currentdir = "$PWD"
SAVEPATH = "${1-$currentdir}"
# Save link address to /home/*/.wgetall/list
list = $HOME/.wgetall/list
echo -n "Link to download: "

read LINK

echo "$LINK" >> "$list"
wget -r -np -nc -e robots=off -c --reject --random-wait index.html,index.html* ${LINK} -P $SAVEPATH

echo "Done"
