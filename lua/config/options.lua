-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.tabstop = 4 -- size of a hard tabstop (ts).
vim.o.shiftwidth = 4 -- size of an indentation (sw).
vim.o.expandtab = true -- always uses spaces instead of tab characters (et).
vim.o.softtabstop = 4 -- number of spaces a <Tab> counts for. When 0, feature is off (sts).

local current_path = vim.fn.getcwd()
vim.g.python3_host_prog = current_path .. "/venv/bin/python"

vim.opt.clipboard:append("unnamedplus")

vim.g.autoformat = false

vim.o.exrc = true        -- 允许加载本地 .nvim.lua / .exrc
vim.o.secure = true      -- 禁止在本地文件中执行不安全命令（建议开启）

-- neovide config
if vim.g.neovide then
	vim.opt.title = true
	vim.opt.titlestring = vim.fs.basename(vim.fn.getcwd())
end
