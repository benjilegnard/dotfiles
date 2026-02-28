-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jj", "<Esc>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- launch terminal
vim.keymap.set("n", "<leader>lt", function()
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, { desc = "[L]aunch [T]erminal" })

vim.keymap.set("n", "<leader>lg", function()
  vim.cmd("terminal lazygit")
  vim.cmd("startinsert")
end, { desc = "[L]aunch lazy[G]it in terminal" })

vim.keymap.set("n", "<leader>ld", function()
  vim.cmd("terminal lazydocker")
  vim.cmd("startinsert")
end, { desc = "[L]aunch lazy[D]ocker in terminal" })

vim.keymap.set("n", "<leader>ls", function()
  vim.cmd("terminal rainfrog")
  vim.cmd("startinsert")
end, { desc = "launch rainfrog in terminal" })

vim.keymap.set("n", "<leader>lh", function()
  vim.cmd("terminal btop")
  vim.cmd("startinsert")
end, { desc = "launch btop in terminal" })

vim.keymap.set("n", "<leader>lm", function()
  vim.cmd("terminal cmus ~/Musique")
  vim.cmd("startinsert")
end, { desc = "launch music player" })
