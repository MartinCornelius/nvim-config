vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = false
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.shiftround = true

-- same keybinding for enable and disable copilot
vim.api.nvim_set_keymap('n', '<leader>cp', ':Copilot ', { noremap = true, silent = true })

-- make a keybinding leader leader tab for :bp
vim.api.nvim_set_keymap('n', '<leader><tab><tab>', ':bp <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><tab>p', ':bn <CR>', { noremap = true, silent = true })

