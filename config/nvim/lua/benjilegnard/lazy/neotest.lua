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
				require("neotest-rust")({
					args = { "--no-capture" },
					dap_adapter = "lldb",
				}),
			},
		})
		vim.keymap.set("n", "<space>rt", require("neotest").run.run, { desc = "Run nearest test" })
	end,
}
