local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ 
  cmd = "lazygit", 
  hidden = true, 
  direction = "float",
  start_in_insert = true,
  shade_terminals = true,
})
local terminal = Terminal:new({ hidden = true, })
local lz_open = false
local tt_open = false

function _lazygit_toggle()
  lazygit:open()
  lz_open = 1
end
function _lazygit_close()
  lazygit:close()
  lzopen = 0
end

function _terminal_toggle()
  terminal:open()
  tt_open = 1
end
function _terminal_close()
  terminal:close()
  tt_open = 0
end


vim.api.nvim_set_keymap("n", "<leader>gi", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true, })

vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>lua _terminal_toggle()<CR>", { noremap = true, silent = true, })

function close()
  if lz_open then
    _lazygit_close()
  end
  if tt_open then
    _terminal_close()
  end
end

-- exit terminal
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<cmd>lua close()<CR>", {noremap = true, silent = true})
