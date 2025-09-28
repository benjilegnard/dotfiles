<div align="center">
<img src="./blg-catppuccin-logo.webp" style="width: 100px; height: 100px;" alt="a duck silouhette on a rainbow background"/>

# Benji Le Gnard's<br/> d&nbsp;&nbsp;o&nbsp;&nbsp;t&nbsp;&nbsp;&nbsp;&nbsp;f&nbsp;&nbsp;i&nbsp;&nbsp;l&nbsp;&nbsp;e&nbsp;&nbsp;s

</div>

This repository holds my dotfiles configuration and ansible playbook config to instantiate a new linux dev machine very quickly.

Also, the main goal is to version my config files and centralize my favorite tools. Expect frequent changes.

> [!WARNING]
> I DECLINE ALL RESPONSIBILITY IF YOU USE THIS ON YOUR SYSTEM AND FUCK UP YOUR COMPUTER

## What's inside

A desktop environment with:
- [swaywm](https://swaywm.org/), a tiling window manager
- [swaylock](https://github.com/swaywm/swaylock#swaylock), a lock screen for sway
- [swaync](https://github.com/ErikReider/SwayNotificationCenter#readme) for notifications
- [waybar](https://github.com/Alexays/Waybar#waybar--) for a "taskbar"
- [wofi](https://hg.sr.ht/~scoopta/wofi/) for launching apps

Wallpapers from [Simon Stalhenag](http://www.simonstalenhag.se/)

Common apps: firefox, gimp, inkscape, audacity, shotcut, openscad, blender, shotwell, mvp, rhytmbox and more

TUI tools:
- [difftastic](https://github.com/Wilfred/difftastic#readme) : better git diffs
- [diskonaut](https://github.com/imsnif/diskonaut#diskonaut) : disk usage
- [eza](https://github.com/eza-community/eza#readme) : a modern `ls` replacement
- [flamelens](https://github.com/YS-L/flamelens#flamelens) : a flamegraph viewer
- [jwt-ui](https://github.com/jwt-rs/jwt-ui#readme) : a jwt decoder
- [lazydocker](https://github.com/jesseduffield/lazygit#readme) : docker tui
- [lazygit](https://github.com/jesseduffield/lazygit#readme) : git tui
- [lazyjj](https://github.com/Cretezy/lazyjj#lazyjj) : jj tui
- [openapi-tui](https://github.com/zaghaghi/openapi-tui#demo) : browse swagger / openapi files
- [presenterm](https://github.com/mfontanini/presenterm#presenterm) : presentation tool in the terminal
- [procs](https://github.com/dalance/procs) : a replacement for `ps`
- [ripgrep](https://github.com/BurntSushi/ripgrep#readme) : a better grep
- [serie](https://github.com/lusingander/serie#serie) : rich git commit graph viewer
- [serpl](https://github.com/yassinebridi/serpl#serpl) : search and replace interface
- [tokei](https://github.com/xampprocky/tokei#tokei-%E6%99%82%E8%A8%88) : list code stats
- [yazi](https://github.com/sxyazi/yazi#readme) : a finder-like file manager & browser
- [zoxide](https://github.com/ajeetdsouza/zoxide#zoxide) : faster and smarter `cd`

Everything is themed to the [catppuccin color palette](https://catppuccin.com/)

## Screenshots

__Sway, waybar, foot with tmux and neovim__:

![Screen shot of a linux OS running sway, waybar, foot with tmux and neovim](./docs/screenshot-1.png)

__Wofi__:

![Screen shot of a linux OS running wofi over sway](./docs/screenshot-2.png)

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
ansible-pull --ask-become-pass -U https://github.com/benjilegnard/dotfiles.git -e "user=<your_username> uid=1000"
```
