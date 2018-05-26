"DISABLE BACKUP
set backupdir-=.
set backupdir^=~/tmp,/tmp
set nobackup
set nowritebackup
set noswapfile

" fish shell fix
set shell=/bin/bash

" language indent settings

" vim-go test
setlocal omnifunc=go#complete#Complete
let g:deoplete#sources#go#gocode_binary = '/home/xa0s/Code/Go/bin/gocode'
" DISABLE HIGHLIGHITNG
autocmd BufWritePre * :%s/\s\+$//e

" SPLIT LAYOURT NAVIGATION
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" VUNDLE PLUGIN MANAGER
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" let Vundle manage Vundle, required
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'tell-k/vim-autopep8'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/space-vim-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'nvie/vim-flake8'
Plug 'chrisbra/Colorizer'
Plug 'posva/vim-vue'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'wakatime/vim-wakatime'
Plug 'junegunn/goyo.vim'
Plug 'JamshedVesuna/vim-markdown-preview'

" COLOR SCHEMES
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'blueshirts/darcula'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'wesgibbs/vim-irblack'

call plug#end()
set termguicolors     " enable true colors support

set t_Co=256
" PLUGIN CONFIGURATION
"1) nerdtree
map <F8> :NERDTreeToggle<CR>
let base16colorspace=256

"2) emmet
" autocomplete on tab
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"3) autopep8
autocmd FileType python noremap <buffer> <F3> :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1

"4) airline
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='papercolor'

"5) jedi
set completeopt-=preview
let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = "2"

let g:pymode_rope = 0
let g:pymode_folding=0

" disable autocomplete
"let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
" DISABLE DEOPLETE
let g:deoplete#disable_auto_complete =1
let g:deoplete#enable_at_startup = 1

" CONFIG SETTINGS
syntax enable

let g:jedi#force_py_version = 3

" restore default caret
"set guicursor=

set encoding=utf-8

" normal copy/paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
imap <C-v> <Esc>pi
imap <C-y> <Esc>ddi
map <C-z> <Esc>
imap <C-z> <Esc>u
nnoremap <C-A> ggVG

noremap <silent> <C-S>          :update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
map <C-t> :tabnew <Enter>
map <C-n> :enew
map <C-o> :e . <Enter>
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>

" run python on F5
nnoremap <silent> <F5> :!python3 %<CR>
nnoremap <silent> <F6> :!go run %<CR>

" paste toggle
set pastetoggle=<F2>

au BufReadPost *.gohtml set syntax=html

"filetype plugin on
"filetype indent on
"set autoindent
" reload syntax
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" disable highlight for search
set nohlsearch

"nnoremap <F2> :set invpaste paste?<CR>
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
syntax on
set showmatch
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab
set number

" set indent for js and vue
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab

" set colorscheme
set background=dark

colorscheme base16-tomorrow-night

" set color column on 80 char
set colorcolumn=80
" transparent bg
"hi Normal guibg=NONE ctermbg=NONE
set t_Co=256
let base16colorspace=256
let g:is_posix=1
set noruler
set nonumber
set shortmess=actI


