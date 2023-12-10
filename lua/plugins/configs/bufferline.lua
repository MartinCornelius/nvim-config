require("bufferline").setup {
    options = {
        mode = "buffers",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }
        }
    }
}

vim.keymap.set('n', [[gt]], ':BufferLineCycleNext <CR>')
vim.keymap.set('n', [[gT]], ':BufferLineCyclePrev <CR>')
vim.keymap.set('n', [[<leader>bq]], ':BufferLineCloseOthers <CR>')
vim.keymap.set('n', [[<leader>bp]], ':BufferLinePick <CR>')
vim.keymap.set('n', [[<leader>bc]], ':BufferLinePickClose <CR>')
vim.keymap.set('n', [[te]], ':tabedit % <Return>')
