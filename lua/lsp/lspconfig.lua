require("mason-lspconfig").setup {
	ensure_installed = { "omnisharp", "lua_ls", "clangd", "opencl_ls", "pylsp" },
	automatic_installation = true
}

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = {
					["/home/hiphish/.luarocks/share/lua/5.3"] = true,
					["/usr/share/lua/5.3"] = true,
				},
				maxPreload = 1000,
				preloadFileSize = 1000,
			},
		},
		telemetry = {
			enable = false,
		},
	},
}
lspconfig.omnisharp.setup {}
lspconfig.clangd.setup {}
lspconfig.opencl_ls.setup {}
lspconfig.pylsp.setup {}
lspconfig.vimls.setup {}
