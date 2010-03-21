zstyle ':completion:*' completer _expand _complete _correct _approximate 
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character 
zstyle ':completion:*' menu select=1 
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %
zstyle ':completion:*:processes' command 'ps -xuf'
zstyle ':completion:*:processes' sort false
zstyle ':completion:*:processes-names' command 'ps xho command'
zstyle :compinstall filename '/home/grouzen/.zshrc' 

autoload -U promptinit
promptinit 
prompt grouzen

autoload -Uz compinit && compinit
autoload -U colors && colors

alias mplayerxy="mplayer -vo xv -zoom -ao alsa 2>&1 > /dev/null"
alias mplayerxn="mplayer -vo xv -zoom -ao null 2>&1 > /dev/null"
alias mplayerxc="mplayer -tv driver=v4l2:device=/dev/video0 tv://"
alias ls="ls --color=auto --group-directories-first"
alias transsets="transset 0.65 > /dev/null"
alias transsetx="transset 0.8 > /dev/null"

alias -g G="| grep"
alias -g L="| less"
alias -g H="| head"
alias -g T="| tail"
alias -g NULL="> /dev/null"

export LC_ALL=en_US.UTF-8
PATH="/bin:/usr/bin:/usr/local/bin:/usr/X11/bin:/usr/lib/java/bin:/usr/local/php5.3/bin"; 
export PATH
AWT_TOOLKIT="MToolkit"; export AWT_TOOLKIT
BLOCKSIZE="Mb"; export BLOCKSIZE
EDITOR="vim"; export EDITOR
PAGER="less"; export PAGER
GREP_OPTIONS="--color=auto"; export GREP_OPTIONS
LD_LIBRARY_PATH="/usr/lib:/usr/local/php5.3/lib"; export LD_LIBRARY_PATH

#if [ ${TERM} = "rxvt-unicode" ]; then
#	export TERM=rxvt
#fi

# SBCL ENVIROMENT
#SBCL_HOME=/usr/lib/sbcl; export SBCL_HOME
SBCL_HOME=/usr/local/lib/sbcl; export SBCL_HOME

#CLASSPATH=
#for jar in /opt/javaprog/*
#do
#        CLASSPATH=":$jar$CLASSPATH"
#done
#CLASSPATH=":/opt/java/lib$CLASSPATH"; export CLASSPATH

setopt autocd
setopt CORRECT
#History
setopt APPEND_HISTORY
#setopt IGNORE_EOF
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt appendhistory extendedhistory histignorealldups
HISTFILE=~/.zhistory 
HISTSIZE=10000
SAVEHIST=10000

# Установка нормального поведения клавиш Delete, Home, End и т.д.:
case $TERM in
	linux*)
	bindkey "^[[2~" yank
	bindkey "^[[K"  delete-char
	bindkey "^[[I"  up-line-or-history
	bindkey "^[[G"  down-line-or-history
	bindkey "^[[1~" beginning-of-line
	bindkey "^[[4~" end-of-line
	bindkey "^[e"   expand-cmd-path
	bindkey "^[[A"  up-line-or-search
	bindkey "^[[B"  down-line-or-search
	bindkey " " magic-space
	;;
	*xterm*|*rxvt*|(dt|k|E)term)
#	rxvt-unicode)
	bindkey "^[[2~" yank
	bindkey "^[[3~" delete-char
	bindkey "^[[5~" up-line-or-history
	bindkey "^[[6~" down-line-or-history
#	bindkey "^[[H"  beginning-of-line
#	bindkey "^[[F"  end-of-line
#	bindkey "^[e"   expand-cmd-path
	bindkey "^[[A"  up-line-or-search
	bindkey "^[[B"  down-line-or-search
	bindkey " " magic-space
	bindkey "^[[8~"  end-of-line
	bindkey "^[[7~" beginning-of-line
	;;
esac

umask 022

# Установка заголовка терминала
case $TERM in
	rxvt*)
	precmd () {
		print -Pn "\033]0;%n@%m%% %~ \a"
	}
	preexec () {
		print -Pn "\033]0;%n@%m%% <$1> %~ \a"
	}
	;;
esac

autoload -U zmv
# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile

# Color definitions
RED="%{\e[1;31m%}"
GREEN="%{\e[1;32m%}"
YELLOW="%{\e[1;33m%}"
BLUE="%{\e[1;34m%}"
PINK="%{\e[1;35m%}"
CYAN="%{\e[1;36m%}"		
WHITE="%{\e[1;37m%}"

prompt_char="%(!.#.%%)"
prompt_newline=$'\n%{\r%}'
PROMPT="%{$fg[green]%}(%d)%B%{$fg[white]%}$prompt_char "
RPROMPT="%{$reset_color%}(%T)"

autoload -U tetris
zle -N tetris
bindkey ^T tetris

