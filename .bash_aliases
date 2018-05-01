# THIS SHOULD BE IN SYNC W/ RPI AND LAPTOP
# ALIAS BLOCK START
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -lF'
#alias mocp='mocp -T transparent-background'
alias watch='watch --color -n1'
alias grep='grep --color'
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias py2='python2'
alias py3='python3'
alias s='sudo'
alias create-readme='cp $HOME/.README.md ./README.md && vim README.md'
alias r='ranger --choosedir=$HOME/.rangerdir --cmd="set preview_files=true" "$(if [ -z "$@" ]; then cat $HOME/.rangerdir; fi)";cd "`cat $HOME/.rangerdir`"'
alias sr='sudo ranger --choosedir=$HOME/.rangerdir --cmd="set preview_files=true" "$(if [ -z "$@" ]; then cat $HOME/.rangerdir; fi)"|lolcat-c;cd "`cat $HOME/.rangerdir`"'
alias v='vim'
# test .Xdefaults colors
alias testx='echo;for a in {40..47}; do echo -ne "\e[0;30;$a""m  ""\e[0;37;39m "; done; echo ""'
alias cutefetch='while true; do screenfetch_out="$(screenfetch -a $HOME/nexor.ascii -p)$(testx;echo;echo;echo)";clear;printf "$screenfetch_out"|lolcat-c;sleep 0.01; done'
alias neofetch="screenfetch -a $HOME/nexor.ascii -p"
alias vmutt='sudo vim $HOME/.muttrc'
alias vvrc='sudo vim $HOME/.vimrc'
alias vr='sudo vim $HOME/.config/ranger'
alias gc='git clone'
alias vp='vim "$HOME/Dropbox/Sys4Bank - Programas Java/pendencias.txt"'
alias sv='sudo vim'
alias vtmux='vim $HOME/.tmux.conf'
alias srm='sudo rm'
alias find='sudo find'
alias mkdir='mkdir -p'
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
alias cfp='commit_message="$@";cd $HOME/disk/gdrive/Programming/bash/dotfiles;./grab_updated_and_push.sh $commit_message'
alias motd='sudo cat /etc/update-motd.d/nexor.asc'
alias serve='python3 -m http.server 2717'
alias schmod='sudo chmod'
alias snode='sudo node'
alias sf='sudo find / -iname'
alias weather='curl wttr.in'
alias h='cd ..'
alias eye='tail -f'
alias ka='killall'
alias e='echo'
alias c='xsel -i -b'
# alias gitap='whatdo () { message="$@"; if [[ -n $message ]]; then git add .;  git commit -m $message; git push; else echo "Commit message is missing"; fi }; whatdo'

# alias replace-everywhere='grep -rl $oldstring /path/to/folder | xargs sed -i s@$oldstring@$newstring@g'
alias feh='feh --sort mtime'
alias cal='calcurse'
alias randip="dd if=/dev/urandom bs=4 count=1 2>/dev/null | od -An -tu1 | sed -e 's/^ *//' -e 's/  */./g'"
alias mp42wmv='ffmpeg -i "$@" -c:v wmv2 -b:v 1024k -c:a wmav2 -b:a 192k output.wmv'
alias o='xdg-open'
alias g='grep'
alias it='ps aux|head -n -1|grep '
alias prolog='swipl -q'
alias t='date +%s'
alias rsync='rsync -a --info=progress2'

# open in existing browser window
alias waterfox='[[ $(ps aux|grep -c waterfox) -eq 1 ]] && waterfox || waterfox -new-tab'
# alias corner="kek=\"$@\";echo $kek|tail -n1|grep -oE '[^ ]+$'"

# alias mp42gif='mp4_file="$@"; mkdir -p animation_frames; ffmpeg -i "$mp4_file" -r 5 "animation_frames/frame-%03d.jpg"; convert -delay 20 -loop 0 animation_frames/*.jpg animation.gif; rm -r animation_frames'
