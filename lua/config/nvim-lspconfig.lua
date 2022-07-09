local signs = {
  { name = 'DiagnosticSignError', text = '' },
  { name = 'DiagnosticSignWarn', text = '' },
  { name = 'DiagnosticSignHint', text = '' },
  { name = 'DiagnosticSignInfo', text = '' },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
end

local config = {
  virtual_text = {
    -- prefix = '●',
  },
  signs = {
    active = signs,
  },
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = 'minimal',
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
}

vim.diagnostic.config(config)

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }

  vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
  vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
  vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]

  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-f>', '<cmd>Lspsaga smart_scroll_with_saga 1<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-b>', '<cmd>Lspsaga smart_scroll_with_saga -1<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>Telescope lsp_definitions theme=dropdown<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>Telescope lsp_references theme=dropdown<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ge', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'go', '<cmd>Telescope diagnostics theme=dropdown<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>[', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>]', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>Lspsaga rename<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ft', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  if client.name == 'tsserver' then
    require 'illuminate'.on_attach(client)
    require('nvim-lsp-ts-utils').setup({
      filter_out_diagnostics_by_code = { 80001 },
    })
    require('nvim-lsp-ts-utils').setup_client(client)
  end

  if client.name == 'tsserver' or client.name == 'html' or client.name == 'cssls' then
    client.server_capabilities.documentFormattingProvider = false
  end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'html', 'cssls', 'tsserver', 'volar', 'sumneko_lua',  'pyright' }
local lspconfig = require('lspconfig')

for _, lsp in pairs(servers) do
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }

  if lsp == 'sumneko_lua' then
    opts = vim.tbl_deep_extend(
      'force',
      {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim', 'use' },
            },
            workspace = {
              library = {
                [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                [vim.fn.stdpath('config') .. '/lua'] = true,
              },
            },
          },
        },
      },
      opts
    )
  end

  lspconfig[lsp].setup(opts)
end
