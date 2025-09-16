-- This plugin configures and attaches language servers to buffers
-- It works with Mason and mason-lspconfig, but could set up servers manually too

return {
  "neovim/nvim-lspconfig",
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    local lspconfig = require("lspconfig")

    local capabilities = require('blink.cmp').get_lsp_capabilities()
    -- local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- Configure individual language servers here
    -- These configs will be applied automatically because Mason-LSPConfig handles setup

    -- Custom Lua language server settings
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" } -- Recognize the 'vim' global to avoid warnings
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false
          }
        }
      }
    })
  end
}
