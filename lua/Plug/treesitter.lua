for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
    config.install_info.url = config.install_info.url:gsub("https://hub.xn--gzu630h.xn--kpry57d/", "something else")
end
require("nvim-treesitter.configs").setup {
    ensure_installed = {"vim", "lua", "cpp", "c", "c_sharp", "cmake", "bash"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        }
    },
    indent = {
        enable = true
    },
	rainbow = {
		enable = true,
    	extended_mode = true,
    	max_file_lines = nil,
  }
}
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99
