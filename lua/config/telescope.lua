local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local opt = { noremap=true, silent=true }

vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>fm", ":Telescope vim_bookmarks all<CR>", opt)

telescope.load_extension('vim_bookmarks')

telescope.setup{
	defaults = {
		prompt_prefix = " ",
		selection_caret = "► ",
	},
	pickers = {
	},
}
