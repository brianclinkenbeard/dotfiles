# MODULES AND SETUP

# load completion
autoload -Uz compinit
compinit

# set prompt
autoload -Uz colors && colors
PROMPT=" %{${fg_bold[red]}%}%3~%(0?. . %{${fg[red]}%}%? )%{${fg[blue]}%}»%{${reset_color}%} "

# colorize completion
zstyle ':completion:*' list-colors ''

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# set history file and set size to 25
HISTFILE="$HOME/.zhistory"
HISTSIZE=25
SAVEHIST=25

# history search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# bind keys
bindkey "${terminfo[khome]}" beginning-of-line	# Home
bindkey "${terminfo[kend]}" end-of-line			# End
bindkey "${terminfo[kdch1]}" delete-char		# Delete
bindkey '^[[1;5C' forward-word					# Ctrl + Right
bindkey '^[[1;5D' backward-word					# Ctrl + Left

# let patterns not matching a filename kept unchanged
setopt NO_NOMATCH

# GENERAL ALIASES

# modified commands
alias diff='colordiff'
alias grep='grep --color=auto --ignore-case'
alias mkdir='mkdir -p -v'

# ls
alias ls='ls -h --color=auto'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# error friendly cd
alias cd..='cd ..'

# for dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# set wallpaper
alias cw="feh --randomize --bg-fill $HOME/pictures/wallpapers/"

# recompile dwm/st/surf
alias redwm="cd $HOME/documents/pkgs/dwm; make; sudo checkinstall"

# spt pause/unpause and time
#alias pstart="nohup spt -e $HOME/.bin/ping.sh &>/dev/null &"
#alias ptime="pkill --signal 10 -x 'spt'"
#alias ppause="pkill --signal 12 -x 'spt'"

# MISCELLANEOUS

# disable start and stop mappings (rtorrent)
stty stop undef
stty start undef

# use Ctrl + O to run prepend sudo to current line
prepend-sudo()
{
    [[ -z $BUFFER ]] && zle up-history
    [[ $BUFFER != sudo\ * ]] && LBUFFER="sudo $LBUFFER"
}
zle -N prepend-sudo
bindkey '^O' prepend-sudo
