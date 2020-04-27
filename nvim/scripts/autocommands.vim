augroup vimrc
    autocmd!

    " Saving the cursor position and open up there next time
    autocmd bufreadpost * call setpos(".", getpos("'\""))

    "+++++ Commenting: Mapped to <leader>c +++++
    autocmd FileType python,sh map <leader>c :call CommentPythonShPhp()<CR>
    autocmd FileType vim map <leader>c :call CommentVim()<CR>
    autocmd FileType cpp,c,javascript map <leader>c :call CommentJavaJsCppC()<CR>
    autocmd BufRead,BufNewFile *.java map <leader>c :call CommentJavaJsCppC()<CR>
    autocmd FileType html,xml map <leader>c :call CommentHtmlXml()<CR>
    autocmd FileType css map <leader>c :call CommentCss()<CR>
    autocmd FileType php map <leader>c :call CommentPythonShPhp()<CR>

    "+++++ Uncommenting: Mapped to <leader>x +++++
    autocmd FileType python,sh,vim,php map <leader>x :call UncommentPythonShVimPhp()<CR>
    autocmd FileType javascript,cpp,c map <leader>x :call UncommentJavaJsCppC()<cr>
    autocmd BufRead,BufNewFile *.java map <leader>x :call UncommentJavaJsCppC()<CR>
    autocmd FileType html,xml map <leader>x :call UnCommentHtmlXml()<CR>
    autocmd FileType css map <leader>x :call UnCommentCss()<CR>

    "=======[ restoring folds ]====================================================
    autocmd FileType vim,python,cpp,c call Restorefolds()
    autocmd FileType conf,javascript,html,tmux call Restorefolds()

    " TmuxTalk
    autocmd FileType cpp map <C-e> :call Execute_Cpp()<CR>

augroup end
