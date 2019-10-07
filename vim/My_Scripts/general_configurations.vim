
"==========================[ General Configurations ]============================================
set nocompatible                " Make Vim Incompatible with Legendary Vi [for +features]
filetype plugin on              " Specific Configuration files for different FileTypes
filetype indent on              " Specific Indentation Rules for different FileTypes
set backspace=indent,eol,start  " BackSpacing over everything [spaces and tabs too]
set wildmenu                    " Tab Based Command Mode Completion
set number                      " Show number along with relative numbers
set relativenumber              " Lovely Relative Numbering on the left
set clipboard=unnamedplus       " Clipboard Access from Vim with + register
set showmode                    " Show Current Mode in buffer line like INSERT, VISUAL etc.
set showmatch                   " Shows matching ( ), { }, [ ]
set hidden                      " Makes switching between buffers simple like real
set wildignore=*.pyc,*.o,*.~,*.git  " Ignore compiled or useless files/directories
set matchtime=2                 " 2-tenth of a second to show matching brackets
set ruler                       " Cursor Information at the bottom right
set rulerformat=%30(%=\[Buffer\:%n\]\ %y%m%r%w\ %l,%c%V%)
set fillchars=vert:\▞,fold:\,diff:\, " unicode: vert: 23fd , fold: f068 [both available in NerdFonts]
" set fillchars=vert:\▞,fold:\⁂,diff:\, " unicode: vert: ▞ (U+259E), fold: ⁂  (U+2042) [both available in Unicode Fonts]
set scrolloff=5                 " 5 Lines to keep while scrolling pages
set splitright                  " Always split a window over right side
set splitbelow                  " Always split a window over the bottom
set completeopt=menuone         " Always select one option from pop up menu
set foldtext=MyFoldExpression   "Custom Fold Expression
set switchbuf=usetab,newtab     "Switch to the buffer tab if open or create one
set foldmethod=marker           " Marker Based Folding"
set t_Co=256
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%81v', 100)
set textwidth=0

" Customising Vim Paths
set path+=**,$HOME/.vim         "This thing will make vim look for files inside cwd and in its .vim dir
set updatetime=100              " Make Gitguter do it work really fast"

" Since My terminal has True Color Support now
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
syntax enable                        " Syntax Color enable

let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"Clipboard Support
" nnoremap Y "+y
" nnoremap YY "+yy
"==========================[ End ]===============================================================
