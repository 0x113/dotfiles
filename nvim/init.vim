" ---------- PLUGINS -----------
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'tell-k/vim-autopep8'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
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
" ------------------------------


" ---------- COLORS ------------
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'wesgibbs/vim-irblack'
Plug 'nanotech/jellybeans.vim'
Plug 'tyrannicaltoucan/vim-deep-space'


call plug#end()
" ------------------------------


" ------------ PLUGIN CONFIG ------------
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
let g:airline_theme='sol'

"5) jedi
set completeopt-=preview
let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = "2"
let g:jedi#force_py_version = 3
let g:jedi#popup_on_dot = 0

let g:pymode_rope = 0
let g:pymode_folding=0

"6) LaTeX
let g:livepreview_engine = 'evince'

"7) deoplete
let g:deoplete#disable_auto_complete = 0
let g:deoplete#enable_at_startup = 1
setlocal omnifunc=go#complete#Complete
let g:deoplete#sources#go#gocode_binary = '/home/xa0s/Code/Go/bin/gocode'
" ---------------------------------------


" ------------ BINDINGS -----------
" split layout navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tabs binding
map <C-t> :tabnew <Enter>
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>

" run code
nnoremap <silent> <F5> :!python3 %<CR>
nnoremap <silent> <F6> :!go run %<CR>
" ---------------------------------


" ----------- INDENTION -----------
filetype plugin indent on

syntax on
set showmatch
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab

autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab
" ----------------------------------


" -------------- FIXES -------------
" disable backup
set backupdir-=.
set backupdir^=~/tmp,/tmp
set nobackup
set nowritebackup
set noswapfile

" fish shell fix
set shell=/bin/bash
" ---------------------------------


" --------------- UI ---------------
syntax on
set encoding=utf-8
set background=dark
set t_Co=256
set termguicolors
let base16colorspace=256
colorscheme base16-solarflare

" hightlight gohtml as html
au BufReadPost *.gohtml set syntax=html
autocmd BufWritePre * :%s/\s\+$//e

" disable highlight for search
set nohlsearch

" disable numbering
set nonumber
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
" ----------------------------------
