  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['ccls'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['vimls'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['cmake'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['prosemd_lsp'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['sumneko_lua'].setup {
    settings = {
      Lua = {
        completion = {
          callSnippet = "Replace"
        }
      }
    }
  }
