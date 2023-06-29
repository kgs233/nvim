inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>
inoremap jk <Esc>

nmap fo <CMD>lua vim.lsp.buf.format()<CR>

" Lspsaga
nmap <leader>f <CMD>Lspsaga lsp_finder<CR>
nmap <leader>gd <CMD> Lspsaga goto_definition<CR>
nmap <leader>pd <CMD> Lspsaga peek_definition<CR>

nmap <leader>o <CMD>Lspsaga outline<CR>
nmap <leader>bo <CMD>Lspsaga outline<CR><CMD>Lspsaga outline<CR>

nmap <leader>rn <CMD>Lspsaga rename<CR>

nmap <leader>ca <CMD>Lspsaga code_action<CR>
