let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Colorscheme : Gruvbox is the best thing
set background=dark
colorscheme gruvbox-material
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
