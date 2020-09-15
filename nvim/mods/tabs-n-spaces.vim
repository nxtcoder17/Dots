" Expand Tabs to spaces
set expandtab

" Copy Previous Indentation on Auto Indent
set copyindent

" AutoIndent and Smart Indent
set autoindent
set smartindent

" Here, Tab means 2 spaces
set tabstop=4

" Pressing TAB key results in # spaces
set softtabstop=4

" Setting # spaces for indenting
set shiftwidth=4

" At BEG of line, TAB inserts Shiftwidth spaces and backspaces clears it
set smarttab


augroup JS
    autocmd!
    autocmd filetype javascript,javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup end

