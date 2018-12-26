
"======================[ Key Mappings ]======================
let mapleader=','

" Get Rid of search related highlighting with ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" For Seamless Movement with j and k
nnoremap j gj
nnoremap k gk

" Use Space to scroll down
nnoremap <Space>  <PageDown> 

" Use Ctrl+Space to scroll up
nnoremap <C-Space>  <PageUp>

"nnoremap <C-S-P> :echo SyntaxAttributes()<CR>

map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-J> <C-W>j
map <C-K> <C-W>k

" Stupid shift key fixes
map W w                        
cmap WQ wq
cmap wQ wq
cmap Q q
nnoremap ; :

" BackSpace and Delete Button deletes the Visual Selection
vmap <BS> x
vmap <DEL> x

tnoremap <ESC> <C-\><C-N> | " Esc Key -> Normal Mode even in terminal mode

" Make Buffers work the same way as with Tabs
nnoremap gt :bNext<CR>
nnoremap gn :bprevious<CR>
nnoremap <C-q> :bdelete<CR>

nnoremap <silent> <F2> :setlocal paste!<CR>

inoremap {<CR> {<CR>}<Esc>O
" inoremap " ""<Esc>i
"======================[ End ]======================
