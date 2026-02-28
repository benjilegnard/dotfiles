return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeCollapse", "NvimTreeFindFile" },
  keys = {
    { "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Tree View" },
    { "<leader>tf", "<cmd>NvimTreeFocus<cr>", desc = "Focus Tree View" },
    { "<leader>tc", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse Tree View Folders" },
    { "<leader>ts", "<cmd>NvimTreeFindFile<cr>", desc = "Find and Move Current Buffer in Tree View" },
  },
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
  end,
}
