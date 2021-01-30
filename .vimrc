" Don't try to be vi compatible
set nocompatible
 
" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Toggle relative line number
nmap <C-L><C-L> :set invrelativenumber<CR>

" Encoding
set encoding=utf-8
 
" Whitespace
set wrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set autoindent
set smartindent

" Open file at same line where you closed it
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif
