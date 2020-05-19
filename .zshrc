# ZSH settings
	  export ZSH="$HOME/.oh-my-zsh"
	  ZSH_THEME=geoffgarside
      ZSH_DISABLE_COMPFIX=true
	  plugins=(git)
	  source $ZSH/oh-my-zsh.sh


	export UPDATE_ZSH_DAYS=16
	export DISABLE_UPDATE_PROMPT=true


# rust path
export PATH="$HOME/.cargo/bin:$PATH"

# User configuration
export CLICOLOR=1
export TERM=xterm-256color
export EDITOR=vim
# export LSCOLORS="exfxcxdxbxegedabagacad"

# local install path customization
export LOCAL="/usr/local/"

if [[ -d "$LOCAL/share/zsh-syntax-highlighting" ]]; then
	source "$LOCAL/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi
if [[ -d "$HOMEBREW/share/zsh-autosuggestions" ]]; then
	# source "$LOCAL/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# Load custom aliases
if [[ -f "$HOME/workspace/dotfiles/zsh_aliases.inc" ]]; then
	source "$HOME/workspace/dotfiles/zsh_aliases.inc"
else
	echo >&2 "WARNING: can't load shell aliases"
fi


# Load custom functions
if [[ -f "$HOME/workspace/dotfiles/zsh_functions.inc" ]]; then
	source "$HOME/workspace/dotfiles/zsh_functions.inc"
else
	echo >&2 "WARNING: can't load shell functions"
fi

# GPG integration: https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b
# if [ -f "$HOME/.gnupg/gpg_profile" ] && command -v gpg-agent > /dev/null; then
#  source "$HOME/.gnupg/gpg_profile"
# else
#  log "WARNING: skipping loading gpg-agent"
# fi