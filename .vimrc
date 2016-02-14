" set leader
let mapleader=","

" Vimscript file settings -----{{{
augroup filetype_vim
    autocmd!
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
" }}}

" tame longlines -----{{{
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
" execute "set colorcolumn=" .join(range(81,355), ',')
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
" }}}

" more vim sanity fixes -----{{{
nnoremap j gj
nnoremap k gk

nnoremap <leader>w <C-w>v<C-w>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}

syntax on
colo monokai
execute pathogen#infect()
filetype plugin indent on

" pythonic -----{{{
augroup filetype_python
    autocmd!
    autocmd FileType python     :inoreabbrev iff if:<esc>i
    autocmd FileType python     :inoreabbrev fiin for i in:<esc>i
augroup END
" }}}

" bash -----{{{
augroup filetype_bash
    autocmd!
    autocmd FileType sh     :inoreabbrev iff if []; then<cr>fi<esc>k$2Ba
    autocmd FileType sh     :inoreabbrev eliff elif []; then<esc>2Ba
augroup END
" }}}

" cpp -----{{{ 
augroup filetype_cpp
    autocmd!
    autocmd FileType cpp    :nnoremap ** 0i/* <esc>$a */<esc>
    autocmd FileType cpp    :inoremap ** <esc>0i/* <esc>$a */
    autocmd FileType cpp    :inoremap <leader>ia <esc>:call IndentCArgs()
augroup END
" }}}

" js -----{{{
augroup filetype_js
    autocmd!
    autocmd Filetype javascript :inoreabbrev iff if () {<esc>2hi
    autocmd FileType javascript :inoremap dgbid document.getElementById("");<esc>2hi
    autocmd FileType javascript :inoreabbrev clog console.log();<esc>hi
augroup END
" }}}

" Time for custom bindings
inoreabbrev @@ Copyright (C) 2016 Wolfie Mossberg - All Rights Reserved<cr>Contact: hakurou46@gmail.com
inoremap jj <esc>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>G$
nnoremap <leader>sv :so $MYVIMRC<cr>
inoremap <c-u> <esc>vawUea
nnoremap <leader>r :w<cr>:!%:p<cr>
inoremap kk <esc>o
