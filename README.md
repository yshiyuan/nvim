# Nvim

A custom starter for [LazyVim](https://github.com/LazyVim/LazyVim).

## 常用操作

| 操作                                       | 快捷键                         | 备注                                 |
| ------------------------------------------ | ------------------------------ | ------------------------------------ |
| 在 buffer 间切换                           | shfit + h/l                    |                                      |
| 在窗口间切换                               | ctrl + h/j/k/l                 |                                      |
| 在 telescope 预览窗口翻页                  | ctrl + d/u                     | 在 telescope 窗口使用 ? 键可打开帮助 |
| 手动触发 cmp 补全                          | ctrl + space                   |                                      |
| 退出 cmp 补全                              | ctrl + e                       |                                      |
| 在 terminal 中进入 normal 模式             | ctrl + [ + [ 或 \<C-\\>\<C-n\> |                                      |
| 在浮动窗口中显示引用单词的额外信息         | K 或 shfit + k                 |                                      |
| 进入浮动窗口                               | 按两下 K 或 shfit + k          | 退出浮动窗口按 q                     |
| fzf-lua/snacks-picker 在预览浮动窗口中翻页 | ctrl + f/b                     |                                      |
| fzf-lua/snacks-picker 在候选项间上下移动   | ctrl + j/k                     |                                      |
| snacks-picker focus the preview window     | \<a-w\>                        |
| mini.files 创建和删除文件                  | o 创建，dd 删除                | 创建和删除后，需要按 = 同步一下操作  |
| 将选择窗口固定到 Quickfix                  | ctrl + q                       |                                      |
| 将选择窗口固定到 Trouble                   | alt + t                        |                                      |

## nvim 下载

最新版本 nvim 可能因 glibc 版本无法在旧的 linux 发行版运行，可以在此仓库下载 <https://github.com/neovim/neovim-releases>

## 安装步骤

1. clone 本仓库
1. 设置 clipboard, 参考<https://askubuntu.com/a/1486875>
   - x11 安装 xclip
   - Wayland 安装 wl-clipboard
1. 安装 luarocks, 源码安装或者包管理器安装
   - 推荐源码安装，参考 <https://github.com/luarocks/luarocks/blob/main/docs/installation_instructions_for_unix.md#quick-start>
   - lua 安装 5.1 版本
   - 可将 lua 和 luarocks 都安装在 $HOME/.local 路径下。
     - lua 需要执行 `make install INSTALL_TOP=$HOME/.local` 。
     - luarocks 需要configure指定 --with-lua-include=$HOME/.local/include 和 --prefix=$HOME/.local
1. 安装 ripgrep, fd, lazygit, fzf
1. 使用 nvm 安装 node, 参考 <https://github.com/nvm-sh/nvm?tab=readme-ov-file#install--update-script>
1. npm 安装 tree-sitter-cli `npm install -g tree-sitter-cli`
1. python 环境设置
   1. 使用 pyenv 管理 python 版本（可选）
   1. 创建 venv 环境, 在 $HOME/.config/nvim/ 下执行 `python -m venv venv`
   1. 进入 venv 环境, 执行 `python3 -m pip install --upgrade pynvim`

## 项目级配置

目前支持在项目根目录下添加 .nvim.lua 以支持项目级别的配置

需注意 .nvim.lua 中配置的优先级较低，init.lua < .nvim.lua < ftplugin < after/ftplugin

因此修改空格缩进需要按照以下方式修改

```lua
local project_augroup = vim.api.nvim_create_augroup("ProjectSettings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
        group = project_augroup,
        pattern = "lua",
        callback = function()
                vim.bo.tabstop = 4
                vim.bo.shiftwidth = 4
                vim.bo.softtabstop = 4
                vim.bo.expandtab = true
        end,
        desc = "Project Lua indent settings",
})
```
