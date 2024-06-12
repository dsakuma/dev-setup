# dev-setup

## Installation

```bash
echo "Installing git..."
sudo apt-get update > /dev/null
sudo apt-get install -y git > /dev/null

echo "Cloning stable dev-setup..."
git clone -b stable https://github.com/dsakuma/dev-setup.git ~/dev/dsakuma/dev-setup > /dev/null

source ~/dev/dsakuma/dev-setup/install.sh
```

## SSH Keys

Add ssh private and public keys to ~/.ssh and give the private key the correct permissions.

```bash
chmod 600 ~/.ssh/id_rsa
ssh-add
```
