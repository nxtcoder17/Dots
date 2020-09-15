" My Default Configurations

" Switching between Buffers without saving each of them
set hidden

" Background
set background=dark

" Customising Fill Characters 
set fillchars=vert:\▞,fold:\,diff:\, " unicode: vert: 23fd , fold: f068 [both available in NerdFonts]

" 5 Lines to keep while scrolling pages
set scrolloff=5

" FileFormat to *nix
set fileformat=unix

" Line Numbes
set number

" Backspacing over Everything
set backspace=indent,eol,start

" Enabling Mouse Support
set mouse=a

" Enabling Cursor Line
set cursorline

" Shows Matching brackets
set showmatch

" Time Interval for which to show Matching Brackets
set matchtime=4

" Always split on the Right and at Bottom
set splitright
set splitbelow

" Marker based Code folding
set foldmethod=marker

" Persistent Undo
set undodir=~/.cache/nvim/undodir
set undofile

" Smart Switching b/w buffers
set switchbuf=usetab,newtab

" Fast Scrolling
set ttyfast
set lazyredraw

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

" Ignore Compiled Files or not so useful directories from Wildmode Completions
set wildignore=*.pyc,*.o,.git,node_modules

" Comlpetion options
set completeopt=menuone,noinsert,noselect


" AutoRead: Important as when formatters are run on the file save, Do reload the contents
set autoread

" Enable Extended Regular Expressions
set magic

" Always Highlight Searches
set hlsearch

" Incremental Search: Search as you type
set incsearch
" Ignorecase / Smartcase while you search
	set ignorecase
	set smartcase



