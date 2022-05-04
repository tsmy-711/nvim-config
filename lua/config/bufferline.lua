local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', opts)

vim.api.nvim_set_keymap('n', '<leader>bh', ':BufferLineCloseLeft<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>bl', ':BufferLineCloseRight<CR>', opts)

bufferline.setup{
	options = { 
    mode = 'buffers',
    numbers = 'none',
    offsets = {{ filetype = 'NvimTree', text = 'File Explorer', highlight = 'Directory' }},
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		show_close_icon = false,
    sort_by = 'insert_after_current'
	},
}
