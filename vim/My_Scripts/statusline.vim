" [Icons]
"  : e0b0
"  : e0b2

" Make StatusLine always visible
set statusline=2

let g:current_vim_mode={
      \ 'n': 'NORMAL',
      \ 'v': 'VISUAL',
      \ 'V': 'V-LINE',
      \ 'i': 'INSERT',
      \ 'c': 'COMMAND',
      \ 'R': 'REPLACE'
      \ }

let g:file_types={
      \ 'vim'           : ' vim ' ,
      \ 'tmux'          : ' tmux ',
      \ 'java'          : ' java ',
      \ 'javascript'    : ' javascript ',
      \ 'cpp'           : ' cpp ',
      \ 'c'             : ' c ',
      \ 'python'        : ' python ',
      \ 'html'          : ' html ',
      \ 'css'           : ' css ',
      \ 'sh'            : ' sh ',
      \ 'xdefaults'     : ' xdefaults ',
      \ 'vim-plug'      : 'Plug ',
      \ 'text'          : ' text ',
      \ 'conf'          : ' conf ',
      \ 'help'          : ' help ',
      \ 'markdown'      : 'MarkDown ',
      \ 'desktop'       : 'Desktop ',
      \ 'neomuttrc'     : 'NeoMutt ',
      \ 'zathurarc'     : ' Zathura ',
      \ 'csv'           : 'csv ',
      \ 'i3'            : 'i3wm ',
      \ 'xinitrc'       : 'Xinit',
      \ 'xml'           : 'XML',
      \ 'fxml'          : 'FXML',
      \ 'sql'           : 'SQL',
      \ 'php'           : 'PHP',
      \ 'vimplug'       : 'Plugins',
      \ 'snippets'      : 'UltiSnips'
      \ }

" highlight statusline        ctermfg=07      ctermbg=235     cterm=None      guibg=#2d2c2c   guifg=#000000
highlight! statusline        ctermfg=15      ctermbg=01      cterm=None      guifg=#FFFFFF   guibg=#2d2c2c

"highlight VimMode           ctermfg=15      ctermbg=33      cterm=None      guifg=#26ff4a   guibg=#1f2021
"highlight VimMode           ctermfg=15      ctermbg=33      cterm=bold      guifg=#000000   guibg=#ecff1e
highlight! VimMode           gui=bold        guibg=#ffff00   guifg=#000000 cterm=bold
highlight! VimMode_Suffix    guifg=#ffff00   guibg=#000000

" highlight! FileName          ctermfg=01      ctermbg=07      cterm=italic,bold      guifg=#dd3e3e  guibg=#0b1019
highlight! FileName          gui=bold        guifg=#00FF00      guibg=#000000   cterm=bold
" highlight! FileName          guifg=#ed3131   guibg=#000000   gui=bold
" highlight! FileName          guifg=#00ff00   guibg=#000000   gui=bold,italic
" highlight! FileName_Suffix   ctermfg=07      ctermbg=235     cterm=None      guifg=#0b1019  guibg=#2d2c2c
highlight! FileName_Suffix      guifg=#000000   guibg=NONE
" highlight! FileName_Suffix   guifg=#000000   guibg=#000000
highlight! SpaceC            ctermfg=232     ctermbg=232     cterm=bold

highlight! link FileType VimMode
highlight! link FileType_Prefix VimMode_Suffix

highlight! link BufNo FileName
highlight! link BufNo_Prefix FileName_Suffix

" highlight BufNo_Prefix      ctermfg=07      ctermbg=235     cterm=None

" highlight Cursor            ctermfg=15      ctermbg=28      cterm=None      guifg=#12edab   guibg=#2d2c2c
" highlight Cursor            ctermfg=15      ctermbg=28      cterm=None      guifg=#12edab   guibg=#0b1019
"highlight Cursor            guibg=default   guifg=default
highlight! Position          guibg=#000000   guifg=#00bbff   gui=None  cterm=italic
highlight! Position_Prefix   guibg=#ffff00   guifg=#000000

highlight! Cursor_Prefix     ctermfg=28      ctermbg=33      cterm=None      guifg=#0b1019   guibg=#ecff19

"highlight PasteMode     ctermfg=11    ctermbg=33    cterm=Bold
highlight! link PasteMode BufNo

set laststatus=2 " Show my current Vim Mode
set statusline=%!BuildStatusLine()

"*-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
"|                      BUILDING THE STATUS LINE                           |
"*-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*

function! BuildStatusLine()
    let status = ""             " Starting with an empty string

        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
        " * [1]. Displaying Current Vim Mode  *
        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*

    " (a). Setting Highlight for the Mode
    let status .= "%#VimMode#"
    " (b). Get the Current Mode & display a/q to the Dict
    let status .= "\ %{get(g:current_vim_mode, mode(), 'V-BLOCK')}"
    " (c). Colors for Beautiful Powerline Arrow
    let status .= "\ %#VimMode_Suffix# "

        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
        " * [2]. Displaying Current File Name *
        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*

    " (a). Setting the Highlightings for FileName
    let status .= "%#FileName#"
    " (b). Setting the FileName
    let status .= "%F"
    " (c). Highlightings for Beautiful Arrow
    let status .= "%#FileName_Suffix#"

                " Right Side of the Moon
        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
        " * [3]. Buffer Number and Paste Flag *
        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*

    let r_status = "%="
    let r_status .= "%#BufNo_Prefix#"
    let r_status .= "%#BufNo#"
    let r_status .= "[%n]"

    let r_status .= "%#PasteMode#"
    " ︈︈ : foea
    let r_status .= "%{&paste? '\  ': ''}"


        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
        " * [4]. File Type Specification  *
        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
    " (a). Highlighting for FileType Prefix Arrow
    let r_status .= "%#FileType_Prefix#"
    " (b). Highlighting for displaying FileType
    let r_status .= "%#FileType#"
    " (c). Displaying the FileType
    let r_status .= "\ %{get(g:file_types,&filetype,'conf')}"

        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
        " * [5]. Cursor (Line No. & Col No.) Display    *
        " *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
    
    let r_status .= "%#Position_Prefix#"
    let r_status .= "%#Position#"
    " : e0a1,  : e0a3
    let r_status .= "\  %l/%L"
    let r_status .= "\  %c"

    let r_status .= "%#FileType_Prefix# "

    return status. r_status
endfunction

