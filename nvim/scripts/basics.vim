" Basic Vim settings

" Makes Vim incompatible with legendary Vi (for +features)
set nocompatible

" Makes Vim syntax aware : color highlighting
syntax enable

" Specific Configurations for Different FileTypes
filetype plugin on 
filetype indent on

" Backspacing over Everything
set backspace=indent,eol,start

" Tab Based Command Mode Completion inside Vim
set wildmenu

" Line Numbers and Relative Numbering too
set number
set relativenumber

" Shows Matching brackets
set showmatch

" Time Interval for which to show Matching Brackets
set matchtime=4

" Switching between Buffers without saving each of them
set hidden

" Ignore Compiled Files or not so useful directories
set wildignore=*.pyc,*.o,.git

" Always split on the Right and at Bottom
set splitright
set splitbelow

" Insert Mode Completions, Always select one from the popup menu
set completeopt=menuone

" Fold Method: Marker Based Folds
set foldmethod=marker

" Smart Switching b/w buffers
set switchbuf=usetab,newtab

" Customising Fill Characters 
set fillchars=vert:\▞,fold:\,diff:\, " unicode: vert: 23fd , fold: f068 [both available in NerdFonts]

" 5 Lines to keep while scrolling pages
set scrolloff=5

" FileFormat to *nix
set fileformat=unix

" Persistent Undo
set undodir=~/.vim/undodir
set undofile

" General Clipboard
set clipboard+=unnamed

" AutoIndentation
set autoindent

" AutoRead: Important as when formatters are run on the file save, Do reload
" the contents
set autoread

" fast scrolling
set ttyfast
set lazyredraw

" Always use Vertical diffs

" Terminal Colors
set t_Co=256


" set true colors
if has("termguicolors")     
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Makes wild menu options, have some transparency
set wildoptions=pum
set pumblend=25

