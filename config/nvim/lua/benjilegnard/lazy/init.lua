return {
	-- copilot, disabled because i hate it.
	-- "github/copilot.vim",

	-- editorconfig support
	"gpanders/editorconfig.nvim",

	-- vscode-like breadcrumbs
	{
		"Bekaboo/dropbar.nvim",
		-- optional, but required for fuzzy finder support
		dependencies = { "nvim-telescope/telescope-fzf-native.nvim" },
	},

	-- barbar is the tabline at the top
	-- disabled because i'm trying to not use tabs anymore
	-- "romgrk/barbar.nvim"

	-- display keys for streaming
	{
		"nvchad/showkeys",
		cmd = "ShowkeysToggle",
		opts = {
			timeout = 1,
			maxkeys = 5,
		},
	},
}
