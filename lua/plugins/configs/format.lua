require("lsp-format").setup {}
require("lspconfig").pyright.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").intelephense.setup { on_attach = require("lsp-format").on_attach }
