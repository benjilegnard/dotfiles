# dotfiles

This repository holds my dotfiles configuration and ansible playbook config to instantiate a new linux dev machine very quickly.

Also the main goal is to version my config files and centralize my favorite tools. Expect frequent changes.

## Quick setup

1. Install a debian-based linux distribution, prefer a server version, without a desktop environment
2. Install ansible : 
```
sudo apt-get update && sudo apt-get install -y ansible
```
3. Run tasks from this repository with ansible
```
sudo ansible-pull -U https://github.com/benjilegnard/dotfiles.git
```

## What's inside

A desktop environment with:
- [swaywm](https://swaywm.org/), a tiling window manager
- [swaylock](https://github.com/swaywm/swaylock#swaylock), a lock screen for sway
- [swaync](https://github.com/ErikReider/SwayNotificationCenter#readme) for notifications
- [waybar](https://github.com/Alexays/Waybar#waybar--) for a "taskbar"
- [fuzzel](https://codeberg.org/dnkl/fuzzel#fuzzel) for launching apps

The following applications:
- [firefox]
- [chrome]
- [vscode]
- [neovim]
- [gimp]
- [fonts]
- [rhythmbox]

With the catppuccin theme applied in mocha flavor :

- 