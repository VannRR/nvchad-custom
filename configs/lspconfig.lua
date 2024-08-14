local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "bashls",
  "cssls",
  "eslint",
  "golangci_lint_ls",
  "gopls",
  "html",
  "lua_ls",
  "stylelint_lsp",
  "tsserver",
  "rust_analyzer",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.bashls.setup {
  settings = {
    bashIde = {
      shellcheckArguments = { "-o", "all" },
    },
  },
}

lspconfig.tsserver.setup {
  settings = {
    implicitProjectConfiguration = {
      checkJs = true,
    },
  },
}

--
-- lspconfig.pyright.setup { blabla}
