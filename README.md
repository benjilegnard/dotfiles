# dotfiles

This repository holds my dotfiles configuration and ansible playbook config to instantiate a new linux dev machine very quickly.

Also the main goal is to version my config files and centralize my favorite tools. Expect frequent changes.

> WARNING: I DECLINE ALL RESPONSABILITY IF YOU USE THIS ON YOUR SYSTEM AND FUCK UP YOUR COMPUTER

## Quick setup

1. Install a debian-based linux distribution, prefer a server version, without a desktop environment
2. Install ansible, git, gpg and sudo : 
```
su -
apt-get update && apt-get install -y ansible git sudo gpg
adduser <your_username> sudo
```
3. Run tasks from this repository with ansible
```
ansible-pull --ask-become-pass -U https://github.com/benjilegnard/dotfiles.git -e "user=<your_username>"
```

## What's inside

A desktop environment with:
- [swaywm](https://swaywm.org/), a tiling window manager
- [swaylock](https://github.com/swaywm/swaylock#swaylock), a lock screen for sway
- [swaync](https://github.com/ErikReider/SwayNotificationCenter#readme) for notifications
- [waybar](https://github.com/Alexays/Waybar#waybar--) for a "taskbar"
- [wofi](https://hg.sr.ht/~scoopta/wofi) for launching apps

// TODO

The following applications:
- [ ] firefox
- [ ] chrome
- [ ] vscode
- [ ] neovim
- [ ] gimp
- [ ] fonts
- [ ] rhythmbox

With the catppuccin theme applied in mocha flavor for the following :

- [x] grub
- [ ] tty (not finished)
- [x] sddm
- [x] sway
- [x] swaync
- [x] wofi
- [ ] foot
- [ ] zsh
