-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require('benjilegnard.lazy-init')
require('benjilegnard.remap')
require('benjilegnard.set')
