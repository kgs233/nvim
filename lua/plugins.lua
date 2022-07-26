vim.cmd [[packadd packer.nvim
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end]]

return require('packer').startup({
    function()
        use 'wbthomason/packer.nvim'
        use {
			'nvim-lualine/lualine.nvim',
			'kdheepak/tabline.nvim',
            'kyazdani42/nvim-web-devicons',
        }
        use 'liuchengxu/vim-which-key'
        use 'voldikss/vim-floaterm'
        use 'lambdalisue/suda.vim'
        use 'RRethy/vim-illuminate'
        use 'justinmk/vim-sneak'
        use 'lukas-reineke/indent-blankline.nvim'
        use 'honza/vim-snippets'
        use 'preservim/nerdcommenter'
        use 'tpope/vim-fugitive'
        use 'airblade/vim-gitgutter'
        use 'skywind3000/asynctasks.vim'
        use 'sbdchd/neoformat'
        use 'luochen1990/rainbow'
        use 'puremourning/vimspector'
        use 'sindrets/diffview.nvim'
        use 'kevinhwang91/rnvimr'
        use 'kyazdani42/nvim-tree.lua'
        use 'goolord/alpha-nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'
        use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
		use "gpanders/editorconfig.nvim"
        use {
            --'tiagovla/tokyodark.nvim',
			'olimorris/onedarkpro.nvim'
        }
        --lsp
        use {
            -- lsp config
            "neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
            -- cmp
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/nvim-cmp',
            -- snippet engine
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
            'rafamadriz/friendly-snippets',
            -- beautify
            'onsails/lspkind-nvim',
            'glepnir/lspsaga.nvim',
            'folke/lsp-colors.nvim',
			--nvim-treesitter
			{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
			'p00f/nvim-ts-rainbow'
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
        git = {
            cmd = 'git',
            subcommands = {
                update = 'pull --ff-only --progress --rebase=false',
                install = 'clone --depth %i --no-single-branch --progress',
                fetch = 'fetch --depth 999999 --progress',
                checkout = 'checkout %s --',
                update_branch = 'merge --ff-only @{u}',
                current_branch = 'branch --show-current',
                diff = 'log --color=never --pretty=format:FMT --no-show-signature HEAD@{1}...HEAD',
                diff_fmt = '%%h %%s (%%cr)',
                get_rev = 'rev-parse --short HEAD',
                get_msg = 'log --color=never --pretty=format:FMT --no-show-signature HEAD -n 1',
                submodules = 'submodule update --init --recursive --progress'
            },
            depth = 1,
            clone_timeout = 60,
            default_url_format = 'git@github.com:%s'
        },
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
            keybindings = {
                quit = 'q',
                toggle_info = '<CR>',
                diff = 'd',
                prompt_revert = 'r'
            }
        },
        luarocks = {python_cmd = 'python'},
        log = {level = 'warn'},
        profile = {enable = false, threshold = 1}
    }
})
