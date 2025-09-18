return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				typescript = { "prettier" },
				markdown = { "prettier" },
				yaml = { "prettier" },
				svelte = { "prettier" },
				html = { "prettier" },
			},
		},
		-- 配置保存时自动格式化
		format_on_save = {
			timeout_ms = 500, -- 超时时间
			lsp_fallback = true, -- 如果 conform 失败，尝试使用 LSP 格式化
		},
	},
}
