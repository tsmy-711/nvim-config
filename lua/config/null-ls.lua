
local status_ok, null_ls = pcall(require, "null-ls")

if not status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions;

null_ls.setup({
  debug = true,
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
        augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
      ]])
    end
  end,
	sources = {
		formatting.prettier.with({ extra_args = { "--single-quote" } }),
    code_actions.gitsigns,
    code_actions.eslint,
	},
})
