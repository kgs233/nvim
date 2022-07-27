local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup {
    settings ={
        Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = {'vim'},
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
              enable = false,
            },
        },
    },
}

require'lspconfig'.vimls.setup{}
