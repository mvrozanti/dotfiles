# THIS SHOULD BE IN SYNC W/ RPI AND LAPTOP
# ALIAS BLOCK START
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# alias xclip='xsel -b -i'
#alias mocp='mocp -T transparent-background'
alias watch='watch -n1'
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias py2='python2'
alias py3='python3'
alias s='sudo'
alias create-readme='cp $HOME/.README.md ./README.md && vim README.md'
alias r='ranger --choosedir=$HOME/.rangerdir --cmd="set preview_files=true" "$(if [ -z "$@" ]; then cat $HOME/.rangerdir; fi)";cd "`cat $HOME/.rangerdir`"'
alias sr='sudo ranger --choosedir=$HOME/.rangerdir --cmd="set preview_files=true" "$(if [ -z "$@" ]; then cat $HOME/.rangerdir; fi)"|lolcat-c;cd "`cat $HOME/.rangerdir`"'
alias v='vim'
alias neofetch='while true; do screenfetch_out="$(screenfetch -a nexor.ascii -p)";clear;printf "$screenfetch_out"|lolcat-c;sleep 0.01; done'
alias vmutt='sudo vim $HOME/.muttrc'
alias vvrc='sudo vim $HOME/.vimrc'
alias vr='sudo vim $HOME/.config/ranger'
alias vp='vim "$HOME/Dropbox/Sys4Bank - Programas Java/pendencias.txt"'
alias sv='sudo vim'
alias vtmux='vim $HOME/.tmux.conf'
alias srm='sudo rm'
alias find='sudo find'
# terminal geographic map
alias termap='telnet mapscii.me'
# tmux attach
alias ta='tmux a -t sess0'
alias smv='sudo mv'
alias msk='ncmpcpp'
alias vxdef='sudo vim $HOME/.Xdefaults'
# config bashrc
alias cfb='sudo vim $HOME/.bashrc'
# config this
alias cfa='sudo vim $HOME/.bash_aliases'
# config dotfiles
alias cfd='sudo vim $HOME/disk/gdrive/Programming/bash/dotfiles/grab_updated_and_push.sh'
# config push
alias cfp='cd $HOME/disk/gdrive/Programming/bash/dotfiles;./grab_updated_and_push.sh'
alias motd='sudo cat /etc/update-motd.d/nexor.asc'
alias serve='python3 -m http.server 2717'
# config dotfiles
alias schmod='sudo chmod'
alias snode='sudo node'
# ALIAS BLOCK END
