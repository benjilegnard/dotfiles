-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  view = {
    side = 'right',
  },  
})

vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeToggle, { desc = "Toggle Tree View" })
vim.keymap.set('n', '<leader>tf', vim.cmd.NvimTreeFocus, { desc = "Focus Tree View" })
vim.keymap.set('n', '<leader>tc', vim.cmd.NvimTreeCollapse, { desc = "Collapse Tree View Folders" })
vim.keymap.set('n', '<leader>ts', vim.cmd.NvimTreeFindFile, { desc = "Find and Move Current Buffer in Tree View" })

