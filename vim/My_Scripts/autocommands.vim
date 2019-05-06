
"=====================[ AutoCommands ]=====================
augroup vimrc
    " make sure auto commands not get repeated when vimrc is sourced
    autocmd!
    "=======[ Vim Configurations ]==========
    autocmd bufwritepost *.vimrc source % 

    "=======[ restoring the previous cursor position ]============
    autocmd bufreadpost * call setpos(".", getpos("'\""))
    autocmd FileType python,cpp,c,conf,javascript,vim call Persistent_Undo()

    "=======[ Commenting: dynamic mapping of <leader>c for commenting ]========================
    autocmd FileType python,sh map <leader>c :call CommentPythonShPhp()<CR>
    autocmd FileType vim map <leader>c :call CommentVim()<CR>
    autocmd FileType cpp,c,javascript map <leader>c :call CommentJavaJsCppC()<CR>
    autocmd BufRead,BufNewFile *.java map <leader>c :call CommentJavaJsCppC()<CR>
    autocmd FileType html,xml map <leader>c :call CommentHtmlXml()<CR>
    autocmd FileType css map <leader>c :call CommentCss()<CR>
    autocmd FileType php map <leader>c :call CommentPythonShPhp()<CR>

    "=======[ UnCommenting: leader + shift + c ]================
    autocmd FileType python,sh,vim,php map <leader>x :call UncommentPythonShVimPhp()<CR>
    autocmd FileType javascript,cpp,c map <leader>x :call UncommentJavaJsCppC()<cr>
    autocmd BufRead,BufNewFile *.java map <leader>x :call UncommentJavaJsCppC()<CR>
    autocmd FileType html,xml map <leader>x :call UnCommentHtmlXml()<CR>
    autocmd FileType css map <leader>x :call UnCommentCss()<CR>
    "=======[ restoring folds ]====================================================
    autocmd FileType vim,python,cpp,c call Restorefolds()
    autocmd FileType conf,javascript,html,tmux call Restorefolds()

    "=======[ python specifics ]===================================================
    "autocmd filetype python set textwidth=79
    "=======[ Plugin Specific: AutoCommands ]===========
    autocmd FileType python nnoremap <leader>= :0,$!yapf<CR>

    "=======[ I like tabs more than buffers ]========
    "    autocmd BufAdd,BufNewFile * nested tab sball

    "=================[ Language Specific Mappings ]==================
    "=================[ For Java ]====================
    autocmd! FileType java execute "source ". expand(g:VIM_HOME). "My_Scripts/java_imap.vim"

    autocmd FileType java map <c-e> :call Execute_Java()<cr>
    autocmd FileType python map <C-e> :call Execute_Python()<cr>
    autocmd FileType cpp map <C-e> :call Execute_Cpp()<cr>
    autocmd FileType c map <C-e> :call Execute_C()<cr>

    "============== [ Setting Dynamic FileTYpe ]==========
    autocmd BufNewFile,BufRead *.fxml setf fxml

    "============[ Generating Help Tags for Plugins ]================
    " autocmd BufRead,BufNewFile *.* helptags ~/.vim/pack/plugins/start/ultisnips/doc
    " autocmd BufRead,BufNewFile *.* helptags ~/.vim/pack/plugins/start/vim-snippets/doc
augroup end
"=====================[ End ]=====================
