return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				rust = {
					"rustfmt",
					lsp_format = "fallback",
				},
				-- Conform will run the first available formatter
				javascript = {
					"prettierd",
					"prettier",
					stop_after_first = true,
				},
				typescript = {
					"prettierd",
					"prettier",
					stop_after_first = true,
				},
				json = {
					"prettierd",
					"prettier",
					stop_after_first = true,
				},
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})

		vim.keymap.set("n", "<leader>fo", function()
			require("conform").format({
				async = true,
			}, function(err)
				if not err then
					-- leave visual mode after formatting
					local mode = vim.api.nvim_get_mode().mode
					if vim.startswith(string.lower(mode), "v") then
						vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
					end
				end
			end)
		end, {
			desc = "Format code",
		})
	end,
}
