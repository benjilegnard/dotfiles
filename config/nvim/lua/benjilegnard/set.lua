-- Make line numbers default
vim.opt.number = true
-- Add relative line numbers, to help with jumping.
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
-- Save undo history
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"

vim.diagnostic.config({ virtual_text = true })

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
