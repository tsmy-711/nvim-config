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

-- vim.g.indentLine_char = '¦'
vim.g.indentLine_char = ''

-- vim.g.indent_blankline_use_treesitter = true
-- vim.g.indent_blankline_show_trailing_blankline_indent = false
-- vim.g.indent_blankline_show_first_indent_level = true
-- vim.g.indent_blankline_show_current_context = true

require 'indent_blankline'.setup {

}

