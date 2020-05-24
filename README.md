# ilker's dotfiles

## before everything

    xcode-select --install

## macOS Settings

    ~/.macos

## Shell

Install oh-my-zsh: "https://github.com/robbyrussell/oh-my-zsh"

## Package manager

- Install Homebrew &mdash;to `$HOME/.homebrew` instead of /usr/local:

      git clone https://github.com/Homebrew/brew.git $HOME/.homebrew

- Run `which brew` to confirm the one in home directory is picked up.
- Run `brew analytics off`

## Settings Sync

- Clone this repo and run `install_symlinks.sh`
  - Open a new terminal to take effect.
  
- iTerm2->Preferences->Load Preferences From: com.googlecode.iterm2.plist directory.
  - Restart iTerm2.

- VSCode:
  - Install "Settings Sync" extension and reload.
  - Run '> Sync: Download Settings'
  - Enter gist ID in `vscode.sync` file to prompt.
  - Once extensions are installed 'Reload' (or Restart)
  - Run '> Sync: Update/Upload Settings'
  - Create a token with 'gist' permissions and save it to the prompt
  - Wait for the Sync Summary.

## Git Setup

Run:

    ./git_setup.sh

Generate key with a password:

    ssh-keygen -f $HOME/.ssh/github_rsa

(You may want to redact hostname from the public key.)

Add key to the keychain:

    ssh-add $HOME/.ssh/github_rsa          # company-installed
    /usr/bin/ssh-add $HOME/.ssh/github_rsa # system

Upload the key to GitHub. "https://github.com/settings/keys" :

    cat ~/.ssh/github_rsa.pub| pbcopy

Save this to ~/.ssh/config:

Test connection:

    ssh -T git@github.com -i ~/.ssh/github_rsa
