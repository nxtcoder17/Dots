" Neovim Plugins File
"
" let g:polyglot_disabled=['jsx', 'javasscript']

" Plugins {{{
" Auto Installing Vim Plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Gruvbox Material
Plug 'sainnhe/gruvbox-material'

" Vim Rooter : keeps project root as the nvim root
Plug 'airblade/vim-rooter'

" TreeSitter : For Advanced Syntax Highlighting 
"               as of 16th September, causing Segmentation Fault in Terminals
Plug 'nvim-treesitter/nvim-treesitter'

" Language Syntax Files
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'

" Ranger inside Vim
Plug 'kevinhwang91/rnvimr'

" Vim Commentary
Plug 'tpope/vim-commentary'

" Vim Surround
Plug 'tpope/vim-surround'

" Undo Tree
Plug 'mbbill/undotree'

" Coc LSP
Plug 'neoclide/jsonc.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf'
Plug 'frazrepo/vim-rainbow'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  	" Multicursors

" Tmux Complete
Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes

" Color Highligher : Blazing Fast cause written in Lua
Plug 'norcalli/nvim-colorizer.lua'

" Neovim LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'

" More targets for Motiond
Plug 'wellle/targets.vim'

" Vim Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" Auto Close XHTML tags
Plug 'alvan/vim-closetag'

Plug 'vim-test/vim-test'

Plug 'tpope/vim-dispatch'

call plug#end()
" }}}

" Plugin Specific Configurations{{{

" Rnvimr {{{
" use Rnvimr as a File Picker
let g:rnvimr_enable_picker = 1
"}}}

" Tree Sitter nvim{{{

" -> Consistent Syntax Highlighting
function! TSHighlight()
lua <<EOF

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
}

EOF
endfunction

" Cause causing Segmentation fault in terminal
autocmd! BufEnter call TSHighlight()
" call TSHighlight()

" }}}

" Vim Rooter {{{
let g:rooter_cd_cmd = 'lcd'
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1
let g:rooter_patterns = ['.root', '.git']
"}}}

" Gruvbox Material{{{
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_background = 'hard'
" }}}

" [Vim Rainbow]  {{{ 
let g:rainbow_active = 1

let g:rainbow_guifgs = ['#64cfed', '#96c96f', '#cfa865', '#4bc9b5']

" ({[({{[]}})]}{})

" [Vim Rainbow]}}}

" FZF {{{

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.80 } }

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

let $FZF_DEFAULT_COMMAND="rg --files --hidden --smart-case --iglob '!.git'"
let $FZF_DEFAULT_OPTS="--reverse "                      " top to bottom

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

" FZF : END }}}

" Nvim Colorizer {{{

lua require'colorizer'.setup()

" }}}

" Vim Tmux Navigator
let g:tmux_navigator_disable_when_zoomed = 1

" Close Tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = { 
	\ 'typescript.tsx': 'jsxRegion,tsxRegion',
	\ 'javascript.jsx': 'jsxRegion',
	\ }
let g:closetag_shortcut = '>'

" Vim Test
let test#strategy = "dispatch"


" Plugin Specific Configurations : END}}}
