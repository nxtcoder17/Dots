
" Move by screen lines instead of actual lines
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk

" For making Alt Key work in Linux Terminals

" Swifter Navigation among Vim Splits
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

" Insane key press mistakes
nnoremap ; :
cnoremap W w

" Leader
let mapleader='\\'

nnoremap <space> \
xnoremap <space> \

" Remove Search Highlights with ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Remove Highlights with 2 Esc Presses
noremap <silent><esc> <esc>:noh<CR><esc>

" Using <space> to scroll down 
" nnoremap <Space> <PageDown>

" <C-Space> to scroll up
" nnoremap <C-Space> <PageUp>

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

nmap <C-f> :GFiles<CR>
nmap <C-M-F> :Files<CR>

nmap <C-b> :Buffers<CR>
nmap <C-h> :History<CR>

nmap <S-f> :Files<CR>

nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
nmap <leader>' :Marks<CR>

" To Stop accidently going to ex mode,
" where i have to type visual to come out
nnoremap Q <Nop>

