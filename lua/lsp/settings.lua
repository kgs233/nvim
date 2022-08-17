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

require'lspconfig'.omnisharp.setup{
    cmd = { "dotnet", "/home/kgs/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp.dll" },
    enable_editorconfig_support = true,
    enable_ms_build_load_projects_on_demand = false,
    enable_roslyn_analyzers = false,
    organize_imports_on_format = false,
    enable_import_completion = false,
    sdk_include_prereleases = true,
    analyze_open_documents_only = false,
}
