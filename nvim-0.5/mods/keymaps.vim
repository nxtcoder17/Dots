" Use something not so useful as Esc key
inoremap jj <Esc>

" Make esc key work in terminal nmode too, this one does not play well with
" FZF, ranger and all
" tmap <Esc> <C-\><C-n>
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
" augroup TermFzfEsc
"   if has("nvim")
"     au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
"     au FileType fzf tunmap <buffer> <Esc>
"   endif
" augroup end

" Makes switching to command mode a breeze
nnoremap ; :
vnoremap ; :
nnoremap ci "_ci

" Move by screen lines, instead of actual lines
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk

" Removing Search Higlights: setfrom hl-next.vim
" nnoremap <silent> <BS> :nohlsearch<CR>

" Remove Highlights with 2 Esc Presses + space
noremap <silent><esc> <esc> <space>:noh<CR><esc>

" your Leader is the space key now
let mapleader = " "

" Rename current word under cursor
nnoremap <leader>r b:%s/\<<C-r><C-w>\>//c<left><left>
vnoremap <leader>r :s/<C-r>"//c<left><left>

nnoremap <leader>t :tab split<CR>
nmap <leader>n :tabedit<CR>


function! HLCurrentLine(blinktime)
  hi! CursorLine gui=reverse
  redraw
  exec 'sleep' . float2nr(a:blinktime * 1000). 'm'
  hi! CursorLine gui=NONE
  redraw
endfunction

nnoremap <M-;> :call HLCurrentLine(0.2)<CR>

"-------------------------------------------------------------
" Rewriting my entire workflow around `s`: WHY? cause why not 
" Inspiration from: https://www.youtube.com/watch?v=sSOfr2MtRU8 (@devaslife video )
" -------------------------------------------------------------

nnoremap <silent> <A-S-P> :e ~/.config/nvim/init.vim<CR>

nnoremap Y "+y 
vnoremap Y "+y 

" Make s your sweet key
map s <nop>

" Remove the shitty Ex Mode
nnoremap Q <nop>

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

nnoremap <silent> s; :CocRestart<CR>\|<CR>
nnoremap <silent> sd :bw<CR>
nnoremap <silent> sr :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Need to Look at this: https://github.com/mg979/vim-visual-multi/wiki/Mappings


" Plugin Specific KeyMappings

" Rnvimr
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" FZF
nmap <C-f> :Rg<CR>
nmap <C-M-F> :GFiles<CR>
nmap <S-f> :Files<CR>
nmap <C-b> :Buffers<CR>
nmap <C-h> :History<CR>
" nmap <leader>l :BLines<CR>
" nmap <leader>' :Marks<CR>

nmap sf :Files<CR>

" Select Block of Code
nmap sb V%

nmap <C-l> :Lines<CR>
nmap <C-b> :Buffers<CR>

" nmap <C-m> :Marks<CR>
nmap sc :Commands<CR>

" Vim Commentary
nmap s<space> <leader>c<space>
vmap s<space> <leader>c<space>

augroup Jsx
  autocmd! FileType typescripreact set <F2> ys${
  autocmd! FileType typescripreact set <F3> ds{
augroup end

" Some Abbreviations
autocmd! BufWrite *.js ab logd logger.debug([<C-r>"%p])

" Vim Tmux Navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-Tab> :TmuxNavigatePrevious<cr>


" Coc Jest
" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')

" nmap <M-space> :FloatermToggle<CR>
" tmap <M-space> <Esc>:FloatermToggle<CR>
"
nmap <C-S-Right> :vertical resize +5<CR>
nmap <C-S-Left> :vertical resize -5<CR>
nmap <C-S-Up> :resize +5<CR>
nmap <C-S-Down> :resize -5<CR>

nmap <leader>x <Plug>(coc-rename)

