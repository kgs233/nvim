lua require('plugins')
lua require('lsp/mason')
lua require('lsp/cmp')
lua require('lsp/saga')
lua require('lsp/colors')
lua require('Plug/treesitter')
lua require('Plug/nvim-tree')
lua require('Plug/telescope')
lua require('Plug/diffview')
lua require('Plug/line')
lua require('interface/alpha')

source ~/.config/nvim/keymap.vim
source ~/.config/nvim/variable.vim

set encoding=utf-8

set number
set relativenumber

set tabstop=4 
set softtabstop=4
set shiftwidth=4

filetype plugin on

colorscheme onedarkpro
