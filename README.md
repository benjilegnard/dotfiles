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
- [swaywm]
- [swaylock]
- [swaync] 
- [waybar] for configuration

The following applications:
- [firefox]
- [chrome]
- [vscode]
- [neovim]
- [gimp]
- [fonts]
- [rhythmbox]
- []

With the catppuccin theme applied in mocha flavor :

- 