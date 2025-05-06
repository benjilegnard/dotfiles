#!/bin/bash

# specific commands for MacOS installation

# ----
# brew
# ----
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ---------
# alacritty
# ---------
mkdir -p ~/.config/alacritty
cp ./config/alacritty/alacritty.toml ~/.config/alacritty/

# -----
# yabai
# -----
# see 

# ---------
# aerospace (abandoned because it needs Ventura minimum)
# ---------

# see https://github.com/nikit abobko/AeroSpace
#brew install --cask nikitabobko/tap/aerospace
#mkdir -p ~/.config/aerospace
#cp ./config/aerospace/aerospace.toml ~/.config/aerospace/

# ----------
# sketchybar
# ----------

# see 
brew install fastfetch neovim jq nvm rust zig 
