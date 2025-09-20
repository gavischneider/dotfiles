-- This plugin configures and attaches language servers to buffers
-- It works with Mason and mason-lspconfig, but could set up servers manually too
print("lspconfig.lua loaded")

return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" }, -- Ensures it loads for all files
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "saghen/blink.cmp" },
    config = function()
        print("lspconfig config function ran")
        local capabilities = require("blink.cmp").get_lsp_capabilities()
        -- local capabilities = vim.lsp.protocol.make_client_capabilities()

        -- Autocmd: Format on save
        vim.api.nvim_create_autocmd("LspAttach", {
            -- Runs EVERY time an LSP attaches to a buffer
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if client and client.supports_method("textDocument/formatting") then
                    local group = vim.api.nvim_create_augroup("LspFormat" .. args.buf, { clear = true })

                    vim.api.nvim_create_autocmd("BufWritePre", {
                        -- Runs before writing to THIS buffer
                        group = group,
                        buffer = args.buf,
                        callback = function()
                            print("Format on save triggered for buffer " .. args.buf)
                            vim.lsp.buf.format({ bufnr = args.buf })
                        end
                    })
                end
            end
        })

        -- Global user command: Format file
        vim.api.nvim_create_user_command(
            "Format",
            function(opts)
                vim.lsp.buf.format({ async = opts.bang }) -- :Format = sync, :Format! = async
            end,
            {
                bang = true,
                desc = "Format current buffer with LSP"
            }
        )

        -- Custom Lua language server settings
        require("lspconfig").lua_ls.setup({
            capabilities = capabilities,
            root_dir = function(fname)
                return require("lspconfig.util").path.dirname(fname)
            end,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false
                    },
                    format = {
                        enable = true,                -- enable built-in formatting
                        defaultConfig = {
                            indent_style = "space",   -- "tab" or "space"
                            indent_size = "2",        -- number of spaces per indent
                            quote_style = "double",   -- "single" or "double"
                            continuation_indent = "2" -- indent for wrapped lines
                        }
                    }
                }
            }
        })
    end
}
