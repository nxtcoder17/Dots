let s:VIM_HOME = "$HOME/.config/nvim"

let s:CONFIG_DIR = expand(s:VIM_HOME) . "/nvim"
exec "set rtp+=". s:CONFIG_DIR
exec "set path+=". s:CONFIG_DIR

command! -nargs=1 LoadFile exec 'source '. expand(s:CONFIG_DIR) . '/'. <args>
command! -nargs=1 LoadLuaFile exec 'luafile '. expand(s:CONFIG_DIR) . '/'. <args>

" Switches⠀⠀

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

" Shows Matching brackets
set showmatch

" Time Interval for which to show Matching Brackets
set matchtime=4

" Always split on the Right and at Bottom
set splitright
set splitbelow

" Persistent Undo
set undodir=~/.cache/nvim/undodir
set undofile

" Smart Switching b/w buffers
set switchbuf=usetab,newtab

" Fast Scrolling
set ttyfast
set lazyredraw

" No Waiting
set updatetime=10

set foldmethod=marker

" Blank Character: U+2800 | Fold Opening: U+f138 | Fold Closing U+f138
set foldmarker=⠀⠀,⠀⠀

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
" set completeopt=menuone,noinsert,noselect
set completeopt=menuone,menu,noselect,noinsert
" set completeopt=menu,menuone,noselect

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

" Sane defaults for timeouts
"
set timeout           " for mappings
set timeoutlen=1000   " default value
set ttimeout          " for key codes
set ttimeoutlen=1    " unnoticeable small value

set shortmess=a

" Switches⠀⠀

" Plugins⠀⠀

" Auto Installing Vim Plug ⠀⠀
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"⠀⠀

call plug#begin()
Plug 'scrooloose/nerdcommenter'
Plug 'kevinhwang91/rnvimr' 			"Ranger inside Vim
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  	" Multicursors
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " Color Highligher : Blazing Fast cause written in Lua
Plug 'christoomey/vim-tmux-navigator'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'szw/vim-maximizer'
Plug 'junegunn/vim-easy-align'

" Syntax Plugins
Plug 'cakebaker/scss-syntax.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chemzqm/vim-jsx-improve'
Plug 'mboughaba/i3config.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Lexima
Plug 'cohama/lexima.vim'

" Ranger in vim
Plug 'kevinhwang91/rnvimr'

" Colorschemes
Plug 'sainnhe/sonokai'
Plug 'phanviet/vim-monokai-pro'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'gruvbox-community/gruvbox'
Plug 'frazrepo/vim-rainbow'

" Optional
Plug 'kyazdani42/nvim-web-devicons'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'

" Tmux Completion
Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes

" Auto Close XHTML tags
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'

"Coc-LSP
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'antoinemadec/coc-fzf'

" Web Dev
Plug 'mattn/emmet-vim'

" Vim GutenTags
Plug 'ludovicchabant/vim-gutentags'

" simple vim tab completion 
" Plug 'lifepillar/vim-mucomplete'

" Nvim LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'anott03/nvim-lspinstall'

" Telescope and it's tools
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

" Vim Rooter⠀⠀
let g:rooter_cd_cmd = 'lcd'
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_patterns = ['.root', '.git']
" Vim Rooter⠀⠀

" Ultisnips⠀⠀
let g:UltiSnipsExpandTrigger="<C-CR>"
" Ultisnips⠀⠀

" use Rnvimr as a File Picker⠀⠀
let g:rnvimr_enable_picker = 1
" rnvimr⠀⠀

" Nerd Commenter ⠀⠀
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1
" let g:NERDCustomDelimiters = { 'typescriptreact': { 'left': '{ /*','right': '*/ }' } }
let g:NERDCustomDelimiters = {
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
	\ 'typescript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
	\ }
" Nerd Commenter ⠀⠀

" Vim Hexokinase⠀⠀
let g:Hexokinase_refreshEvents = ["InsertLeave"] 
let g:Hexokinase_ffEnabeled=["javascript", "javascriptreact","typescriptreact", "jsx", "css", "html"]
let g:Hexokinase_highlighters = [ 'backgroundfull']
" Vim Hexokinase⠀⠀

" Vim Rainbow⠀⠀
let g:rainbow_active = 1
let g:rainbow_guifgs = ['#64cfed', '#96c96f', '#cfa865', '#4bc9b5']
" Vim Rainbow⠀⠀

" Vim Multiscursors⠀⠀
let g:VM_mouse_mappings = 1

nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)  
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)
" Vim Multiscursors⠀⠀

" FZF ⠀⠀
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.80 } }

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

let $FZF_DEFAULT_COMMAND="rg --files --hidden --smart-case --iglob '!.git'"
" let $FZF_DEFAULT_OPTS="--reverse --history=~/.cache/fzf/fzf.history"                      " top to bottom
let $FZF_DEFAULT_OPTS="--reverse --history=/home/nxtcoder17/.cache/fzf/fzf.history"                      " top to bottom

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.config/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

" advanced grep(faster with preview)
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)
" end FZF ⠀⠀

" Supertab⠀⠀
" let g:SuperTabDefaultCompletionType = "<c-n>"
" Supertab END ⠀⠀

" ALE⠀⠀
let g:ale_completion_enabled = 1
let g:ale_fixers = {'javascript': [ 'prettier', 'eslint'], 'typescriptreact': ['prettier', 'eslint']}
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1


" ALE End⠀⠀

" Lexima⠀⠀
let g:lexima_enable_basic_rules = 1
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 1
" Lexima End⠀⠀

" let g:mucomplete#enable_auto_at_startup = 1

" Emmet⠀⠀
let g:user_emmet_mode='a'
let g:user_emmet_leader_key=','
" Emmet ⠀⠀

" Plugins⠀⠀

" Key Mappings⠀⠀
let mapleader=' '

" The s key⠀⠀
nnoremap <silent> s <nop>
nnoremap <silent> ss :w<CR>
nnoremap <silent> si :vsplit<CR>
nnoremap <silent> sm :split<CR>
nnoremap <silent> sh <C-w>h
nnoremap <silent> sl :wincmd l<CR>
nnoremap <silent> sk :wincmd k<CR>
nnoremap <silent> sj :wincmd j<CR>
    
    "Coc Overrides
    nnoremap <silent> s; :CocRestart<CR><CR>
    nnoremap <silent> sr :CocSearch -F <C-r><C-w><CR>

    " FZF
    nnoremap <silent> sf :Files<CR>
    nnoremap <silent> sF :GFiles<CR>
    nnoremap sb :Buffers<CR>
    nnoremap sd :bd<CR>
    nnoremap <C-l> :Lines<CR>
    nnoremap <C-f> :Rg<CR>

    " telescope 
    nnoremap sf :Telescope find_files<CR>

    "Nerd Commenter
    nmap s<space> <Leader>c<space>
    vmap s<space> <Leader>c<space>

"⠀⠀

" Moving by screen lines
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk

nnoremap ; :
nnoremap ci "_ci

nnoremap <silent> <BS> :nohlsearch<CR>
nnoremap <silent> <esc> <esc> :nohlsearch<CR>

" Copy to Clipboard
nnoremap Y "+y 
vnoremap Y "+y 

" Vim Tmux Navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-Tab> :TmuxNavigatePrevious<cr>

nnoremap <C-S-Right> :vertical resize +5<CR>
nnoremap <C-S-Left> :vertical resize -5<CR>
nnoremap <C-S-Up> :resize +5<CR>
nnoremap <C-S-Down> :resize -5<CR>

nnoremap <leader>t :tab split<CR>
nnoremap <leader>n :tabedit<CR>

nnoremap <silent> <A-S-P> :e ~/.config/nvim/init.vim<CR>

" RnvimR
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" Key Mappings⠀⠀

" Look N Feel⠀⠀

" colorscheme gruvbox
" let g:gruvbox_bold=1
" let g:gruvbox_italic=1
" let g:gruvbox_underline=1
" let g:gruvbox_undercurl=1
" let g:gruvbox_contrast_dark='hard'

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:gruvbox_invert_selection='0'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_cursor = 'green'
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_sign_column_background = 'none'
" let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_current_word = 'bold'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_palette = "material"

" Current Line number in different color
hi! CursorLineNr guibg=NONE guifg=#00beff gui=bold
hi! Visual gui=reverse
hi! VertSplit guifg=#354c51
hi! Folded gui=bold guibg=#343638

" Treesitter⠀⠀
" Misc
" highlight TSError guifg=#F44747
" highlight TSPunctDelimiter guifg=#ABB2BF
" highlight TSPunctBracket guifg=#ABB2BF
" highlight TSPunctSpecial guifg=#ABB2BF

" " Constants
" highlight TSConstant guifg=#DCDCAA
" highlight TSConstBuiltin guifg=#569CD6
" " Not sure about this guy
" highlight TSConstMacro guifg=#4EC9B0
" highlight TSString guifg=#CE9178
" highlight TSStringRegex guifg=#CE9178
" highlight TSString guifg=#CE9178
" highlight TSStringEscape guifg=#D7BA7D
" highlight TSCharacter guifg=#CE9178
" highlight TSNumber guifg=#B5CEA8
" highlight TSBoolean guifg=#569CD6
" highlight TSFloat guifg=#B5CEA8
" highlight TSAnnotation guifg=#DCDCAA
" highlight TSAttribute guifg=#FF00FF
" highlight TSNamespace guifg=#FF00FF


" " Functions
" highlight TSFuncBuiltin guifg=#4EC9B0
" highlight TSFuncBuiltin guifg=#DCDCAA
" highlight TSFunction guifg=#DCDCAA
" highlight TSFuncMacro guifg=#DCDCAA
" highlight TSParameter guifg=#9CDCFE
" highlight TSParameterReference guifg=#9CDCFE
" highlight TSMethod guifg=#DCDCAA
" highlight TSField guifg=#9CDCFE
" highlight TSProperty guifg=#9CDCFE
" highlight TSConstructor guifg=#4EC9B0

" " Keywords
" highlight TSConditional guifg=#C586C0
" highlight TSRepeat guifg=#C586C0
" highlight TSLabel guifg=#FF00FF

" " Does not work for yield and return they should be diff then class and def
" highlight TSKeyword guifg=#569CD6
" highlight TSKeywordFunction guifg=#FF00FF
" highlight TSKeywordOperator guifg=#569CD6
" highlight TSOperator guifg=#ABB2BF
" highlight TSException guifg=#C586C0
" highlight TSType guifg=#4EC9B0
" highlight TSTypeBuiltin guifg=#FF00FF
" highlight TSStructure guifg=#FF00FF
" highlight TSInclude guifg=#C586C0

" " Variable
" highlight TSVariable guifg=#9CDCFE
" highlight TSVariableBuiltin guifg=#9CDCFE

" " Text
" highlight TSText guifg=#FF00FF
" highlight TSStrong guifg=#FF00FF
" highlight TSEmphasis guifg=#FF00FF
" highlight TSUnderline guifg=#FF00FF
" highlight TSTitle guifg=#FF00FF
" highlight TSLiteral guifg=#FF00FF
" highlight TSURI guifg=#FF00FF

" " Tags
" highlight TSTag guifg=#569CD6
" highlight TSTagDelimiter guifg=#5C6370
"Treesitter⠀⠀

"⠀⠀'

" LSP Config⠀⠀
LoadLuaFile 'lsp.lua'
" LoadFile 'coc-lsp.vim'
" LSP Config⠀⠀

" Random, Useful, and Fancy Vimscript⠀⠀

" Syntax Highlighting Groups⠀⠀

function! SyntaxAttributes()
    let row = line('.')     " Current Line Number
    let col = col('.')" Current Column Number

    let syntaxId = synID(row, col, 1)   " 1 is for True (required for operation)
    " This syntaxId will be used with synIDattr() and synIDtrans() to get info
    " about syntax highlighting Group

    let name = synIDattr(syntaxId, 'name')  " Returns the name of Hightlighting body
    let groupSyntaxId = synIDtrans(syntaxId)
    let groupName = synIDattr(groupSyntaxId, 'name')  " Returns Group Name

    let fgcolor = synIDattr(groupSyntaxId, 'fg')    " Foreground Color
    let bgcolor = synIDattr(groupSyntaxId, 'bg')    " Background Color

    return 'Group : '. groupName. '  Syntax Body : '. name. '  FgColor : '. fgcolor
endfunction
" Syntax Highlighting Groups⠀⠀

"⠀Close Hidden Buffers⠀⠀ 
command! CloseHiddenBuffers call s:CloseHiddenBuffers()

function! s:CloseHiddenBuffers()
  let open_buffers = []

  for i in range(tabpagenr('$'))
    call extend(open_buffers, tabpagebuflist(i + 1))
  endfor

  for num in range(1, bufnr("$") + 1)
    if buflisted(num) && index(open_buffers, num) == -1
      exec "bdelete ".num
    endif
  endfor
endfunction
"⠀⠀

" Setting up FoldText⠀⠀
set foldtext=MyFoldExpression()
function! MyFoldExpression()
    let foldLength = v:foldend - v:foldstart + 1
    let lengthString = '[ '.foldLength. ' lines ]'

    "let nextLine = getline(v:foldstart+1)
    
    let text = getline(v:foldstart)
    " let text .= len(nextLine) > 0 ? ' ⤷ ' : ''
    "let text .= nextLine
    let prefix ='  '           "Unicode Character : f138
    let suffix = '  '          "Unicode Character : f137
    let subText = text
    let subText = substitute(text,'\"\|=\|#\|//\|/*\|*/\|',"",'g')
    let subText = substitute(subText,'{\|}',"",'g')

    "This is the position i want my lines number to be
    let repeatedSpacePostText = repeat(' ',60-len(subText))
    "return prefix. subText. repeatedSpacePostText. lengthString. suffix
    return subText. repeatedSpacePostText. lengthString. suffix
endfunction
"⠀⠀

" Convert JS to JSON⠀⠀
command! ToJSON call ToJSONFn() 

function! ToJSONFn()
    redir @+
    silent echo system('node --', 'console.log(JSON.stringify(' .expand(@") .', null, 2))')
    redir END
    echo "JSON object copied to clipboard @+"
endfunction
" ⠀⠀

" Creating a Scratch Window⠀⠀
" Source: https://vi.stackexchange.com/questions/11310/what-is-a-scratch-window
command! Scratch vsplit | enew | setlocal buftype=nofile bufhidden=hide nobl noswapfile
"⠀⠀

" Enabling Treesitter
function! TSEnable()
    lua require 'nvim-treesitter.configs'.setup {ensure_installed = 'maintained', highlight = {enable = true}}
endfunction

"⠀⠀

" StatusLine⠀⠀

" Make statusline visible always
set laststatus=2

" Inspired by Emacs diminish
let g:modes = {
      \ 'n': '<N>',
      \ 'v': '<V>',
      \ 'V': '<VL>',
      \ '^V': '<VB>',
      \ 'i': '<I>',
      \ 'c': '<C>',
      \ 'R': '<R>',
      \ 't': '<T>',
      \ }

let g:color_maps = {
      \ 'n': '%#NORMAL_MODE#',
      \ 'v': '%#VISUAL_MODE#',
      \ 'V': '%#VISUAL_MODE#',
      \ '^V': '%#VISUAL_MODE#',
      \ 'i': '%#INSERT_MODE#',
      \ 'c': '%#COMMAND_MODE#',
      \ 'R': '%#REPLACE_MODE#',
      \ }

let g:modeSeprMaps = {
      \ 'n': '%#SEPR_NORMAL_MODE#',
      \ 'v': '%#SEPR_VISUAL_MODE#',
      \ 'V': '%#SEPR_VISUAL_MODE#',
      \ '^V': '%#SEPR_VISUAL_MODE#',
      \ 'i': '%#SEPR_INSERT_MODE#',
      \ 'c': '%#SEPR_COMMAND_MODE#',
      \ 'R': '%#SEPR_REPLACE_MODE#',
      \ }

set statusline=%!BuildStatusLine()

" Highlighting Groups for My StatusLine

" Retaining Highlights while changing color schemes
"Source: https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f


function! StatusLineColors()
    highlight! NORMAL_MODE guifg=#ddff00 guibg=black gui=bold cterm=bold
    highlight! SEPR_NORMAL_MODE guifg=#ddff00 guibg=NONE gui=bold cterm=bold

    highlight! INSERT_MODE guifg=#0affb1 guibg=NONE cterm=bold
    highlight! SEPR_INSERT_MODE guifg=#0affb1 guibg=NONE cterm=bold

    highlight! VISUAL_MODE guifg=#ff6f00 guibg=black cterm=bold
    highlight! SEPR_VISUAL_MODE guifg=#ff6f00 guibg=NONE cterm=bold

    highlight! COMMAND_MODE guifg=#3bff4e guibg=NONE cterm=bold gui=bold
    highlight! SEPR_COMMAND_MODE guifg=#3bff4e guibg=NONE cterm=bold

    highlight! REPLACE_MODE guibg=#ff6f00 guifg=black cterm=bold
    highlight! SEPR_REPLACE_MODE guifg=#ff6f00 guibg=NONE cterm=bold

    highlight! FILE_NAME guifg=#76b9f5 guibg=NONE cterm=NONE
    highlight! SEPR_FILE_NAME guifg=#76b9f5 guibg=NONE cterm=NONE

    highlight! PASTE guifg=#f0ff24 guibg=NONE cterm=NONE
    highlight! FILE_TYPE guifg=#4e8de6 guibg=NONE cterm=bold

    highlight! CURSOR_POSITION guifg=#d9ab38 guibg=NONE cterm=bold
    highlight! CURRENT_LINE guifg=#faf73c guibg=NONE cterm=bold
    highlight! TOTAL_LINE guifg=#3cfa6f guibg=NONE cterm=NONE
    highlight! COLUMN_POSITION guifg=#fa9b3c guibg=NONE cterm=NONE
endfunction

call StatusLineColors()
autocmd! ColorScheme * call StatusLineColors()

function! BuildStatusLine()
    let status = ""

    " Change the mode foreground color to change based on the mode 
    let status .= get(g:color_maps, mode(), '%#GENERAL_MODE#')
    let status .= "\ %{get(g:modes, mode(), '<UN>')}"
    " let status .= " | "
    let status .= get(g:modeSeprMaps, mode(), '')
    let status .= " 🌴"

    " Current FileName / Buffer Name
    let status .= " %#FILE_NAME#"
    let status .= "%<%f"
    let status .= " %#SEPR_FILE_NAME#"
    let status .= "🌴"
    let status .= "%#TOTAL_LINE#"

    " +++++++++ Right Side of the moon ++++++++++
    let r_status = "%="

    " Additions for coc
    " Note: Need to check if coc is installed or not
    if exists(':CocCommand')
          let r_status .= "%{coc#status()} "
          " let r_status .="%{coc#status()}%{get(b:,'coc_current_function','')}"
    endif

    " Paste Mode Status
    let r_status .= "%#PASTE#"
    let r_status .= "%{&paste ? 'paste ': ' '}"

    " FileType
    let r_status .= "%#FILE_TYPE#"
    let r_status .= "%{expand(&filetype)}"

    " Cursor Position
    " let r_status .= "%#CURSOR_POSITION#"
    " " : e0a1,  : e0a3
    " let r_status .= "\  "
    " let r_status .= "%#CURRENT_LINE#"
    " let r_status .= "%l"

    " let r_status .= "%#CURSOR_POSITION#"
    " let r_status .= "/"

    " let r_status .= "%#TOTAL_LINE#"
    " let r_status .= "%L"

    let r_status .= "%#COLUMN_POSITION#"
    let r_status .= "\  %c "


    return status . r_status
endfunction

hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none
" StatusLine⠀⠀

" AutoCommands⠀⠀
augroup nxtvim
    autocmd!

    " Saving the cursor position and open up there next time
    autocmd bufreadpost * call setpos(".", getpos("'\""))

    "Auto source vim files after i have saved them
    autocmd! bufwritepost *.vim source %

    " au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    " au VimLeave,WinLeave,BufWinLeave * setlocal nocursorline

    " Restoring Folds
    au BufWinEnter <buffer> silent! loadview
    au BufWinLeave <buffer> silent! mkview

    au BufEnter *.js,*.jsx set filetype=typescriptreact
    " au BufEnter *.js,*.jsx set filetype=jsx
    " au BufWritePost *.jsx,*.js CocCommand eslint.executeAutofix
    " au BufWritePost *.scss,*.css Format
augroup end
" AutoCommands⠀⠀

" autocmd QuitPre * call range(1, bufnr('$'))->filter('getbufvar(v:val, "&buftype") == "terminal"')->map('term_setkill(v:val, "hup")')

if filereadable(".overrides.vim")
    so .overrides.vim
endif

" colorscheme one-nvim

" let g:sonokai_style = 'maia'
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1

" colorscheme sonokai
colorscheme gruvbox-material
" call TSEnable()

function! MissingImports()
    call coc#config('typescript.validate.enable', v:true)
    silent CocRestart
    " sleep 100
    " CocFzfList actions
endfunction

function! EnableImports()
    call coc#config('typescript.validate.enable', v:false)
    silent CocRestart
endfunction

let g:gutentags_ctags_executable = '/usr/bin/ctags'
let g:gutentags_ctags_exclude = ['node_modules']
