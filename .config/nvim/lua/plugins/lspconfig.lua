-- This plugin configures and attaches language servers to buffers.
-- It works with Mason and mason-lspconfig, but could set up servers manually too.

return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- Capabilities for enhanced completion (if using nvim-cmp)
    -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- Configure individual language servers here
    -- These configs will be applied automatically because Mason-LSPConfig handles setup.

    -- Custom Lua language server settings
    print("Running custom lua_ls setup")
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
