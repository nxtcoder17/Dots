
" +++++ Commenting in Code +++++{{{
function! CommentPythonShPhp()
    silent execute 'normal!^I# '
    silent execute 'normal!j^'
endfunction

function! CommentHtmlXml()
    silent execute 'normal!^I<!-- '
    silent execute 'normal!$'
    silent execute 'normal!a -->'
    silent execute 'normal!j^'
endfunction

function! CommentJavaJsCppC()
    silent execute 'normal!^I/* '
    silent execute 'normal!A */'
    silent execute 'normal!j^'
endfunction

function! CommentVim()
    silent execute 'normal!^I" '
    silent execute 'normal!j^'
endfunction

function! CommentCss()
    silent execute 'normal!^I/* '
    silent execute 'normal!$'
    silent execute 'normal!a */'
    silent execute 'normal!j^'
endfunction
" ++++ Commenting in Code +++++}}}

" +++++ UnCommenting in Code +++++{{{

"[ Python, Shell, Vim ]
function! UncommentPythonShVimPhp()
    silent execute 'normal!^2x'
endfunction

"[ Java, Js, C++, C ]
function! UncommentJavaJsCppC()
    silent execute 'normal!^3x'
    silent execute 'normal!$2h3x'
endfunction

"[ Html, XML, FXML ]
function! UnCommentHtmlXml()
    silent execute 'normal!^4x'
    silent execute 'normal!$'
    silent execute 'normal!2h3x'  
endfunction
 
function! UnCommentCss()
    silent execute 'normal!^3x'
    silent execute 'normal!$'
    silent execute 'normal!2h3x'
endfunction
" +++++ UnCommenting in Code +++++}}}

" +++++ Fold Expression +++++ {{{

" Customised Fold Expression
set foldtext=MyFoldExpression()

function! MyFoldExpression()
    let foldLength = v:foldend - v:foldstart + 1
    let lengthString = '[ '.foldLength. ' lines ]'
    
    let text = getline(v:foldstart)
    let preffix ='  '      "Unicode Character : e0b0
    let suffix = '  '      "Unicode Character : e0b2
    let subText = substitute(text,'\"\|=\|#\|//\|/*\|*/\|',"",'g')
    let subText = substitute(subText,'{\|}',"",'g')

    "This is the position i want my lines number to be
    let repeatedSpacePostText = repeat(' ',60-len(subText))
    return preffix. subText. repeatedSpacePostText. lengthString. suffix
endfunction

" +++++ End: Fold Expression +++++ }}}

" +++++ Restoring Folds +++++{{{

function! Restorefolds()
  autocmd! BufWinEnter <buffer> silent! loadview
  autocmd! BufWinLeave <buffer> silent mkview
endfunction

" +++++ End: Restoring Folds +++++}}}

" +++++ Syntax Highlighting Groups +++++ {{{

function! SyntaxAttributes()
    let row = line('.')     " Current Line Number
    let col = col('.')      " Current Column Number

    let syntaxId = synID(row, col, 1)   " 1 is for True (required for operation)
    " This syntaxId will be used with synIDattr() and synIDtrans() to get info
    " about syntax highlighting Group

    let name = synIDattr(syntaxId, 'name')  " Returns the name of Hightlighting body
    let groupSyntaxId = synIDtrans(syntaxId)
    let groupName = synIDattr(groupSyntaxId, 'name')  " Returns Group Name

    let fgcolor = synIDattr(groupSyntaxId, 'fg')    " Foreground Color
    let bgcolor = synIDattr(groupSyntaxId, 'bg')    " Background Color

    return 'Group : '. groupName. '  Syntax Body : '. name. '  FgColor : '. fgcolor
endfunction

nnoremap <A-S-P> :echo SyntaxAttributes()<CR>

" ++++++ Syntax Highlighting Groups +++++ }}}

" Tmux Talk{{{
" We create a command Silent that will help redraw the Vim Screen just after executing a shell command
command! -nargs=1 Silent
\   execute 'silent !' . <q-args>
\ | execute 'redraw!'

function! Execute_Python()
    let process = '" clear; python % "'
	execute 'Silent tmux send-keys -t 2 ' .expand(process). ' Enter '
    "execute 'Silent tmux send-keys -t 2 '. command . ' Enter'
"clear; python %" Enter'
endfunction

function! Execute_Java()
	let CLASS = '/home/balor/Workspace/Java/Vim/Class_Files '
	let temp = ' clear; javac -d '. expand(CLASS). expand('%'). '; java -cp '. expand(CLASS) .expand('%:r')"
	execute 'Silent tmux send-keys -t 2 "'. expand(temp) .'" Enter '
endfunction

function! Execute_Cpp()
	let process = ' " clear; g++ % -o sol && ./sol" '
	" execute 'Silent tmux send-keys -t 2 ' .expand(process). 'Enter'
	execute 'Silent tmux send-keys -t 2 ' .expand(process) . ' Enter '
endfunction

function! Execute_C()
	let process = ' " clear; gcc % -o sol && ./sol" '
	execute 'Silent tmux send-keys -t 2 ' .expand(process). ' Enter '
endfunction

function! MarkDown_Preview()
    execute 'Silent markdown '. expand('%'). ' > temp.html && qutebrowser --target tab temp.html'
endfunction

function! Generate_HTML() 
    execute 'Silent markdown '. expand('%'). ' > temp.html'
endfunction
" Tmux Talk END}}}
