" Both of these do the same things, 2nd one is there just in case for example

" inoreabbrev <expr> _sdt strftime("%c")
inoreabbrev _sdt <esc>:-1r!date --iso-8601=seconds<CR>
" inoreabbrev _sdt <C-r>=strftime("%c")<CR>
"
" 

cnoreabbrev coca CocFzfList actions<CR>
