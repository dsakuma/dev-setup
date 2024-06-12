# Need for installers
sudo apt update
sudo snap refresh snap-store
sudo apt install -y curl git unzip

# Run installers
for script in ./install/*.sh; do . $script; done

# Upgrade everything
sudo apt upgrade -y

