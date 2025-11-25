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

local strudel = require("strudel")

vim.keymap.set("n", "<leader>sl", strudel.launch, { desc = "Launch Strudel" })
vim.keymap.set("n", "<leader>sq", strudel.quit, { desc = "Quit Strudel" })
vim.keymap.set("n", "<leader>st", strudel.toggle, { desc = "Strudel Toggle Play/Stop" })
vim.keymap.set("n", "<leader>su", strudel.update, { desc = "Strudel Update" })
vim.keymap.set("n", "<leader>ss", strudel.stop, { desc = "Strudel Stop Playback" })
vim.keymap.set("n", "<leader>sb", strudel.set_buffer, { desc = "Strudel set current buffer" })
vim.keymap.set("n", "<leader>sx", strudel.execute, { desc = "Strudel set current buffer and update" })
