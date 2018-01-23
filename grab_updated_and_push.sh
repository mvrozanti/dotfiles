#!/bin/bash

# vim
cp -fR ~/.vimrc .
#cp -fR ~/.vim . # no space left on disk :I

# powerline
cp -fR  ~/.config/powerline .

# urlview
cp -fR ~/.urlview .

# ranger
cp -fR  ~/.config/ranger .

# tmux
cp -fR ~/.tmux.conf .

# .Xdefaults ; move to Xresources?
cp -fR ~/.Xdefaults .

# .bashrc
cp -fR ~/.bashrc .

# ownscripts
mkdir -p usr-local-bin
cp -fR /usr/local/bin/dota usr-local-bin .
cp -fR /usr/local/bin/scr usr-local-bin .
cp -fR /usr/local/bin/isthere usr-local-bin .
cp -fR /usr/local/bin/gitap usr-local-bin . 
cp -fR /usr/local/bin/gitai usr-local-bin .
cp -fR /usr/local/bin/switch_to* .
cp -fR /usr/local/bin/rngr .
cp -fR /usr/local/bin/ping-steam-user .
cp -fR /usr/local/bin/ytdl .

# push
gitap "$(date)"
