return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		presets = {
			command_palette = false,
			long_message_to_split = true,
		},
	},
	dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
}
