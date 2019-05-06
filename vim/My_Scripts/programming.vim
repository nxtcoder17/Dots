function! ReadCxx()
    silent execute "-1r ".expand(g:VIM_HOME). "My_Templates/template.cxx"
    silent execute "normal!G2k"
endfunction

function! ReadHtml()
    silent execute "-1r ".expand (g:VIM_HOME). "My_Templates/template.html"
    silent execute "normal!6jo"
endfunction

augroup programming
    autocmd!
    " autocmd BufNewFile *.cxx,*.cpp call ReadCxx()
    autocmd BufNewFile *.html,*.htm call ReadHtml()
augroup END
