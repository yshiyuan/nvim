-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.neovide then
	vim.keymap.set({ "n", "v", "s", "x", "o", "i", "l", "c", "t" }, "<C-S-v>", function()
		vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
	end, { noremap = true, silent = true })
end
