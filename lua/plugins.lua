-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

packer.startup(function()
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'j-hui/fidget.nvim'
  use 'tami5/lspsaga.nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/bufferline.nvim'
  use 'moll/vim-bbye'
  use 'akinsho/toggleterm.nvim'
  use 'folke/which-key.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'NTBBloodbath/doom-one.nvim'
  use 'mhartington/oceanic-next'
  use 'Mofiqul/dracula.nvim'
  use 'goolord/alpha-nvim'

  use 'nvim-telescope/telescope.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'
  use 'jlanzarotta/bufexplorer'
  use 'windwp/nvim-spectre'
  use 'MattesGroeger/vim-bookmarks'
  use 'tom-anders/telescope-vim-bookmarks.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'kevinhwang91/nvim-hlslens'

  use 'iamcco/markdown-preview.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'folke/todo-comments.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'RRethy/vim-illuminate'
  use 'lewis6991/spellsitter.nvim'
  use 'junegunn/vim-easy-align'
end)

