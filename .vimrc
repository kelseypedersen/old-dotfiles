execute pathogen#infect()
inoremap jk <ESC>
let mapleader = "\<Space>"

" ARROW KEYS ARE UNACCEPTABLE
map <Left> :echo "No! Use H"<cr>
map <Right> :echo "No! Use L"<cr>
map <Up> :echo "No! Use K"<cr>
map <Down> :echo "No! Use J"<cr>

" Basic Settings
" https://github.com/danielmiessler/vim/blob/master/.vim/vimrc

filetype plugin indent on
syntax on
set encoding=utf-8
set shell=/bin/zsh
set guifont=Menlo:h14
set number
set nocompatible                " Necessary: dependency for other thangs
set tabstop=4                   " Tab appears 4 spaces
set shiftwidth=4                " Number of columns text indented with << or >>
set softtabstop=4               " Number of columns vim uses for Tab in insert mode
set expandtab                   " Tab in insert mode produces the correct number of spaces
set scrolloff=3
set hidden                      " Keep undo history for background buffers
set autoindent                  " Keep indentation of previous line
set showmode                    " Show mode in last line
set showcmd                     " Show partial commands in last line
set wildmenu                    " Command line completion
set wildmode=list:longest       " Command line complettion
set ttyfast                     " Faster scrolling
set ruler                       " Display line and column position
set backspace=indent,eol,start
set laststatus=2                " Show mode, file name, file status, ruler
set noundofile
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
set wrap                        " Wrap lines
set linebreak
set nolist
" set formatoptions=qrn1
set spell spelllang=en_us
" set colorcolumn=80
