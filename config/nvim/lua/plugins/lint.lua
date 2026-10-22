return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufWritePost", "InsertLeave" },
	config = function()
		local lint = require("lint")

		-- js/ts linters are resolved per project, see js_linters()
		local js_fts = {
			javascript = true,
			typescript = true,
			javascriptreact = true,
			typescriptreact = true,
		}

		local oxlint_files = { ".oxlintrc.json", "oxlint.config.ts" }
		local eslint_files = {
			"eslint.config.js",
			"eslint.config.mjs",
			"eslint.config.cjs",
			"eslint.config.ts",
			"eslint.config.mts",
			"eslint.config.cts",
			".eslintrc",
			".eslintrc.js",
			".eslintrc.cjs",
			".eslintrc.json",
			".eslintrc.yml",
			".eslintrc.yaml",
		}

		local function js_linters(bufnr)
			local linters = {}
			if vim.fs.root(bufnr, oxlint_files) then
				table.insert(linters, "oxlint")
			end
			if vim.fs.root(bufnr, eslint_files) then
				table.insert(linters, "eslint")
			end
			return linters
		end

		lint.linters_by_ft = {
			sh = { "shellcheck" },
			bash = { "shellcheck" },
			zsh = { "shellcheck" },
			markdown = { "markdownlint" },
			json = { "jsonlint" },
			yaml = { "yamllint" },
			ansible = { "ansible_lint" },
		}

		vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("nvim-lint", {}),
			callback = function(args)
				if js_fts[vim.bo[args.buf].filetype] then
					lint.try_lint(js_linters(args.buf))
				else
					lint.try_lint()
				end
			end,
		})
	end,
}
