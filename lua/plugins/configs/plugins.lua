return require('packer').startup(function ()
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'famiu/feline.nvim'
  use 'MunifTanjim/prettier.nvim'
  use "lukas-reineke/indent-blankline.nvim"

  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'tpope/vim-surround'
  use 'tpope/vim-commentary' 
            -- gcc comments a line
            -- select gc comments out mutliple lines

  use 'townk/vim-autoclose'
  use 'luochen1990/rainbow'
    use {'akinsho/bufferline.nvim', tag="*", requires="nvim-tree/nvim-web-devicons"}

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  -- Colorscheme
  use 'projekt0n/github-nvim-theme'
  use 'morhetz/gruvbox'

  -- GITHUB COPILOT
  use 'github/copilot.vim'
  -- TOGGLETERM
  use 'akinsho/toggleterm.nvim'
end)
