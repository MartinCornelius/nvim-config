-- Autocomplete on enter
vim.cmd [[ inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>" ]]

-- control space trigger completion
vim.cmd [[ inoremap <silent><expr> <c-space> coc#refresh() ]]
