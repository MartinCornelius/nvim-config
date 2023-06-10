return require('packer').startup(function ()
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'luochen1990/rainbow'
  use 'zefei/vim-colortuner'

  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-treesitter/nvim-treesitter'

  use 'tpope/vim-surround'
  use 'tpope/vim-commentary' 
            -- gcc comments a line
            -- select gc comments out mutliple lines

  use 'jiangmiao/auto-pairs'
  use 'simrat39/symbols-outline.nvim'
  use 'RRethy/vim-illuminate'
  use 'alvan/vim-closetag'

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Colorscheme
  use 'tjdevries/colorbuddy.vim'
  use 'tjdevries/gruvbuddy.nvim'
  use 'morhetz/gruvbox'
end)
