local status_ok, spectre = pcall(require, 'spectre')
if not status_ok then
  return
end

vim.cmd([[
  nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
  nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
  nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
]])

spectre.setup {}


