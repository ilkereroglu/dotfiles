log() {
  echo >&2 "[~/.zshrc] $(tput setaf 245)$*$(tput sgr0)"
}

mcd() {
  mkdir -p "${1:?Need to specify an argument}" && cd "$1"
}

_git_dbg() {
  echo >&2 "$(tput setaf 1)+ git $@$(tput sgr0)"
  git "$@"
}