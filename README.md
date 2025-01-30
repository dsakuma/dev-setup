# dev-setup

My development environment setup for Ubuntu 24.04 LTS or newer.

To avoid polluting the system with too many source lists, PPAs and dependencies on specific instructions, this setup uses the following priority order to install a package:

- For comand line tools
  1. Install from Ubuntu repo using `apt`
  2. Install from Homebrew using `brew`
  3. Install using a installation script from the developer
- For GUI apps
  1. Install from Ubuntu repo using `apt`
  2. Install from Flathub using `flatpak`
  3. Install from Snap using `snap` (currently only for docker and vscode)

## Installation

From a terminal, run the following command:

```sh
wget -qO- https://raw.githubusercontent.com/dsakuma/dev-setup/main/boot.sh | bash
```
