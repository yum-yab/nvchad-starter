require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "clangd", "pyright", "julials", "texlab", "bashls"}

vim.lsp.enable(servers)
