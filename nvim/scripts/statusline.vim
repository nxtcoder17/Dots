" Make statusline visible always
set laststatus=2

" Inspired by Emacs diminish
let g:modes = {
      \ 'n': '<N>',
      \ 'v': '<V>',
      \ 'V': '<V-Line>',
      \ 'CTRL-V': 'V-Block',
      \ 'i': '<I>',
      \ 'c': '<C>',
      \ 'R': '<R>',
      \ }

let g:color_maps = {
      \ 'n': '%#NORMAL_MODE#',
      \ 'v': '%#VISUAL_MODE#',
      \ 'V': '%#VISUAL_MODE#',
      \ 'CTRL-V': '%#VISUAL_MODE#',
      \ 'i': '%#INSERT_MODE#',
      \ 'c': '%#COMMAND_MODE#',
      \ 'R': '%#REPLACE_MODE#',
      \ }

let g:modeSeprMaps = {
      \ 'n': '%#SEPR_NORMAL_MODE#',
      \ 'v': '%#SEPR_VISUAL_MODE#',
      \ 'V': '%#SEPR_VISUAL_MODE#',
      \ 'CTRL-V': '%#SEPR_VISUAL_MODE#',
      \ 'i': '%#SEPR_INSERT_MODE#',
      \ 'c': '%#SEPR_COMMAND_MODE#',
      \ 'R': '%#SEPR_REPLACE_MODE#',
      \ }

set statusline=%!BuildStatusLine()

" Highlighting Groups for My StatusLine

" Retaining Highlights while changing color schemes
"Source: https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f

function! MyHighlights()
    highlight! NORMAL_MODE guibg=#ddff00 guifg=black cterm=bold
    highlight! SEPR_NORMAL_MODE guifg=#ddff00 guibg=#76b9f5 cterm=bold

    highlight! INSERT_MODE guibg=#0affb1 guifg=black cterm=bold
    highlight! SEPR_INSERT_MODE guifg=#0affb1 guibg=#76b9f5 cterm=bold

    highlight! VISUAL_MODE guibg=#ff6f00 guifg=black cterm=bold
    highlight! SEPR_VISUAL_MODE guifg=#ff6f00 guibg=#76b9f5 cterm=bold

    highlight! COMMAND_MODE guibg=#3bff4e guifg=black cterm=bold
    highlight! SEPR_COMMAND_MODE guifg=#3bff4e guibg=#76b9f5 cterm=bold

    highlight! REPLACE_MODE guibg=#ff6f00 guifg=black cterm=bold
    highlight! SEPR_REPLACE_MODE guifg=#ff6f00 guibg=#76b9f5 cterm=bold

    " highlight! FILE_NAME guibg=#f24e07 guifg=black cterm=NONE
    highlight! FILE_NAME guibg=#76b9f5 guifg=black cterm=NONE
    highlight! SEPR_FILE_NAME guifg=#76b9f5 guibg=black cterm=NONE

    highlight! PASTE guifg=#f0ff24 guibg=NONE cterm=NONE
    highlight! FILE_TYPE guifg=#4e8de6 guibg=NONE cterm=bold

    highlight! CURSOR_POSITION guifg=#d9ab38 guibg=NONE cterm=bold
    highlight! CURRENT_LINE guifg=#faf73c guibg=NONE cterm=bold
    highlight! TOTAL_LINE guifg=#3cfa6f guibg=NONE cterm=NONE
    highlight! COLUMN_POSITION guifg=#fa9b3c guibg=NONE cterm=NONE

endfunction

call MyHighlights()
autocmd! ColorScheme * call MyHighlights()

function! BuildStatusLine()
    let status = ""

    " Change the mode foreground color to change based on the mode 
    let status .= get(g:color_maps, mode(), '%#GENERAL_MODE#')
    let status .= "\ %{get(g:modes, mode(), '<UN>')}"
    " let status .= " | "
    let status .= get(g:modeSeprMaps, mode(), '')
    " let status .= ""
    let status .= ""

    " Current FileName / Buffer Name
    let status .= " %#FILE_NAME#"
    let status .= "%<%f"
    let status .= " %#SEPR_FILE_NAME#"
    let status .= " "
    let status .= "%#TOTAL_LINE#"

    " +++++++++ Right Side of the moon ++++++++++
    let r_status = "%="

    " Additions for coc
    " Note: Need to check if coc is installed or not
    " let r_status .= "%{coc#status()} "
    let r_status .="%{coc#status()}%{get(b:,'coc_current_function','')}"

    " Paste Mode Status
    let r_status .= "%#PASTE#"
    let r_status .= "%{&paste ? 'paste ': ' '}"

    " FileType
    let r_status .= "%#FILE_TYPE#"
    let r_status .= &filetype

    " Cursor Position
    let r_status .= "%#CURSOR_POSITION#"
    " : e0a1,  : e0a3
    let r_status .= "\  "
    let r_status .= "%#CURRENT_LINE#"
    let r_status .= "%l"

    let r_status .= "%#CURSOR_POSITION#"
    let r_status .= "/"

    let r_status .= "%#TOTAL_LINE#"
    let r_status .= "%L"

    let r_status .= "%#COLUMN_POSITION#"
    let r_status .= "\  %c "


    return status . r_status
endfunction

hi StatusLineNC guifg=#737871 gui=bold
