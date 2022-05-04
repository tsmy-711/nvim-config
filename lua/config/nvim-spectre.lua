local status_ok, spectre = pcall(require, 'spectre')
if not status_ok then
  return
end

vim.cmd([[
  nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
]])



