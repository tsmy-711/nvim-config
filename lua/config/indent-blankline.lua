vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile'  }
vim.g.indent_blankline_filetype_exclude = {
	'help',
	'startify',
	'dashboard',
	'packer',
	'neogitstatus',
	'NvimTree',
  'markdown'
}

vim.g.indentLine_char = ''

require 'indent_blankline'.setup {}

