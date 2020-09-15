" Use something not so useful as Esc key
inoremap jj <Esc>

" Makes switching to command mode a breeze
nnoremap ; :

" Move by screen lines, instead of actual lines
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk


" Removing Search Higlights
nnoremap <silent> <BS> :nohlsearch<CR>

" Remove Highlights with 2 Esc Presses
noremap <silent><esc> <esc>:noh<CR><esc>

" your Leader is the space key now
let mapleader = " "

"-------------------------------------------------------------
" Rewriting my entire workflow around `s`: WHY? 
"                                           Cause why not 
" Inspiration from: https://www.youtube.com/watch?v=sSOfr2MtRU8 (@devaslife video )
" -------------------------------------------------------------

" Make s your sweet key
map s <nop>

" Navigating the splits
nnoremap <silent> sh :wincmd h<CR>
nnoremap <silent> sj :wincmd j<CR>
nnoremap <silent> sk :wincmd k<CR>
nnoremap <silent> sl :wincmd l<CR>

" Creating the splits
nnoremap <silent> si :vsplit<CR>
nnoremap <silent> sm :split<CR>

nnoremap <Space><Space> :w<CR>
nnoremap ss :w<CR>

" Plugin Specific KeyMappings

" Rnvimr
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" FZF
nmap <C-f> :Rg<CR>
nmap <C-M-F> :GFiles<CR>
nmap <S-f> :Files<CR>
nmap <C-b> :Buffers<CR>
nmap <C-S-h> :History<CR>
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
nmap <leader>' :Marks<CR>

nmap sf :Files<CR>
nmap sb :Buffers<CR>
nmap <C-l> :Lines<CR>
nmap sm :Marks<CR>
nmap sc :Commands<CR>

" Vim Commentary
nmap s<space> gcc
vmap s<space> gcc
