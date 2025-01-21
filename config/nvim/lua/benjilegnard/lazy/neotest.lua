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
		
		local runNearest = function()
			require("neotest").run.run()
		end
		vim.keymap.set("n", "<space>rt", runNearest, { desc = "Run nearest test" })

		local runCurrent = function()
			require("neotest").run.run(vim.fn.expand("%"))
		end
		vim.keymap.set("n", "<space>ra", runCurrent, { desc = "Run test in current file" })

		local runDebug = function()
			require("neotest").run.run({ strategy = "dap" })
		end
		vim.keymap.set(
			"n",
			"<space>rd",
			runDebug,
			{ desc = "Run and debug nearest test" }
		)

		local runStopTest = function () 
			require("neotest").run.stop()
		end
		vim.keymap.set("n", "<space>rs", runStopTest, { desc = "Stop nearest test run" })

		local runOutput = function () 
			require("neotest").output.open()
		end
		vim.keymap.set("n", "<space>ro", runOutput, { desc = "Open test output" })
	end,
}
