
" Move by screen lines instead of actual lines
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk

" Swifter Navigation among Vim Splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Insane key press mistakes
nnoremap ; :
cnoremap W w

" Leader
let mapleader=','

" Remove Search Highlights with ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Using <space> to scroll down 
nnoremap <Space> <PageDown>

" <C-Space> to scroll up
nnoremap <C-Space> <PageUp>

" Backspace and Delete Button deletes visual selection
vnoremap <BS> x
vnoremap <DEL> x

" Make Buffers work the same way as Tabs
nnoremap <silent> gt :bNext<CR>
nnoremap <silent> gh :bprevious<CR>

" Paste Mode Toggle
nnoremap <silent> <F2> :setlocal paste!<CR>

" Stolen from Steve Losh Configurations
" Change case of word
nnoremap <C-u> gUiw

nnoremap <A-C-s> :e $HOME/.config/nvim/init.vim<CR>

nnoremap Y "+y
nnoremap c "_c

" To Stop accidently going to ex mode,
" where i have to type visual to come out
nnoremap Q <Nop>
