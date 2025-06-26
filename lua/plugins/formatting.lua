return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				astro = { "prettier" },
				go = { "gofumpt", "goimports" },
				rust = { "rustfmt" },
				python = { "ruff" },
			},
			formatters = {
				prettier = {
					condition = function(ctx)
						return vim.fs.find(
							{ ".prettierrc", ".prettierrc.json", ".prettierrc.js", "prettier.config.js" },
							{ path = ctx.filename, upward = true }
						)[1]
					end,
				},
			},
		},
	},
}
