filetype on
filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible

" Enable syntax highlighting
syntax enable

set autoindent
set autoread                      " reload files when changed on disk, i.e. via `git checkout`
set backspace=indent,eol,start    " Fix broken backspace in some setups
set backupcopy=yes                " see :help crontab
set clipboard=unnamed             " yank and paste with the system clipboard
set cmdheight=2
set colorcolumn=80
set confirm
set directory-=.                  " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                     " expand tabs to spaces
set hidden
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
set ignorecase                    " case-insensitive search
set incsearch                     " search as you type
set laststatus=2                  " always show statusline
set list                          " show trailing whitespace
set listchars=tab:?\ ,trail:?
set mouse=a
set nomodeline
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set number                        " show line numbers
set pastetoggle=<F11>
set ruler                         " show where you are
set scrolloff=3                   " show context above/below cursorline
set shiftwidth=4                  " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                     " case-sensitive search if any caps
set softtabstop=4                 " insert mode tab and backspace use 2 spaces
set tabstop=8                     " actual tabs occupy 8 characters
set t_vb=
set visualbell
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                      " show a navigable menu for tab completion
set wildmode=longest,list,full

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-Q> :nohl<CR><C-L>

let mapleader = '\'
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>a :Align
nmap <leader>p :CtrlPBuffer<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

let NERDTreeIgnore = ['\.pyc$','\.obj$']

let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd VimResized * :wincmd =

if (&t_Co == 256 || has('gui_running'))
    set background=dark
    colorscheme solarized
endif

