require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- Make sure install, according you need to write
  ensure_installed = {
    "sumneko_lua",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

--Start server
require("lspconfig").sumneko_lua.setup {
  capabilities = capabilities,
}

require("lspconfig").pyright.setup{
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    }
}

require("lspconfig").clangd.setup{
    capabilities = capabilities,
}
