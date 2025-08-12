alias vim='nvim'
alias trash='gio trash'

alias rdc='docker compose down && docker compose up -d'
alias rpc='podman-compose down && podman-compose up -d'

alias checkip='dig +short txt ch whoami.cloudflare @1.1.1.1 | tr -d \"'
alias localip="hostname -I | cut -d' ' -f1"
alias ports='sudo ss -tuln'
alias perm='stat -c "%a"'

alias sc='systemctl'
_completion_loader systemctl
complete -F _systemctl sc

# Respect aliases with sudo
alias sudo='sudo '
