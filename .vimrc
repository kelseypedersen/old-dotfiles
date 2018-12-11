" ===== PLUGINS =====
call plug#begin()
Plug 'airblade/vim-gitgutter'               " Show changes by line
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Download and build FZF - the command line utility
Plug 'junegunn/fzf.vim'                     " Utilize the FZF utility
Plug 'mhartington/oceanic-next'             " Oceanic-next color theme
Plug 'mhinz/vim-grepper'                    " Searching for words
Plug 'milkypostman/vim-togglelist'          " Show and hide the search results
Plug 'mxw/vim-jsx'                          " JSX syntax in React/Javascript
Plug 'pangloss/vim-javascript'              " Javascript syntax
Plug 'styled-components/vim-styled-components' " Styled components syntax
Plug 'tpope/vim-endwise'                    " Ruby - Auto add 'end' to do/if in Ruby
Plug 'tpope/vim-fugitive'                   " Use git commands in Vim
Plug 'tpope/vim-rails'                      " Ruby - Projectionist settings
Plug 'tpope/vim-unimpaired'                 " Bracket mappings for a lot of random things
call plug#end()

" ===== GENERAL =====
set encoding=utf-8
set fileformat=unix
set guifont=Menlo:h14           " Set font and font size
set nocompatible                " Necessary: dependency for other thangs
set spell spelllang=en_us       " Highlight misspelled words in American English

" ===== COLORS =====
syntax on
set termguicolors               " COLORS!
set t_Co=256 " Setup term color support
colorscheme OceanicNext

" ===== SPLIT SCREENS =====
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" ===== INDENTATION =====
filetype plugin indent on
set autoindent                  " Keep indentation of previous line
set expandtab                   " Tab in insert mode produces the correct number of spaces
set shiftwidth=2                " Number of columns text indented with << or >>
set smartindent                 " Indent matches style of the file
set softtabstop=2               " Use 2 columns for tab in insert mode
set tabstop=2                   " Tab appears 2 spaces

" ===== POSITION =====
" set number                      " Display line numbers on left-hand side
set ruler                       " Display line and column position

" ===== REMINDERS ======
map <Left> :echo "No! Use H"<cr>
map <Right> :echo "No! Use L"<cr>
map <Up> :echo "No! Use K"<cr>
map <Down> :echo "No! Use J"<cr>

" ===== SEARCH =====
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let mapleader = "\<Space>"
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <C-b> :<C-u>Buffers<CR>
nnoremap <C-g> :<C-u>GFiles?<CR>

set incsearch                 " Use / to search in file
set showmatch                 " Highlight matches
set hlsearch
set rtp+=/usr/local/opt/fzf

" Global find and replace
nnoremap <leader>fr :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>frc :%s/\<<C-r><C-w>\>//gc<Left><Left>
nnoremap <leader><space> :noh<cr>

" ===== WORD SEARCH =====
let g:grepper       = {}
let g:grepper.tools = ['grep', 'git', 'rg']
let g:grepper.simple_prompt = 1
"runtime plugin/grepper.vim
let g:grepper.rg = { 'grepprg': 'rg -H --no-heading --vimgrep --sort-files' }
"let g:grepper.quickfix      = 0

" Search for the current word
nnoremap <Leader>* :Grepper -tool rg -cword -noprompt<CR>
" backwards compatible from my old setup
nnoremap \| :Grepper -tool rg<CR>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" ===== WHITESPACE =====
" remove whitespace on save
 fun! StripTrailingWhitespace()
      " Only strip if the b:noStripeWhitespace variable isn't set
  if exists('b:noStripWhitespace')
    return
  endif
  %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()
autocmd FileType markdown let b:noStripWhitespace=1

set backspace=indent,eol,start
set hidden                      " Keep undo history for background buffers
set laststatus=2                " Show mode, file name, file status, ruler
set noundofile
set scrolloff=3
set showcmd                     " Show partial commands in last line
set showmode                    " Show mode in last line
set ttyfast                     " Faster scrolling
set wildmenu                    " Command line completion
set wildmode=list:longest       " Command line complettion
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
noremap <tab> %
vnoremap <tab> %
set wrap                        " Wrap lines
set linebreak
set nolist
" set formatoptions=qrn1
" set colorcolumn=80
