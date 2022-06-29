-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'html', 'css', 'vim', 'vue', 'lua', 'javascript', 'typescript', 'tsx' },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}


