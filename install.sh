# Need for installers
sudo apt update
sudo snap refresh snap-store
sudo apt install -y curl git 

# Run installers
for script in ./install/*.sh; do . $script; done

# Run setup
for script in ./setup/*.sh; do . $script; done

# Run dotfiles
for script in ./dotfiles/*.sh; do . $script; done

# Run post-dotfiles
for script in ./post-dotfiles/*.sh; do . $script; done

# Upgrade everything
sudo apt upgrade -y

echo "Finished! You may need to restart your session for changes to take effect." 