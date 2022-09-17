inoremap ii <Esc>
nmap <F1> :w<CR>:!clear;python %<CR>
inoremap <F1> <esc>:w <CR>:!clear; python %<CR>
nmap <F2> :w<CR>:!clear;gcc -o exe % && ./exe<CR>
inoremap <F2> <esc>:w <CR>:!clear;gcc -o exe % && ./exe<CR>
nmap <F3> :w<CR>:!clear; cd ..;cargo run<CR>
inoremap <F3> <esc>:w <CR>:!clear; cd ..;cargo run<CR>
set relativenumber
set linebreak
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
syntax on
set background=dark
colorscheme gruvbox
