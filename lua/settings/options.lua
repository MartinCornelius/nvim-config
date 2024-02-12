vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 4
vim.opt.cursorline = false
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.ai = true
vim.opt.relativenumber = true
vim.cmd[[set colorcolumn=80]]
--vim.cmd[[:set guicursor=i:block]]

-- same keybinding for enable and disable copilot
vim.api.nvim_set_keymap('n', '<leader>cp', ':Copilot ', { noremap = true, silent = true })

-- make a keybinding leader leader tab for :bp
vim.api.nvim_set_keymap('n', '<leader><tab><tab>', ':bp <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><tab>p', ':bn <CR>', { noremap = true, silent = true })

-- Compile and run file type
vim.keymap.set("n", "<F5>", ":w<CR> :!pypy %<CR>")
