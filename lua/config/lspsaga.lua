local saga = require 'lspsaga'

saga.init_lsp_saga {
  border_style = 'single',
  code_action_icon = ' ',
  code_action_lightbulb = {
    enable = true,
    sign = true,
    sign_priority = 20,
    virtual_text = true,
  },
}
