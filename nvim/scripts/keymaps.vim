" Using jj for escaping
inoremap jj <Esc>

" Move by screen lines instead of actual lines
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk

" Insane key press mistakes
nnoremap ; :
cnoremap W w


" Tab to go to corresponding ends
" nnoremap <Tab> %

" Leader
let mapleader=','

" Remove Search Highlights with ,/
nnoremap <silent> <leader><space> :nohlsearch<CR><BS>

" Remove Highlights with 2 Esc Presses
noremap <silent><esc> <esc>:noh<CR><esc>

" Backspace and Delete Button deletes visual selection
vnoremap <BS> x
vnoremap <DEL> x

" Make Buffers work the same way as Tabs
nnoremap <silent> gt :bNext<CR>
nnoremap <silent> gh :bprevious<CR>

" Paste Mode Toggle
nnoremap <silent> <F2> :setlocal paste!<CR>

nnoremap Y "+y
nnoremap c "_c


" Stolen from Steve Losh Configurations
" Change case of word
nnoremap <C-u> gUiw

nnoremap <A-C-s> :e $HOME/.config/nvim/init.vim<CR>
nnoremap <A-C-j> :e $HOME/Journal<CR>

" To Stop accidently going to ex mode,
" where i have to type visual to come out
nnoremap Q <Nop>

"-------------------------------------------------------------
" Rewriting my entire workflow around `s`: WHY? 
"                                           cause why not 
"-------------------------------------------------------------

" Removing the default behaviour of s
map s <nop>

" Save a file in Normal Mode
nnoremap ss :w<CR>

" Escape in Insert Mode
" Reason: can't use somewhere like in `address`
" inoremap ss <Esc>

" Wiping a Buffer
nnoremap si :vsplit<CR>
nnoremap sm :split<CR>


" Wiping a Buffer
nnoremap <silent> sx :bwipeout<CR> 

" Swifter Navigation among Vim Splits
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l


" Vim Commentary
nmap s<space> gcc
vmap s<space> gcc


