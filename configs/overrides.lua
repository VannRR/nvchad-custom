local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"go",
		"javascript",
		"typescript",
		"tsx",
		"c",
		"markdown",
		"markdown_inline",
		"bash",
		"rust",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		"bash-language-server",
		"css-lsp",
		"eslint-lsp",
		"golangci-lint-language-server",
		"html-lsp",
		"lua-language-server",
		"stylelint-lsp",
		"typescript-language-server",
        "typos-lsp",
	},
	PATH = "append",
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
