-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- yes
vim.g.have_nerd_font = true

-- files loaded from ~/.config/nvim/lua folder
require("lazy-init")
require("remap")
require("set")
