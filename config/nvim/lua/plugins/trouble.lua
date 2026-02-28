return {
  "folke/trouble.nvim",
  config = function()
    require("trouble").setup({
      auto_preview = false,
      auto_fold = true,
    })

    vim.keymap.set("n", "[t", function()
      require("trouble").prev({
        skip_groups = true,
        jump = true,
      })
    end, {
      desc = "Previous Trouble",
    })

    vim.keymap.set("n", "]t", function()
      require("trouble").next({
        skip_groups = true,
        jump = true,
      })
    end, {
      desc = "Next Trouble",
    })
  end,
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle focus=true<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=true<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=true win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
