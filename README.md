# dev-setup

This project provides a streamlined development environment setup for Ubuntu 24.04 LTS or newer.  It prioritizes simplicity and a clean system, focusing on essential functionality and avoiding unnecessary cosmetic changes.  This approach ensures ease of maintenance and understanding. Inspired by [Omakub Ubuntu Setup](https://github.com/basecamp/omakub).


## Key Features

* **Simplicity:**  Focuses on core development tools and avoids unnecessary visual customizations.  For example, while dark mode and night light are enabled, the desktop environment and themes are not modified. This keeps the system predictable and reduces the risk of conflicts.
* **Clean System:**  Emphasizes using official repositories and avoids Personal Package Archives (PPAs) whenever possible.  Both command-line tools and graphical applications are installed using a prioritized method to minimize conflicts and maintain system stability.

## Installation Priority

The following order of preference is used for installing software:

**Command-line Tools:**

1. **Ubuntu Repository (apt):**  Installation via `apt` is preferred for tools available in the official Ubuntu repositories. This ensures updates are managed by the system.
2. **Homebrew (brew):**  If a tool is not available in the Ubuntu repositories, Homebrew is the next preferred option.
3. **Developer Installation Script:**  As a last resort, if a package is unavailable via `apt` or `brew`, or if a developer-provided script offers a significantly cleaner installation method, that script will be used.

**Graphical Applications:**

1. **Ubuntu Repository (apt):**  Similar to command-line tools, `apt` is the preferred method for installing GUI applications available in the official Ubuntu repositories.
2. **Flathub (flatpak):**  Flathub is the second choice for GUI application installation, offering a wide selection of sandboxed applications.
3. **Snap (snap):**  Snap is used as a final option for GUI applications, specifically when the Snap version offers advantages over other options (e.g., Docker and VS Code).

## Installation Instructions

Open a terminal and execute the following command:

```bash
eval "$(wget -qO - https://raw.githubusercontent.com/dsakuma/dev-setup/main/boot.sh)"
