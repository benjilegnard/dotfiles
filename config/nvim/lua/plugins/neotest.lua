return {
  "nvim-neotest/neotest",
  dependencies = {
    -- neotest deps
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- tests adapters
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
    "lawrence-laz/neotest-zig",
    "rouge8/neotest-rust",
  },
  keys = {
    { "<space>rt", function() require("neotest").run.run() end,                     desc = "Run nearest test" },
    { "<space>ra", function() require("neotest").run.run(vim.fn.expand("%")) end,   desc = "Run test in current file" },
    { "<space>rd", function() require("neotest").run.run({ strategy = "dap" }) end, desc = "Run and debug nearest test" },
    { "<space>rs", function() require("neotest").run.stop() end,                    desc = "Stop nearest test run" },
    { "<space>ro", function() require("neotest").output.open() end,                 desc = "Open test output" },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-jest")({
          jestCommand = "npx jest",
        }),
        require("neotest-zig")({
          dap = {
            adapter = "lldb",
          },
        }),
        require("neotest-vitest")({}),
        require("neotest-rust")({
          args = { "--no-capture" },
          dap_adapter = "lldb",
        }),
      },
    })
  end,
}
