vim.keymap.set('n', 'fd', ':OmniSharpDocumentation<CR>')
vim.keymap.set('n', 'fD', ':OmniSharpPreviewDefinition<CR>')
vim.keymap.set('n', 'K', ':OmniSharpGotoDefinition<CR>')

-- Code format
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.cs",
  callback = function()
    vim.cmd [[ :OmniSharpCodeFormat ]]
  end
})

-- Auto imports
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.cs",
  callback = function()
    vim.cmd [[ :OmniSharpFixUsings ]]
  end
})

-- Tests
vim.keymap.set('n', 'rt', ':OmniSharpRunTest<CR>')
vim.keymap.set('n', 'rT', ':OmniSharpRunTestsInFile<CR>')
