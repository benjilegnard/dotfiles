vim.g.mapleader = " "

vim.keymap.set("n", "<leader>lt", function()
    vim.cmd("terminal")
    vim.cmd("startinsert")
end, { desc = "launch terminal" })

vim.keymap.set("n", "<leader>lg", function()
    vim.cmd("terminal lazygit")
    vim.cmd("startinsert")
end, { desc = "launch lazygit in terminal" })

vim.keymap.set("n", "<leader>ld", function()
    vim.cmd("terminal lazydocker")
    vim.cmd("startinsert")
end, { desc = "launch lazydocker in terminal" })


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
