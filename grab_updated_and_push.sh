#!/bin/bash

old_directory="$(pwd)"
this_directory="/mnt/4ADE1465DE144C17/gdrive/Programming/bash/dotfiles"

cd "$this_directory"
commit_message="$@"

if [ -z "$commit_message" ]; then
    echo Missing commit message
    return 1;
fi

# netbeans
# cp -fR ~/.zshrc . 

# vimfx
cp -fR ~/.vimfx .

# zsh
cp -fR ~/.zshrc . 

# .profile
cp -fR ~/.profile .

# vim
cp -fR ~/.vimrc .

# powerline
cp -fR  ~/.config/powerline .

# whatsapp css
cp -fR /opt/whatsapp-desktop/resources/app/css/settings.css .

# urlview
cp -fR ~/.urlview .

# ranger
cp -fR  ~/.config/ranger .

# ncmpcpp
cp -fR  ~/.ncmpcpp/ .

# urxvt
cp -fR  ~/.urxvt/ .

# tmux
cp -fR ~/.tmux.conf .

# .Xdefaults ; move to Xresources?
cp -fR ~/.Xdefaults .

# .bashrc
cp -fR ~/.bashrc .

# .bashrc
cp -fR ~/.bash_aliases .

# mutt
cp -fR ~/.muttrc .

# .cinnamon
cp -fR ~/.cinnamon/configs .
cp -fR /usr/share/themes/Mint-Y-Dark/ .
dconf dump /org/cinnamon/desktop/keybindings/ > dconf-settings.conf

# some of waterfox
cp -fR ~/.waterfox/yky6952o.default/chrome .

# mpd
cp -fR /etc/mpd.conf .

# ownscripts
mkdir -p usr-local-bin
cp -fR /usr/local/bin/dota usr-local-bin
cp -fR /usr/local/bin/scr usr-local-bin
cp -fR /usr/local/bin/isthere usr-local-bin
cp -fR /usr/local/bin/gitap usr-local-bin
cp -fR /usr/local/bin/gitai usr-local-bin
cp -fR /usr/local/bin/gitundo usr-local-bin
cp -fR /usr/local/bin/dropbox usr-local-bin
cp -fR /usr/local/bin/switch_to* usr-local-bin
cp -fR /usr/local/bin/rngr usr-local-bin
cp -fR /usr/local/bin/steamautoclose usr-local-bin
cp -fR /usr/local/bin/ping-steam-user usr-local-bin
cp -fR /usr/local/bin/ytdl usr-local-bin
cp -fR /usr/local/bin/clip usr-local-bin
cp -fR /usr/local/bin/re usr-local-bin
cp -fR /usr/local/bin/usage usr-local-bin
cp -fR /usr/local/bin/todo usr-local-bin
cp -fR /usr/local/bin/youtube-pl usr-local-bin
#cp -fR /usr/local/bin/mpc-play-pause usr-local-bin
cp -fR /usr/local/bin/pipes usr-local-bin
cp -fR /usr/local/bin/murxvtt usr-local-bin

# pip packages
pip2 list > pip2_packages.txt
pip3 list > pip3_packages.txt

# push
gitap "$commit_message"

echo "Cleaning up..."
find . |grep -vE "*.(css|gif|sh|md)"|grep -v ".git"|xargs rm -rf 2> /dev/null

cd "$old_directory"
