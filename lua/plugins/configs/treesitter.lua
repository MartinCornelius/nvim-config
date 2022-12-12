require 'nvim-treesitter.install'.compilers = { 'zig' }

require'nvim-treesitter.configs'.setup {
  -- list of installed syntax
  ensure_installed = { "c", "vim", "python", "c_sharp" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

