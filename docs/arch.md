# Configure Arch/Manjaro

## Install

### Install yay

```
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git /tmp/yay
(cd /tmp/yay && makepkg -si)
```

### Install packages

```
yay -S \
    aws-cli-v2 \
    base-devel \
    discord \
    docker \
    docker-compose \
    fd \
    flameshot \
    fzf \
    google-chrome \
    insomnia-bin \
    jq \
    miniconda3 \
    mise \
    nerd-fonts-jetbrains-mono \
    nix \
    ripgrep \
    spotify \
    starship \
    tig \
    tldr \
    ttf-jetbrains-mono \
    ttf-meslo-nerd \
    tmux \
    vim \
    vim-plug \
    visual-studio-code-bin \
    wget \
    zsh-syntax-highlighting-git \
    zsh-autosuggestions-git
```

### Gnome Terminal Dracula

```
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
```

### Docker configuration

```
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
```

### Nix configuration

```
sudo systemctl enable nix-daemon.service
sudo gpasswd -a $USER nix-user
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

### Use local time for RTC (to make it consistent with Windows dual boot)

```
timedatectl set-local-rtc 1
```

### Turn on bluetooth on startup

```
sudo sed -i 's/# AutoEnable=false/AutoEnable=true/' /etc/bluetooth/main.conf
```

<!-- ### Enable AUR on pamac
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo sed -Ei '/CheckAURUpdates/s/^#//' /etc/pamac.conf -->

<!-- ### Add swapfile
sudo dd if=/dev/zero of=/swapfile bs=1M count=4096 status=progress
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo zsh -c "echo /swapfile none swap defaults 0 0 >> /etc/fstab" -->

## SSH Keys

1. Copy ssh keys to Arch/Manjaro
2. Add ssh private and public keys to ~/.ssh

3. Add keys to ssh-agent

```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```
