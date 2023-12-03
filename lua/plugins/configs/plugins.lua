return require('packer').startup(function ()
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

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

  use 'townk/vim-autoclose'

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use {'akinsho/bufferline.nvim', tag="*", requires="nvim-tree/nvim-web-devicons"}

  -- Colorscheme
  use 'kristijanhusak/vim-hybrid-material'
  use 'shaunsingh/solarized.nvim'
  use 'ribru17/bamboo.nvim'
  use 'blazkowolf/gruber-darker.nvim'
  use "kihachi2000/yash.nvim"
  use 'kaiuri/nvim-juliana'
  use {
    'lalitmee/cobalt2.nvim',
    requires = 'tjdevries/colorbuddy.nvim'
  }
  use 'projekt0n/github-nvim-theme'

  -- GITHUB COPILOT
  use 'github/copilot.vim'
  -- TOGGLETERM
  use 'akinsho/toggleterm.nvim'
end)
