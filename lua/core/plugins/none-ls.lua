return {
	"nvimtools/none-ls.nvim",
	keys = {
		{ "<leader>rf", vim.lsp.buf.format, noremap = true, silent = true, desc = "format file" },
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- markdown
				null_ls.builtins.formatting.markdownlint,

				-- python
				null_ls.builtins.formatting.isort,
			},
		})
		vim.lsp.buf.format({ timeout_ms = 2000 })
	end,

	lazy = false,
}
