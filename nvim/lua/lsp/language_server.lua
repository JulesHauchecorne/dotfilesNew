require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
        border = "rounded"
    },
    transparency = 0,
    shadow_blend = 36,
})
-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true;
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require'lspconfig'.clangd.setup {
    capabilities = capabilities,
}

require'lspconfig'.hls.setup {
    capabilities = capabilities
}
require'lspconfig'.tsserver.setup {
    capabilities = capabilities
}
require'lspconfig'.jdtls.setup {
    capabilities = capabilities
}
require'lspconfig'.html.setup {
    capabilities = capabilities
}
require'lspconfig'.vuels.setup {
    capabilities = capabilities
}
require'lspconfig'.jedi_language_server.setup {
    capabilities = capabilities
}
require'lspconfig'.pyright.setup{
    capabilities = capabilities;
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = false,
                diagnosticMode = 'workspace'
            }
        }

    }
}
require'lspconfig'.cssls.setup{ capabilities = capabilities }
require'lspconfig'.cssmodules_ls.setup{capabilities = capabilities}
require'lspconfig'.tailwindcss.setup{capabilities = capabilities }
-- -----------------------------
-- Lua language server config --
--------------------------------
local sumneko_root_path = vim.fn.stdpath('cache')..'/nvim-lsp/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/".."Linux".."/lua-language-server"
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
    -- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {

        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path,
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
    capabilities = capabilities
}
