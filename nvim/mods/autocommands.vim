" Restoring Folds {{{

function! Restorefolds()
  autocmd! BufWinEnter <buffer> silent! loadview
  autocmd! BufWinLeave <buffer> silent mkview
endfunction

"  Restoring Folds : END }}}

" Generic

augroup nxtvim
    autocmd!

    " Saving the cursor position and open up there next time
    autocmd bufreadpost * call setpos(".", getpos("'\""))

    "Auto source vim files after i have saved them
    autocmd! bufwritepost *.vim source %

    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline 
    au VimLeave,WinLeave,BufWinLeave * setlocal nocursorline 

    au BufEnter *.jsx set filetype=typescriptreact
    au BufWritePost *.jsx,*.js CocCommand eslint.executeAutofix
    au BufWritePost *.scss Format
augroup end


