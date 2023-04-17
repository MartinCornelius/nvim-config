local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print "---------------------------------------------------------"
  print "Press Enter to install packer and plugins."
  print "After install -- close and reopen Neovim to load configs!"
  print "---------------------------------------------------------"
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'jiangmiao/auto-pairs'

  -- Colorscheme
  use 'tjdevries/colorbuddy.vim'
  use 'tjdevries/gruvbuddy.nvim'
  use 'vimcolorschemes/vimcolorschemes'
  use 'AlessandroYorba/Sierra'
  use 'danilo-augusto/vim-afterglow'
  use 'jdsimcoe/abstract.vim'
  use 'zacanger/angr.vim'
  use 'chase/focuspoint-vim'
  use 'jacoborus/tender.vim'

  -- Haxe
  use 'jdonaldson/vaxe'

  -- Git
  use 'tpope/vim-fugitive'

  -- Csharp
  use 'OmniSharp/omnisharp-vim'
  use { 'neoclide/coc.nvim', branch='release' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if Packer_Bootstrap then
    require('packer').sync()
  end
end)
