
"===================[ Tab Based Auto Completion ]======================== 
" Mapping <TAB> to do insert mode completion based on MyTabAutoComplete() Function
"inoremap <tab> <c-r>=MyTabAutoComplete()<CR>

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
        return "\<C-X>\<C-F>"
    elseif (contains_dot)
        return "\<C-X>\<C-N>"
    else
        return "\<C-X>\<C-O>"
    endif
endfunction
"=================[ End ]===================
