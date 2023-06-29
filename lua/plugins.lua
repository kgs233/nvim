local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end]]

return require('packer').startup({
	function()
		use 'wbthomason/packer.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'voldikss/vim-floaterm'
		use 'olimorris/onedarkpro.nvim'
		use
		{
			'sidebar-nvim/sidebar.nvim',
			rocks = { 'luatz' }
		}

		-- Bar
		use
		{
			'nvim-tree/nvim-web-devicons',
			'lewis6991/gitsigns.nvim',
			'romgrk/barbar.nvim',
		}

		-- LSP
		use
		{
			-- LSP Config
			'neovim/nvim-lspconfig',
			-- Manger
			{
				'williamboman/mason.nvim',
				run = ":MasonUpdate"
			},
			'williamboman/mason-lspconfig.nvim',
			--extern
			'nvimdev/lspsaga.nvim',
			'jose-elias-alvarez/null-ls.nvim',
			{
				'nvim-treesitter/nvim-treesitter',
				run = ':TSUpdate'
			},
			{
				'rcarriga/nvim-dap-ui',
				requires = "mfussenegger/nvim-dap"
			},
			--cmp
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',

			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',

			'dmitmel/cmp-cmdline-history',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',

			'windwp/nvim-autopairs',
		}
	end,
	config = {
		ensure_dependencies = true,
		plugin_package = 'packer',
		max_jobs = nil,
		auto_clean = true,
		compile_on_sync = true,
		disable_commands = false,
		opt_default = false,
		transitive_opt = true,
		transitive_disable = true,
		auto_reload_compiled = true,
		display = {
			non_interactive = false,
			open_fn = nil,
			open_cmd = '65vnew \\[packer\\]',
			working_sym = '⟳',
			error_sym = '✗',
			done_sym = '✓',
			removed_sym = '-',
			moved_sym = '→',
			header_sym = '━',
			show_all_info = true,
			prompt_border = 'double',
			open_fn = function()
				return require('packer.util').float { border = 'rounded' }
			end,
		},
		luarocks = { python_cmd = 'python' },
		log = { level = 'warn' },
		profile = { enable = false, threshold = 1 }
	}
})
