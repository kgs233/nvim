lua require('plugins')
lua require('lsp/installer')
lua require('lsp/settings')
lua require('lsp/cmp')
lua require('lsp/saga')
lua require('lsp/colors')
lua require('Plug/treesitter')
lua require('Plug/nvim-tree')
lua require('Plug/telescope')
lua require('Plug/lualine')
lua require('interface/alpha')

source ~/.config/nvim/keymap.vim
source ~/.config/nvim/variable.vim

set encoding=utf-8

set number
set relativenumber
set hidden
set updatetime=100

set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

colorscheme tokyodark


