# Configure Mac

## Install

### Install homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Load homebrew

```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Add Taps

```
brew tap homebrew/cask
brew tap homebrew/cask-fonts
```

### Install packages

```
brew install \
    fd \
    fzf \
    git \
    jq \
    lazygit \
    mise \
    ripgrep \
    starship \
    tig \
    tldr \
    zsh-syntax-highlighting \
    zsh-autosuggestions
```

```
brew install --cask \
    deezer \
    djview \
    docker \
    flameshot \
    font-jetbrains-mono-nerd-font \
    font-meslo-lg-nerd-font \
    google-chrome \
    google-drive \
    intellij-idea-ce \
    iterm2 \
    the-unarchiver \
    visual-studio-code  \
    whatsapp
```

### Install nix

```
sh <(curl -L https://nixos.org/nix/install)
```

### Install vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim]
```

## Dotfiles

```
sudo gem install homesick
homesick clone git@github.com:dsakuma/dotfiles.git
homesick link dotfiles
exec zsh -l
```

## Post dotfiles

### Install vim plugins

```
vim +PlugInstall +qall
```

## Setup

### Enable hold key to repeat movement in VSCode

```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

## SSH keys

1. Copy ssh keys to Mac
2. Add ssh private and public keys to ~/.ssh

### Add keys to ssh-agent

```
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_rsa
```
