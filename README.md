# dev-setup

This project provides a streamlined development environment setup for Ubuntu 24.04 LTS or newer. It focuses on simplicity and functionality, avoiding unnecessary cosmetic changes and ensuring a clean system. Inspired by [Omakub Ubuntu Setup](https://github.com/basecamp/omakub).

## Characteristics

- **Simplicity**: Focuses on functionality and avoids unnecessary cosmetic changes, making it easy to maintain and understand. For example, it does not change the desktop environment or install themes besides enabling the dark mode and night light.
- **Clean System**: Prioritizes using official repositories and avoids PPAs. Installs both command-line tools and GUI applications using a prioritized method to minimize conflicts. Priority order for installation:

  - For command-line tools:
    1. Install from the Ubuntu repository using `apt`
    2. Install from Homebrew using `brew`
    3. Install using an installation script from the developer, only when the package is not available in the previous methods or it is cleaner to install this way
  - For GUI apps:
    1. Install from the Ubuntu repository using `apt`
    2. Install from Flathub using `flatpak`
    3. Install from Snap using `snap`, only when snap version works better than other options (e.g., Docker and VSCode)

## Installation

From a terminal, run the following command:

```sh
eval "$(wget -qO - https://raw.githubusercontent.com/dsakuma/dev-setup/main/boot.sh)"
```
