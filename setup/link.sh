#!/bin/bash

cd ~/env_config/config 2>&1 > /dev/null
RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc"

for f in $RCFILES; do
    DEST=~/.$f
    echo "[*] link $DEST ..."
	[ -f "$DEST" ] && rm -f "$DEST"
	ln -s ~/env_config/config/$f "$DEST"
done
