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
						"--header-insertion=iwyu",
						"--limit-references=0",
						"--limit-results=0",
						"--pch-storage=memory",
            "-enable-config",
						"-j=8",
					},
				},
			},
		},
	},
}
