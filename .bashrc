alias ls='ls --color=auto'

alias ды='ls --color=auto'
alias ьс='mc'
alias св='cd'
alias pingg='ping google.com'
alias mplayerxn='mplayer -vo x11 -zoom -x 1024 -y 768 -ao null'
alias mplayerxy='mplayer -vo x11 -zoom -x 1024 -y 768 -ao alsa'

alias transsets='transset 0.65 > /dev/null'

alias xterm='xterm -bg black -fg grey -font -*-terminus-bold-*-*-*-12-*-*-*-*-*-iso10646-*'
#alias irssi='irssi -c utf.rusnet.org.ru -p 7770'

#PS1='[\u@\h \W]\$ '
#PS1='\e[0m\[[\e[1;31m\u\e[0m@\e[1;33m\h\e[0m:\e[1;34m\w\e[0m]\]\$ \e[32m'
#PS1='\[\e[0m\][\[\e[1;31m\u\e[0m@\e[1;33m\A\e[0m:\e[1;34m\W\e[0m\]]\[\$\] \[\e[32m\]'
#PS1='\[\e[0m[\e[1;31m\u\e[0m@\e[1;33m\A\e[0m:\e[1;34m\W\e[0m]\$ \]'
PS1='\[\e[0m[\e[1;31m\u\e[0m@\e[1;33m\A\e[0m:\e[1;34m\W\e[0m]\]\$ \e[32m'

export PATH="/bin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/X11/bin"
export AWT_TOOLKIT="MToolkit"

shopt -s histappend
PROMT_COMMAND='history -a'

shopt -s cdspell
shopt -s nocaseglob

export HISTCONTROL="ignoredups"
#export HISTIGNORE=":ls:ls -la:exit:cd"

shopt -s cmdhist

