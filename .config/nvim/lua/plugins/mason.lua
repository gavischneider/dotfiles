-- This is the base plugin that installs LSP servers, DAPs, linters, formatters, etc
-- We also add mason-lspconfig as a dependency to automatically configure LSP servers with nvim-lspconfig

return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = { "lua_ls", "html", "jsonls", "eslint", "pyright" },
      automatic_enable = false
    })
  end
}
