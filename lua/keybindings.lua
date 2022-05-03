local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

keymap('i', 'jk', '<ESC>', opts)

keymap('n', '<C-u>', '6k', opts)
keymap('n', '<C-d>', '6j', opts)

keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)

keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

