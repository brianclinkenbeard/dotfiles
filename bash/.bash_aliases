alias vim='nvim'
alias trash='trashy'

alias rdc='docker compose down && docker compose up -d'
alias rpc='podman-compose down && podman-compose up -d'

alias checkip='dig +short txt ch whoami.cloudflare @1.1.1.1 | tr -d \"'
alias ports='sudo ss -tuln'

# Respect aliases with sudo
alias sudo='sudo '
