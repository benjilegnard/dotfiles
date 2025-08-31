#!/bin/bash

# BenjiLeGnard's ubuntu setup
#
# 1. Install an Ubuntu server base
# 2. install git, ansible, sudo,
# 3. add yourself in the sudoers group
#
# 2. Run this script with user
#
sudo ansible-pull --ask-become-pass -U https://github.com/benjilegnard/dotfiles.git -e "user=$(whoami) uid=1000"
