-- various plugins
return {

	-- editorconfig support
	"gpanders/editorconfig.nvim",

	-- vscode-like breadcrumbs
	{
		"Bekaboo/dropbar.nvim",
		-- optional, but required for fuzzy finder support
		dependencies = { "nvim-telescope/telescope-fzf-native.nvim" },
	},

	-- barbar is the tabline at the top
	"romgrk/barbar.nvim",
}
