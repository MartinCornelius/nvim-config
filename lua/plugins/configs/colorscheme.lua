vim.o.termguicolors = true
vim.cmd [[ set background=dark ]]

-- GRUVBOX
vim.cmd [[ let g:gruvbox_contrast_dark='hard' ]]
vim.cmd [[ let g:gruvbox_contrast_light='hard' ]]
vim.cmd "colorscheme gruvbox"
vim.cmd [[ hi LspCxxHlGroupMemberVariable guifg=#83a598 ]]

-- RAINBOX PARENTS
vim.cmd [[ let g:rainbow_active=1 ]]
vim.cmd [[ tnoremap <Esc> <C-\><C-n> ]]

-- TOKYONIGHT
-- vim.cmd [[ colorscheme tokyonight-night ]]
-- vim.cmd [[ let g:lightline = {'colorscheme': 'tokyonight'} ]]

-- GRUVBUDDY
--vim.cmd [[ lua require('colorbuddy').colorscheme('gruvbuddy') ]]

