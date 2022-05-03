local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>q', ':Bdelete<CR>', opts)

