# dev-setup

This repository automates the setup of a development environment on Ubuntu 24.04 LTS or newer. It focuses on simplicity, stability, and maintaining a clean system by prioritizing official repositories and avoiding unnecessary customizations. Inspired by [Omakub Ubuntu Setup](https://github.com/basecamp/omakub).

## Key Features

* **Simplicity:** Just shell scripts are used to install the necessary tools.  This avoids the complexity of using configuration management tools like Ansible or Chef, which can be overkill for a simple setup.
* **Minimal Dependencies:**  The setup script is designed to be lightweight and does not require any additional dependencies.  This ensures that the installation process is quick and efficient.
* **Prioritized Installation Methods:** Uses `apt`, `flatpak`, `brew`, or developer-provided scripts in a preferred order to ensure stability.
* **Minimal System Changes:** Avoids unnecessary visual customizations to keep the system predictable and easy to maintain.

## Installation Instructions

Open a terminal and execute the following command:

```bash
eval "$(wget -qO - https://raw.githubusercontent.com/dsakuma/dev-setup/main/boot.sh)"
```

## Installation Priority

The following order of preference is used for installing software:

**Command-line Tools:**

1. **Ubuntu Repository (apt):**  Installation via `apt` is preferred for tools available in the official Ubuntu repositories. This ensures updates are managed by the system.
2. **Homebrew (brew):**  If a tool is not available in the Ubuntu repositories, Homebrew is the next preferred option.
3. **Developer Installation Script:**  If a package is unavailable via `apt` or `brew` the developer-provided script will be used.
4. **Snap (snap):**  Snap is used specifically when the Snap has a significantly cleaner installation method (e.g., Docker)

**Graphical Applications:**

1. **Ubuntu Repository (apt):**  Similar to command-line tools, `apt` is the preferred method for installing GUI applications available in the official Ubuntu repositories.
2. **Flathub (flatpak):**  Flathub is the second choice for GUI application installation, offering a wide selection of sandboxed applications.
3. **Developer Installation Script:**  As a last resort, if a package is unavailable via `apt` or when the application does not work well in flatpak sandbox (e.g., VS Code)

## Directory Structure

The repository is organized into directories for different stages of the setup process:

* **`01-pre-install/`**: Pre-installation scripts for basic tools and package managers.
* **`02-install-cli-apps/`**: Scripts to install command-line tools and libraries.
* **`03-install-gui-apps/`**: Scripts to install graphical applications.
* **`04-config/`**: Configuration scripts for installed tools.
* **`05-post-install/`**: Post-installation tasks.
* **`06-install-optional-apps/`**: Installation scripts for apps that are not automatically installed.
