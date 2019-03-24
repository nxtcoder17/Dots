"========================[ Custom Functions ]==============================

"==========[ Return Syntax Highlighting Groups ]==================={{{
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

nnoremap <C-S-P> :echo SyntaxAttributes()<CR>
"=====================[ END ]=================================}}}

"=========[ Persistent Undo ]==========={{{
function! Persistent_Undo()
    " Save all undo files in a single location
    set undodir=$HOME/.vim/.VIM_UNDO_FILES
    " Save a goddamn huge back history
    set undolevels=5000

    " Switching on persistent undo
    set undofile
endfunction
"=========[ End ]=====================}}}

"=========[ Executing Source Codes ]============={{{
function! ExecutePython()
    execute '!clear && python3 %'
endfunction

function! ExecuteCpp()
    execute '!clear && g++ % && ./a.out'
endfunction

function! ExecuteJava()
    execute '!clear && javac % && java %:r'
endfunction

function! ExecuteC()
    execute '!clear && gcc % && ./a.out'
endfunction
"==================[ END ]===========================}}}

"=========[ Commenting in Code ]=================={{{

function! CommentPythonSh()
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
    silent execute 'normal!^I// '
    silent execute 'normal!$'
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
"================[ END ]==========================}}}

"===========[ Uncommenting_In_The_Code ]==============={{{

"[ Python, Shell, Vim ]
function! UncommentPythonShVim()
    silent execute 'normal!^2x'
endfunction

"[ Java, Js, C++, C ]
function! UncommentJavaJsCppC()
    silent execute 'normal!^3x'
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

"===================[ End ]===================}}}

"=========[ My Fold Configuration ]================={{{
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
"=========[ End ]=================================}}}

"=========[ Restoring Folds ]======={{{

function! Restorefolds()
    autocmd! BufWinEnter <buffer> silent loadview
    autocmd! BufWinLeave <buffer> silent mkview
endfunction
"=========[ End ]===================}}}

"=======[ Make a ring around the text matched ]==========={{{
"-----------------------Thanks to Damian Conway---------------
nnoremap <silent> n   n:call HLNext(0.4)<CR>
nnoremap <silent> N   N:call HLNext(0.4)<CR>

function! HLNext (blinktime)
    highlight RedOnRed ctermfg=red ctermbg=red
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    echo matchlen
    let ring_pat = (lnum > 1 ? '\%'.(lnum-1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.\|' : '')
            \ . '\%'.lnum.'l\%>'.max([col-4,1]) .'v\%<'.col.'v.'
            \ . '\|'
            \ . '\%'.lnum.'l\%>'.max([col+matchlen-1,1]) .'v\%<'.(col+matchlen+3).'v.'
            \ . '\|'
            \ . '\%'.(lnum+1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.'
    let ring = matchadd('RedOnRed', ring_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction
"======[ End of Function ]=======}}}

"===================[ Tab Based Auto Completion: A Learner's Try ]======================== {{{
" Mapping <TAB> to do insert mode completion based on MyTabAutoComplete() Function
" inoremap <tab> <c-r>=MyTabAutoComplete()<CR>

function! MyTabAutoComplete()
    " If the completion popup is there 
    " Map <Tab> to <C-P> to iterate through previous matches
    if (pumvisible())
        return "\<C-P>"
    endif

    " This subText stores text from start of the text till my cursor position - 1
    let subText = strpart(getline('.'), -1, col('.')+1)

    " The regex used as argument of matchstr() finds out my current word
    " as it strips down everything till it finds a substring without any
    " whitespace i.e. (<TAB>, <Space> etc.)
    let current_word = matchstr(subText,"[^ \t]*$")

    "if we don't have any word in our current line without whitespace
    " Just return the basic <TAB> : generate a tabstop then
    if (strlen(current_word)==0) 
        return "\<tab>"
    endif

    " match() : Returns -1 if not found
    let contains_dot = match(subText, '\.')
    let contains_forward_slash = match(subText, '\/')
    if ((contains_dot == -1) && (contains_forward_slash == -1))
        return "\<C-X>\<C-P>"
    elseif (contains_forward_slash)
        " return \<C-X>\<C-F>"
        return "\<C-X>\<C-P>"
    elseif (contains_dot)
        return "\<C-X>\<C-N>"
    else
        return "\<C-X>\<C-O>"
    endif
endfunction
"=================[ End ]===================}}}

" HTML Tags AutoComplete
function! AutoCompleteHTMLTags()
    if (&filetype != 'html')
        return ""
    endif

    let subText = strpart(getline('.'), -1, col('.')+1)
    let current_word = matchstr(subText,"[^ \t]*$")
    let element  = matchstr(current_word, "<.*>")
    if (strlen(element) == 0)
        return ""
    else
        let tag = matchstr(element, "[^<].*[^>]")
        let close_element = '</'. tag . '>'
        let length = strlen(close_element)
        echo "Length: " . length
        silent execute "normal!a" . close_element
        silent execute "normal!" . (length-1). "h"
        " return "". close_element
    endif
endfunction
"========================[ End ]============================================


