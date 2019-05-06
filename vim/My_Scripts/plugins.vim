" [ Plugins for my Vim setup ]

" call plug#begin()
" "Plug 'vim-scripts/AutoComplPop'
" Plug 'Raimondi/delimitMate'
" " Plug 'davidhalter/jedi-vim', {'for': 'python'}
" " Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'Java']}
" Plug 'mattn/emmet-vim', {'for': 'html'}
" " Plug 'vim-syntastic/syntastic'
" Plug 'airblade/vim-gitgutter'
" "Plug 'dhruvasagar/vim-table-mode'
" Plug 'https://github.com/scrooloose/nerdtree'
" Plug 'sukima/xmledit'
" Plug 'ap/vim-css-color'
" 
" call plug#end()

" command! -nargs=1 Packadd
" \   execute 'packadd ' . <q-args>
" \ | execute 'source $MYVIMRC'

"============== [ NerdTree Specifics ]=============
" map <leader>n :NERDTreeToggle<CR>

" Ultisnips Completion
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set runtimepath+="/home/balor/.vim/balor-snippets/"


" Shortcut for opening FFF SPlit
nnoremap <leader>f :F<CR>
" Additions for Using fff FileManager for Project Tree Exploration in Vim
let g:fff#split = "30vnew"
" Open split on the left side (NERDtree style).
let g:fff#split_direction = "nosplitbelow nosplitright"
