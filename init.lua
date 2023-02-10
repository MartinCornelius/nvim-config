-- General settings
require "settings/keymaps"
require "settings/options"

-- Plugins
require "plugins"

-- Neovide settings
if vim.g.neovide then
  vim.g.neovide_refresh_rate = 60 
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0

  -- Animation particles
  vim.g.neovide_cursor_vfx_mode = "sonicboom"

  -- Font
  --vim.opt.guifont = { "Anonymous Pro", "h12" }
  vim.opt.guifont = { "Terminus (TTF) for Windows", "h14" }
end

