syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn Ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'jremmen/vim-ripgrep'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'leafgarland/typescript-vim'
    Plug 'lyuts/vim-rtags'
    Plug 'Valloric/YouCompleteMe'
    Plug 'mbbill/undotree'
    Plug 'joshdick/onedark.vim'
call plug#end()

set encoding=utf-8

colorscheme onedark
set background=dark
let &t_ut=''

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "

let g:netrw_winsize=25

nnoremap <leader>4 :wincmd h<CR>
nnoremap <leader>5 :wincmd j<CR>
nnoremap <leader>8 :wincmd k<CR>
nnoremap <leader>6 :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR> 
nnoremap <silent> <leader>- :vertical resize -5<CR> 
nnoremap <silent> <leader>* :resize +5<CR> 
nnoremap <silent> <leader>/ :resize -5<CR> 
nnoremap <silent> <leader>t :below vertical terminal <CR>
nnorema <silent> <leader>g :below terminal <CR>
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR> 
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR> 
