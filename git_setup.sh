#!/bin/bash
set -euo pipefail
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

EMAIL_1="ilkereroglu"
EMAIL_2="gmail.com"

set -x

# author
git config --global user.name "Ilker Eroglu"
git config --global user.email "${EMAIL_1}@${EMAIL_2}"

# use https remotes and osxkeychain for creds
git config --global credential.helper osxkeychain
git config --global url.git\@github\.com\:.pushInsteadOf https://github.com/
git config --global gpg.program "gpg"
git config --global commit.gpgsign false  # if you want to sign every commit
# git config --global user.signingkey 3F5805D9E5BD242E8F2B2354AA6880B9D0B5E5C1

# use ssh in hub (commented out since pushInsteadOf)
# git config --global hub.protocol ssh # https://github.com/github/hub/issues/1614

# diff-so-fancy and its color scheme
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta "227"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "227 bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"

# rebase helper
git config --global sequence.editor interactive-rebase-tool

# install symlink for ssh config
# SSH_CONFIG="$HOME/.ssh/config"
# if [[ -f "$SSH_CONFIG" ]]; then
#   rm "$SSH_CONFIG"
# fi
# ln -s "$SCRIPT_DIR/ssh_config" "$SSH_CONFIG"

git config --global core.editor "nano"
git config --global core.excludesfile ~/workspace/dotfiles/.gitignore_global

# use vscode as the editor
# git config --global core.editor "code --wait"