-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.bo.tabstop = 4 -- size of a hard tabstop (ts).
vim.bo.shiftwidth = 4 -- size of an indentation (sw).
vim.bo.expandtab = true -- always uses spaces instead of tab characters (et).
vim.bo.softtabstop = 4 -- number of spaces a <Tab> counts for. When 0, feature is off (sts).

local current_path = vim.fn.getcwd()
vim.g.python3_host_prog = current_path .. "/nvim-py/bin/python"

vim.opt.clipboard:append('unnamedplus')
