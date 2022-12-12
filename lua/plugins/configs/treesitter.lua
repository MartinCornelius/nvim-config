require'nvim-treesitter.configs'.setup {
  -- list of installed syntax
  ensure_installed = { "c", "lua", "vim", "python", "c_sharp" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

