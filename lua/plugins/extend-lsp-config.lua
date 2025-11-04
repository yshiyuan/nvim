return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				clangd = {
					cmd = {
						"clangd",
						"--all-scopes-completion",
						"--background-index",
						"--background-index-priority=normal",
						"--clang-tidy",
						"--completion-style=detailed",
						"--function-arg-placeholders",
						"--header-insertion=never",
						"--limit-references=0",
						"--limit-results=0",
						"-j=8",
						"--pch-storage=memory",
						"--fallback-style=llvm",
					},
				},
			},
		},
	},
}
