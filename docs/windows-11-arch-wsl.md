# Install ArchWSL

Install wsl_update.msi from [here](https://docs.microsoft.com/pt-br/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package)

Download ArchWSL
1. Download Arch from https://github.com/yuk7/ArchWSL
2. Extract to C:/

## Register Arch on WSL
```
wsl --update
cd C:/Arch
.\Arch.exe
wsl --set-default Arch
```

## Create user (on Arch terminal)
```
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
useradd -m -G wheel -s /bin/bash dsakuma
passwd dsakuma
exit
```

## Set default Arch user (on PowerShell)
```
Arch.exe config --default-user dsakuma
```