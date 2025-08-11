# Nvim

A custom starter for [LazyVim](https://github.com/LazyVim/LazyVim).

## 常用操作

| 操作                               | 快捷键         | 备注                                 |
| ---------------------------------- | -------------- | ------------------------------------ |
| 在 buffer 间切换                   | shfit + h/l    |                                      |
| 在窗口间切换                       | ctrl + h/j/k/l |                                      |
| 在 telescope 预览窗口翻页          | ctrl + d/u     | 在 telescope 窗口使用 ? 键可打开帮助 |
| 手动触发 cmp 补全                  | ctrl + space   |                                      |
| 退出 cmp 补全                      | ctrl + e       |                                      |
| 在 terminal 中进入 normal 模式     | ctrl + [ + [   |                                      |
| 在浮动窗口中显示引用单词的额外信息 | shfit + k      |                                      |
| fzf-lua 在预览浮动窗口中翻页       | ctrl + f/b     |                                      |
| fzf-lua 在候选项间上下移动         | ctrl + j/k     |                                      |

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
   1. 创建 venv 环境, 在 $HOME/.config/nvim/ 下执行 `python -m venv nvim-py`
   1. 进入 venv 环境, 执行 `python3 -m pip install --upgrade pynvim`
