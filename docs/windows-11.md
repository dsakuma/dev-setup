# Configure Windows

To avoid 5 character user folder name: Create local account first, then login into MS acconnt

## Install

### Install Packages
```
winget install -e --id \
  discord.discord \
  epicgames.epicgameslauncher \
  Flameshot.Flameshot \
  google.chrome \
  Google.Drive \
  Logitech.OptionsPlus \
  microsoft.visualstudiocode \
  Oracle.VirtualBox \
  Spotify.Spotify \
  TeamViewer.TeamViewer \
  Telegram.TelegramDesktop \
  valve.steam \
  WhatsApp.WhatsApp
```
  
### Fonts

1. Download these four ttf files:
   - [MesloLGS NF Regular.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
   - [MesloLGS NF Bold.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
   - [MesloLGS NF Italic.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
   - [MesloLGS NF Bold Italic.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)
2. Double-click on each file and click "Install".


## Setup

Windows Terminal settings
1. Install Dracula theme on Windows Terminal: https://draculatheme.com/windows-terminal
2.  On "Settings > Defaults > Additional Settings > Appearance" Set MesloLGSNF and One Half Dark
3. On "Settings > Defaults > Additional Settings > Advanced" Disable notification bell

## SSH Keys

```
# Enable ssh-agent
Start-Service ssh-agent
ssh-add ~/.ssh/id_rsa
sudo Set-Service ssh-agent -StartupType Automatic
```