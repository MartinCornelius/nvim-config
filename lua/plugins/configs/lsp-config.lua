require("mason").setup()
require("mason-lspconfig").setup()
local nvim_lsp = require("lspconfig")

local on_attach = function(_, bufnr)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

nvim_lsp.pyright.setup { on_attach = on_attach, capabilities = capabilities }
nvim_lsp.clangd.setup { on_attach = on_attach, capabilities = capabilities }
nvim_lsp.intelephense.setup { on_attach = on_attach, capabilities = capabilities }
nvim_lsp.lua_ls.setup { on_attach = on_attach, capabilities = capabilities }
nvim_lsp.csharp_ls.setup { on_attach = on_attach, capabilities = capabilities }
