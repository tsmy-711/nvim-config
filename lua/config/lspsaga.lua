local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  dianostic_header_icon = '   ',
  code_action_icon = ' ',
  dianostic_header_icon = '   ',
  finder_definition_icon = '  ',
  firename_prompt_prefix = '➤ ',
  nder_definition_icon = '  ',
}

saga.init_lsp_saga()
