
"========================================================================
"               Status Line Generator For Vim 
"========================================================================


"Icons
 "  : e0b0
 "  : e0b2
"   : eob1
"   : e0b3

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
highlight statusline        ctermfg=15      ctermbg=01      cterm=None      guifg=#FFFFFF   guibg=#2d2c2c

"highlight VimMode           ctermfg=15      ctermbg=33      cterm=None      guifg=#26ff4a   guibg=#1f2021
highlight VimMode           ctermfg=15      ctermbg=33      cterm=bold      guifg=#000000   guibg=#ecff1e
highlight VimMode_Suffix    guifg=#ecff1e   guibg=#0b1019   gui=reverse

"highlight FileName          ctermfg=01      ctermbg=07      cterm=bold      guifg=#dd3e3e  guibg=#FFFFFF
highlight FileName          ctermfg=01      ctermbg=07      cterm=bold      guifg=#dd3e3e  guibg=#0b1019
highlight FileName_Suffix   ctermfg=07      ctermbg=235     cterm=None      guifg=#0b1019  guibg=#2d2c2c
highlight SpaceC            ctermfg=232     ctermbg=232     cterm=bold

highlight link FileType VimMode
highlight link FileType_Prefix VimMode_Suffix

highlight link BufNo FileName
highlight link BufNo_Prefix FileName_Suffix

" highlight BufNo_Prefix      ctermfg=07      ctermbg=235     cterm=None

" highlight Cursor            ctermfg=15      ctermbg=28      cterm=None      guifg=#12edab   guibg=#2d2c2c
highlight Cursor            ctermfg=15      ctermbg=28      cterm=None      guifg=#12edab   guibg=#0b1019
highlight Cursor_Prefix     ctermfg=28      ctermbg=33      cterm=None      guifg=#0b1019   guibg=#ecff19

"highlight PasteMode     ctermfg=11    ctermbg=33    cterm=Bold
highlight link PasteMode BufNo

set laststatus=2
" Show my current Vim Mode
"
"*-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
"|                      BUILDING THE STATUS LINE                           |
"*-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*

" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
" * [1]. Displaying Current Vim Mode  *
" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
set statusline=%#VimMode#                                           " 1. Set highlighting for the Mode
set statusline+=\ %{get(g:current_vim_mode,mode(),'V-BLOCK')}       " 2. Get the Current Mode & display a/q to the Dict
set statusline+=\ %#VimMode_Suffix#                                " 3. End display with a beautiful Arrow

" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
" * [2]. Displaying Current File Name *
" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
set statusline+=%<                                                  " 1. Truncate Here if we run out of Space
set statusline+=%#FileName#                                         " 2. Set Hightlighting for the File Name
set statusline+=\                                                  " 3. Unicode Icon (Beautify)
set statusline+=\ %F                                                " 4. Finally, display the filename
set statusline+=\ %m                                                " 5. Modifier flag show [+], [RO] stuff
set statusline+=%#FileName_Suffix#                                 " 6. End part with a beautiful Arrow
set statusline+=%0*                                                 " 7. Restoring Normal Hightlighting for remaining part

" Right Side of the Moon
" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
" * [3]. Buffer Number and Paste Flag *
" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
set statusline+=%=%#BufNo_Prefix#                                  " 1. Left Arrow (beautify) & it's highlighting
set statusline+=%=%#BufNo#                                          " 2. Hightlighting for buffer number
set statusline+=%=[%n]                                              " 3. Buffer Number
set statusline+=%=%#PasteMode#                                      " 4. Highlighting for Paste Mode Display
set statusline+=%=%{&paste?'\ \ ':''}                              " 5. Conditional Checking for PASTE Mode & Display icon

" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
" * [4]. File Type Specification  *
" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
set statusline+=%=%#FileType_Prefix#                               " 1. Highlighting for Arrow Separation
set statusline+=%=%#FileType#                                       " 2. Highlighting for File Type Text
set statusline+=%=\ %{get(g:file_types,&filetype,'conf')}           " 3. Read corresponding value from Dict (defaults to 'conf')
set statusline+=%=%#Cursor_Prefix#                                 " 4. End Part with next part highlighting arrow separation

" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
" * [5]. Cursor (Line No. & Col No.) Display    *
" *-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-*
set statusline+=%=%#Cursor#                                         " 1. Highlighting for Cursor Details
set statusline+=%=\ \ %l/%L                                        " 2. Line Number Icon & format <current>/<total>
set statusline+=%=\ \ %c                                           " 3. Column Number Icon & format <col-no-current>
" set statusline+=%=%#Cursor#%(%=\ \ %l/%L\ \ %c%)
" set statusline+=%=\  
set statusline+=%=%#FileType_Prefix#\                              " 1. Highlighting for Arrow Separation

"==============[ End ]===============
