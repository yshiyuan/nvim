return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<leader>dq",
				function()
					require("dap").close()
				end,
				desc = "Close Session",
			},
		},
	},
}
