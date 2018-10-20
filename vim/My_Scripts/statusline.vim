
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
      \ 'R': 'REPLACE',
      \ 'X': 'BLOCK Mode'
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
      \ 'vimplug'       : 'Plugins'
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
set statusline=%#VimMode#\ %{g:current_vim_mode[mode()]}
set statusline+=%#VimMode_Suffix#
set statusline+=%<             " Truncate Here if we run out of Space
set statusline+=%#FileName#\ \ %F\ %m
set statusline+=%#FileName_Suffix#
set statusline+=%0*

" Right Side of the Moon
set statusline+=%=%#BufNo_Prefix#
set statusline+=%=%#BufNo#[%n]
set statusline+=%=%#PasteMode#%{&paste?'\ \ ':''}
set statusline+=%=%#FileType_Prefix#
"set statusline+=%=%#FileType#\ %{g:file_types[ReturnType()]}:''}
set statusline+=%=%#FileType#\ %{g:file_types[&filetype]}
set statusline+=%=%#Cursor_Prefix#\ 
set statusline+=%=%#Cursor#%(%=\ \ %l/%L\ \ %c%)
set statusline+=%=\  

function! ReturnType()
  return &filetype
endfunction

"==============[ End ]===============
