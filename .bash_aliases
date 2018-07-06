# THIS SHOULD BE IN SYNC W/ RPI AND LAPTOP
# ALIAS BLOCK START
alias rm='rm -f'
alias ll='ls -alFh'
alias la='ls -A'
alias lo='ls --sort=time'
alias l='ls -lF --sort=time'
alias watch='watch --color -n1'
alias grep='egrep --color'
alias agi='sudo apt-get install'
alias agu='sudo apt-get update'
alias agr='sudo apt-get remove'
alias py2='python2'
alias py3='python3'
alias s='sudo'
alias create-readme='cp $HOME/.README.md ./README.md && vim README.md'
alias r='ranger --choosedir=$HOME/.rangerdir --cmd="set preview_files=true" "$(if [ -z "$@" ]; then cat $HOME/.rangerdir; fi)";cd "`cat $HOME/.rangerdir`"'
alias sr='sudo ranger --choosedir=$HOME/.rangerdir --cmd="set preview_files=true" "$(if [ -z "$@" ]; then cat $HOME/.rangerdir; fi)";cd "`cat $HOME/.rangerdir`"'
alias v='vim'
alias em='emacs -nw'
# test .Xresources colors
alias testx='echo;for a in {40..47}; do echo -ne "\e[0;30;$a""m  ""\e[0;37;39m "; done; echo ""'
alias cutefetch='while true; do screenfetch_out="$(screenfetch -a $HOME/nexor.ascii -p)$(testx;echo;echo;echo)";clear;printf "$screenfetch_out"|lolcat-c;sleep 0.01; done'
alias neofetch="screenfetch -a $HOME/nexor.ascii -p"
alias vmutt='sudo vim $HOME/.muttrc'
alias vvrc='sudo vim $HOME/.vimrc'
alias vr='sudo vim $HOME/.config/ranger'
alias gc='git clone'
alias gac='git add -A; git commit -m '
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
alias vxdef='sudo vim $HOME/.Xresources; xrdb $HOME/.Xresources'
# config bashrc
alias cfb='sudo vim $HOME/.bashrc'
# config this
alias cfa='sudo vim $HOME/.bash_aliases'
# config dotfiles
alias cfd='sudo vim $HOME/disk/gdrive/Programming/bash/dotfiles/grab_updated_and_push.sh'
# config push
alias cfp='. $HOME/disk/gdrive/Programming/bash/dotfiles/grab_updated_and_push.sh'
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
alias co='xsel -o -b'
alias feh='feh --sort mtime'
alias cal='calcurse'
alias randip="dd if=/dev/urandom bs=4 count=1 2>/dev/null | od -An -tu1 | sed -e 's/^ *//' -e 's/  */./g'"
alias 2wmv='sudo ffmpeg -c:v wmv2 -b:v 99M -c:a wmav2 -b:a 192k output.wmv -i'
alias o='xdg-open'
alias g='grep'
alias it='ps aux|head -n -1|grep '
alias prolog='swipl -q'
alias t='date +%s'
alias rsync='rsync -a --info=progress2'
# open in existing browser window
alias waterfox='[[ $(ps aux|grep -c waterfox) -eq 1 ]] && waterfox || waterfox -new-tab'
alias R='R --silent '
# alias mp42gif='mp4_file="$@"; mkdir -p animation_frames; ffmpeg -i "$mp4_file" -r 5 "animation_frames/frame-%03d.jpg"; convert -delay 20 -loop 0 animation_frames/*.jpg animation.gif; rm -r animation_frames'
alias acs='apt-cache search'
alias lisp='clisp --silent'
alias pa='ps aux|grep'
alias jsonify='python -m json.tool'
alias iftop='sudo iftop -Nlp'
alias cava='cava -p $HOME/.config/cava/config'
alias usdbrl='curl "http://free.currencyconverterapi.com/api/v5/convert?q=USD_BRL&compact=y" 2>&1 | re "\:(\d[^}]+)}" | e R\$ $(cat -)'
alias eurbrl='curl "http://free.currencyconverterapi.com/api/v5/convert?q=EUR_BRL&compact=y" 2>&1 | re "\:(\d[^}]+)}" | e R\$ $(cat -)'
alias btcbrl='curl "http://free.currencyconverterapi.com/api/v5/convert?q=BTC_BRL&compact=y" 2>&1 | re "\:(\d[^}]+)}" | e R\$ $(cat -)'
alias ali='apt list --installed'
alias alsao2i='pacmd set-default-source "alsa_output.pci-0000_00_1b.0.analog-stereo.monitor"'
alias alsai2i='pacmd set-default-source "alsa_input.pci-0000_00_1b.0.analog-stereo"'
alias alsawat='pacmd list-sources|grep -A 5 \* '
alias giquo='re "\"([^\"]+)"'
alias gipar='re "\(([^\)]+)"'
alias gip='re "((\d{1,3}\.){3}\d{1,3})"'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias cutecat='awk "{print $0; system(\"sleep .001\");}"'
#   text to speech:
function tts(){ printf "(SayText "`cat -`")" | festival -i;}
function vapor(){ vapore="`cat -`"; n=1;if [[ "$1" == "-n" ]]; then n=$2;fi;for i in {1..$n};do vapore="`echo $vapore | sed -r 's/(.)/\1 /g'`";done;echo $vapore; }
alias d='trash'
alias mbtc='/mnt/4ADE1465DE144C17/gdrive/Programming/bash/mbtc/alerter.sh'
alias rp='realpath'
# short whereis for scripting
function wis(){ whereis "$1" | cut -d':' -f2 | cut -d' ' -f2;}
alias reip='re "\d+\.\d+\.\d+\.\d+"'
alias ecdsa='ssh-keygen -l -f /etc/ssh/ssh_host_ecdsa_key.pub'
alias pi2='sudo -H pip2 install'
alias pi='sudo -H pip3 install'
alias vzsh='sudo vim $HOME/.zshrc'
alias up2pi='rsync -a "`pwd`" torta:'
# alias sumlines='python3 -c "import sys; print(eval("+".join(sys.stdin).replace("\n",""))"'
# alias backup='rsync -e "ssh -p 22" -avzp /home/nexor/kekao 25.25.25.25:'
alias tf='tail -f'
function t2d(){ timestamp="`cat -`"; date -d "@$timestamp"; }
function knock(){ nc -z -w3 "$1" "$2"; echo $?; }
# exit code of arg
function ec() { [[ "$1" == "-h" ]] && { shift && eval $* > /dev/null 2>&1; ec=$?; echo $ec; } || eval $*; ec=$?; }
function sshasap(){ while [[ $(nc -z -w1 "$1" 22) -gt 0 ]];do sleep 1; done; beep; ssh "$1"; }
function copa(){ kek="$(curl -s http://worldcup.sfg.io/matches/current)"; echo -n $kek|jq '.[0].home_team.goals'|tr -d '\n'; echo -n 'x'; echo $kek|jq '.[0].away_team.goals'; }
alias cfs='ls /home/nexor/Dropbox/Sys4Bank\ -\ Programas\ Java/**/config_*.properties|v -'
alias diff='diff --color=auto'
alias fslint='/usr/share/fslint/fslint/fslint'
alias stream='pkill darkice; alsao2i; tmux new -d darkice'  
# cd() { builtin cd "$@" && ls; }
alias READTHIS='grip -b'
