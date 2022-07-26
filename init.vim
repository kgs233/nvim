lua require('plugins')
lua require('lsp/installer')
lua require('lsp/settings')
lua require('lsp/cmp')
lua require('lsp/saga')
lua require('lsp/colors')
lua require('Plug/treesitter')
lua require('Plug/nvim-tree')
lua require('Plug/telescope')
lua require('interface/alpha')

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

"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx5-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx5-remote -c")
   endif
endfunction

let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "1.5"
colorscheme tokyodark

nnoremap <F1> :RnvimrToggle<CR>
let g:rnvimr_enable_ex = 1

inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

inoremap jk <Esc>

noremap <F2> :NvimTreeToggle<CR>
noremap <Esc> :NvimTreeClose<CR>

let g:indent_guides_guide_size = 1 
let g:indent_guides_start_level = 1 

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme="bubblegum"
noremap <C-TAB> :bn<CR>
noremap <C-s-TAB> :bp<CR>
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

let g:tagbar_width=30
nnoremap <silent> <F4> :TagbarToggle<CR>
