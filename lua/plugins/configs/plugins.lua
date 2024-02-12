return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'nvim-tree/nvim-tree.lua'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'lukas-reineke/lsp-format.nvim'

    -- TELESCOPE
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    -- gcc comments a line
    -- select gc comments out mutliple lines

    use 'townk/vim-autoclose'
    use 'luochen1990/rainbow'

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    -- Colorscheme
    use 'morhetz/gruvbox'

    -- GITHUB COPILOT
    use 'github/copilot.vim'
    -- TOGGLETERM
    use 'akinsho/toggleterm.nvim'
end)
