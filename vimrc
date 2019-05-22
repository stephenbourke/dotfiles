set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
call vundle#end()

filetype plugin indent on
syntax enable

set background=dark
colorscheme gruvbox

set t_BE=
set mouse=a
set mousemodel=popup
set clipboard=unnamed
set backspace=2
set splitbelow
set splitright
set nobackup
set noswapfile
set number 
set autochdir
set autoindent
set listchars=tab:>-,eol:¬
set ignorecase
set hlsearch
set incsearch
set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab
set foldmethod=indent
set foldlevel=99
set fileformat=unix
set completeopt=longest,menuone
set laststatus=2

set statusline=%F%m%r%h%w\
set statusline+=%{fugitive#statusline()}\    
set statusline+=\ [line\ %l\/%L]          

let g:pymode_rope=0
let NERDTreeIgnore = ['\.pyc$','\.pyo$']

autocmd BufWritePost *.py call Flake8()

map <F2> :NERDTreeToggle<CR>
nnoremap <silent> _ :nohl<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <silent> <C-n> :bn<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Space> za
