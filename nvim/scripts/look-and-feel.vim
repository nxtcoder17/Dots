let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_background = 'hard'

colorscheme gruvbox-material
" colorscheme gruvbox
set background=dark

" Removing background from Theme
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE


" hi Comment guifg=#0f9b78

" ##### Styling Vim Vertical Split Indicator

" Source: https://stackoverflow.com/questions/9001337/vim-split-bar-styling
hi VertSplit guifg=#841fff guibg=NONE ctermbg=NONE ctermfg=NONE cterm=bold
