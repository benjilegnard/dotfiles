return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        float = {
          open_win_config = {
            relative = "win",
            width = 50,
          },
          enable = true,
        },
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })

    vim.keymap.set("n", "<leader>tt", vim.cmd.NvimTreeToggle, {
      desc = "Toggle Tree View",
    })
    vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFocus, {
      desc = "Focus Tree View",
    })
    vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeCollapse, {
      desc = "Collapse Tree View Folders",
    })
    vim.keymap.set("n", "<leader>ts", vim.cmd.NvimTreeFindFile, {
      desc = "Find and Move Current Buffer in Tree View",
    })
  end,
}
