return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive"
            },
            view = {
                side = 'right',
                width = 25
            },
            renderer = {
                group_empty = true
            },
            filters = {
                dotfiles = true
            }
        })

        vim.keymap.set('n', '<leader>tv', vim.cmd.NvimTreeToggle, {
            desc = "Toggle Tree View"
        })
        vim.keymap.set('n', '<leader>tf', vim.cmd.NvimTreeFocus, {
            desc = "Focus Tree View"
        })
        vim.keymap.set('n', '<leader>tc', vim.cmd.NvimTreeCollapse, {
            desc = "Collapse Tree View Folders"
        })
        vim.keymap.set('n', '<leader>ts', vim.cmd.NvimTreeFindFile, {
            desc = "Find and Move Current Buffer in Tree View"
        })
    end
}
