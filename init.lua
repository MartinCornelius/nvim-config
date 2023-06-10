-- General settings
require "settings/keymaps"
require "settings/options"

-- Plugins
require "plugins"

-- Fix multiple cursors error
local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end
