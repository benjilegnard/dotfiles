return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				disabled_filetypes = {
					"NvimTree",
					"dashboard",
					-- trouble
					"trouble",
					"qf",
					-- undotree
					"undotree",
					"diff",
					-- diffview
					"DiffviewFiles",
					-- avante
					"Avante",
					"AvanteSelectedFiles",
					"AvanteInput",
				},
			},
		})
	end,
}
