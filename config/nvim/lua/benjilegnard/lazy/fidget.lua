return {
	"j-hui/fidget.nvim",
	tag = "v1.0.0",
	config = function()
		require("fidget").setup({
			-- options
			notification = {
				window = {
					winblend = 0,
				},
			},
		})
	end,
}
