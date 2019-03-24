function! ReadCxx()
    silent execute "-1r ".expand(g:VIM_HOME). "My_Templates/template.cxx"
    silent execute "normal!G2k"
endfunction

augroup programming
    autocmd!
    " autocmd BufNewFile *.cxx,*.cpp call ReadCxx()
augroup END
