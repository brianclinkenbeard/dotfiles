# use vim as the global editor
export EDITOR='/usr/bin/vim'
export VISUAL="$EDITOR"

# use less as pager
export PAGER='/usr/bin/less'

# set xdg cache
export XDG_CACHE_HOME="$HOME/.cache"

# hide texmf folder
export TEXMFHOME="$HOME/.texmf"

# set default scale for bc
export BC_ENV_ARGS="$HOME/.bcrc"

# set non reparenting env variable for java
export _JAVA_AWT_WM_NONREPARENTING=1

# get rid of quotes in ls
export QUOTING_STYLE='literal'
