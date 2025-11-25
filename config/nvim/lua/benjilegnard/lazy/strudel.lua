return {
	"gruvw/strudel.nvim",
	build = "npm install",
	config = function()
		require("strudel").setup({
			ui = {},
		})
	end,
}
