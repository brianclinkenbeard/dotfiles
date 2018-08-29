# use vim as the global editor
export EDITOR='/usr/bin/vim'
export VISUAL="$EDITOR"

# use less as pager
export PAGER='/usr/bin/less'

# set xdg cache
export XDG_CACHE_HOME="$HOME/.cache"

# set default scale for bc
export BC_ENV_ARGS="$HOME/.bcrc"

# get rid of quotes in ls
export QUOTING_STYLE='literal'
