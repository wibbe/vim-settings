
set nocompatible

" We use pathogen to easily modify the runtime path to include all plugins
" under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Change mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <silent> <leader>/ :nohlsearch<CR>   " quickly clear search results

" Faster navigation between open tabs
nmap <silent> <leader>n :tabn<CR>
nmap <silent> <leader>p :tabp<CR>

imap <C-S> <ESC>:w<CR>a
nmap <C-S> :w<CR>
nmap <C-T> <leader>t

filetype plugin indent on

" This makes it possible to have unwritten changes in a file and open a new
" file with :e, without being forced to write or undo your changes first.
set hidden

set nowrap              " don't wrap lines
set tabstop=2           " a tab is 2 spaces
set softtabstop=2
set expandtab           " expand tabs to spaces
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent          " use autoindenting
set copyindent          " copy the previous indetation on autoindenting
set showmatch           " show matching parenthesis
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase, case-sesitive otherwise
set hlsearch            " highlight search terms
set incsearch           " show matches as you type
set shiftwidth=2        " number of spaces to use for autoindenting
set visualbell          " don't beep
set noerrorbells        " don't beep
set magic               " allow magic pattern matching in searches 
set title               " change then terminal's title
set laststatus=2        " always show status line 
set showmode            " show which mode we're in
set ruler               " show ruler with line and column number
set guioptions-=T       " no toolbar
set ttyfast 
set wildignore=*.swp,*.bak,*.o,*.pyc,*.class
set mouse=a             " we are not forbidden to use the mouse
set shell=bash          " use bash shell
set shortmess=at        " show short messages, less hit-enter situations
set background=dark
set enc=utf-8           " utf-8 encoding as default
set nobackup            " No backups, we use modern ways of tracking our changes
set noswapfile
set history=1000        " remember more commands and search history
set undolevels=1000     " use many undo levels
set cursorline          " highlight the current line
set wildmode=longest,list " completion mode for matches


" Change look and feel of the editor
set guifont=Inconsolata:h13

if &t_Co >= 256 || has("gui_running")
  "colorscheme mustang
  colorscheme desert
endif

if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

" Project settings
let g:proj_window_width = 28
let g:proj_window_increment = 50

" Configure vimclojure
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1

