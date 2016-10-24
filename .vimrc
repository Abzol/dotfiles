" set leader
let mapleader=","
" vim doesn't play well with setlocal foldlevelstart
" so just call execute normal! zM in filetypesettings

" Vimscript file settings -----{{{
augroup filetype_vim
    autocmd!
    autocmd Filetype vim execute "normal! zM<cr>"
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Set tabstobs and compats -----{{{
set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" }}}

" set some common options -----{{{
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
" set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
" }}}

" tame searching -----{{{
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap % <c-i>
vnoremap % <c-i>
" <c-i> and <tab> are equivalents, but I prefer it this way. Shush.
" }}}

" tame longlines -----{{{
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
" }}}

" tame fingers -----{{{
nnoremap <left> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>
nnoremap <right> <nop>
inoremap <left> <nop>
inoremap <down> <nop>
inoremap <up> <nop>
inoremap <right> <nop>
set mouse=""
" }}}

" more vim sanity fixes -----{{{
nnoremap j gj
nnoremap k gk

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
set ssop-=options
set ssop-=folds
if has('gui_running')
    set guioptions-=m "no menu
    set guioptions-=T "no toolbar
    set guioptions-=r "no scrollbar
    set guioptions-=L "no left scrollbar
endif

let g:netrw_liststyle= 3
let g:netrw_browse_split= 2
" }}}

syntax on
try
    try
        if g:colors_name !=? "monolivia"
            colo monolivia
        endif 
    catch
        colo monolivia
    endtry
    execute pathogen#infect()
    filetype plugin indent on
catch
endtry

" folding -----{{{
set foldlevelstart=99
" }}}

" abbrev -----{{{
inoreabbrev @@ Copyright (C) 2016 Wolfie Mossberg - All Rights Reserved<cr>
    \ Contact: hakurou46@gmail.com
inoreabbrev binbash #!/bin/bash
inoreabbrev undef undefined
" }}}

" Time for custom bindings
nnoremap L $
nnoremap <c-z> <C-PageDown>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>G$
nnoremap <leader>ec <C-w><C-v><C-l>
    \ :execute ":e ~/.vim/after/syntax/" . &ft . ".vim"<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>r :w<cr>:!%:p<cr>
nnoremap <leader>k :vnew<cr>:E<cr>:vertical resize 40<cr>
nnoremap <leader>w <C-w>v

inoremap jj <esc>
inoremap kk <esc>o
inoremap <c-u> <esc>vawUea
