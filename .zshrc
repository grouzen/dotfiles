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

alias ls="ls --color=auto --group-directories-first"

alias -g G="| grep"
alias -g L="| less"
alias -g H="| head"
alias -g T="| tail"
alias -g NULL="> /dev/null"
alias mplayer=mpv
alias -g webhttpcrap="python -m http.server"
alias chrome="google-chrome-stable"

export GTK2_RC_FILES="/home/grouzen/.gtkrc-eclipse"

PATH="/bin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/X11/bin/:/usr/games/bin/:/opt/bin/:/home/grouzen/bin"; 
export PATH

GOPATH="$HOME/prog/go"
export GOPATH

BLOCKSIZE="Mb"; export BLOCKSIZE
EDITOR="vim"; export EDITOR
VISUAL="vim"; export VISUAL
PAGER="less"; export PAGER
GREP_OPTIONS="--color=auto"; export GREP_OPTIONS
LD_LIBRARY_PATH="/usr/lib"; export LD_LIBRARY_PATH

# SBCL ENVIROMENT
SBCL_HOME=/usr/lib64/sbcl; export SBCL_HOME

export LC_ALL="en_US.UTF-8"


# Android tools
PATH=${PATH}:~/android-sdks/platform-tools/
export PATH

# Play2 framework
PATH=${PATH}:~/sources/play-2.2.3-RC2
export PATH

# Cabal (Haskell) binaries
PATH=${PATH}:~/.cabal/bin; export PATH

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
	bindkey "^[[2~" yank
	bindkey "^[[3~" delete-char
	bindkey "^[[5~" up-line-or-history
	bindkey "^[[6~" down-line-or-history
	bindkey "^[[A"  up-line-or-search
	bindkey "^[[B"  down-line-or-search
	bindkey " " magic-space
	bindkey "^[[8~"  end-of-line
	bindkey "^[[7~" beginning-of-line
	;;
esac

umask 022

case $TERM in
	rxvt-unicode*)
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

