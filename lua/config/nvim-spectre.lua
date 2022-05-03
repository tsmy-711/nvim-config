local status_ok, spectre = pcall(require, 'spectre')
if not status_ok then
  return
end

local opt = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<leader>S', '<cmd>spectre.open()<CR>', opt)


