return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		"BurntSushi/ripgrep",
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown({
					-- even more opts
				}),
			},
		},
		pickers = {},
	},
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, {
			desc = "Find files",
		})
		vim.keymap.set("n", "<leader>ft", builtin.git_files, {
			desc = "Find git files",
		})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
			desc = "Live grep",
		})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {
			desc = "Buffers",
		})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
			desc = "Help tags",
		})
		require("telescope").load_extension("ui-select")
	end,
}
