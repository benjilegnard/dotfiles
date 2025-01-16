return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		presets = {
			command_palette = false,
			long_message_to_split = true,
		},
		lsp = {
			hover = {
				enabled = false,
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
