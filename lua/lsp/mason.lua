require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
	github = {
        download_url_template = "https://hub.fastgit.org//%s/releases/download/%s/%s",
    }
})

require("mason-lspconfig").setup()

local lspconfig = require "lspconfig"

lspconfig.omnisharp.setup {}
