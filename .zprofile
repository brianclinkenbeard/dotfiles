# add /usr/sbin, ~/.bin, and ~/.go/bin to $PATH
#export PY_USER_BIN=$(python -c 'import site; print(site.USER_BASE + "/bin")')
#export PATH="/usr/sbin:$PATH:$HOME/.bin:$HOME/.go/bin:$PY_USER_BIN"
# not working for now
export PATH="/usr/sbin:$PATH:$HOME/.bin:$HOME/.go/bin:$HOME/.cargo/bin:$HOME/.local/bin"
