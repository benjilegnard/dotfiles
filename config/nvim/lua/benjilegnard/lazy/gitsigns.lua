return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      on_attach = function()
	  vim.cmd("hi! link GitSignsAdd DiffAdd")
	  vim.cmd("hi! link GitSignsChange DiffChange")
	  vim.cmd("hi! link GitSignsDelete DiffDelete")
      end
    })
  end
}

