-- 设定各种文本的字符编码
vim.o.encoding = 'utf-8'
-- 是否在屏幕最后一行显示命令
vim.o.showcmd = true
-- 是否允许缓冲区未保存时就切换
vim.o.hidden = true
-- 是否开启 xterm 兼容的终端 24 位色彩支持
vim.o.termguicolors = true
-- 是否高亮当前文本行
vim.o.cursorline = true
-- 是否开启语法高亮
vim.o.syntax = 'enable'
-- 是否显示绝对行号true
vim.o.number = true
-- 是否显示相对行号
vim.o.relativenumber = false
-- 设定光标上下两侧最少保留的屏幕行数
vim.o.scrolloff = 6
-- 设定光标左右两侧最少保留的屏幕行数
vim.o.sidescrolloff = 10
-- 是否支持鼠标操作
vim.o.mouse = 'a'
-- 是否启用系统剪切板
vim.o.clipboard = 'unnamedplus'
-- 是否开启备份文件
vim.o.backup = false
-- 是否开启交换文件
vim.o.swapfile = false
-- 是否开启自动缩进
vim.o.autoindent = true
-- 设定自动缩进的策略为 plugin
vim.o.filetype = 'plugin'
-- 是否开启高亮搜索
vim.o.hlsearch = true
-- 是否在插入括号时短暂跳转到另一半括号上
vim.o.showmatch = false
-- 是否开启命令行补全
vim.o.wildmenu = true
-- 是否在搜索时忽略大小写
vim.o.ignorecase = true
-- 是否开启在搜索时如果有大写字母，则关闭忽略大小写的选项
vim.o.smartcase = true
-- 是否开启代码折叠
vim.o.foldenable = true
-- 指定代码折叠的最高层级为 100
vim.o.foldlevel = 100
-- 不换行
vim.o.wrap = false
-- 缩进
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.opt.fillchars = {
  vert = " ",
}
vim.o.synmaxcol = 200

-- leader 键
vim.g.mapleader = ' '

-- 中文输入法问题
vim.cmd('autocmd InsertLeave * :silent !/usr/local/bin/macism com.apple.keylayout.ABC')

-- 主题
vim.cmd([[colorscheme OceanicNext]])
-- vim.cmd([[colorscheme doom-one]])

-- 背景透明
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
  " hi VertSplit guifg=#363d45 guibg=#363d45
]])

-- 复制高亮
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
