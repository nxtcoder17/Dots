" Set of Custom Vimscript Functions to enhance some functionalities


" Syntax Highlighting Groups {{{

function! SyntaxAttributes()
    let row = line('.')     " Current Line Number
    let col = col('.')" Current Column Number

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

" nnoremap <A-S-P> :echo SyntaxAttributes()<CR>

" Syntax Highlighting Groups }}}

" Close all Hidden Buffers {{{

" Source: https://gist.github.com/skanev/1068214

command! CloseHiddenBuffers call s:CloseHiddenBuffers()

function! s:CloseHiddenBuffers()
  let open_buffers = []

  for i in range(tabpagenr('$'))
    call extend(open_buffers, tabpagebuflist(i + 1))
  endfor

  for num in range(1, bufnr("$") + 1)
    if buflisted(num) && index(open_buffers, num) == -1
      exec "bdelete ".num
    endif
  endfor
endfunction"}}}

" Custom Fold Expression{{{
set foldmethod=marker
set foldtext=MyFoldExpression()

function! MyFoldExpression()
    let foldLength = v:foldend - v:foldstart + 1
    let lengthString = '[ '.foldLength. ' lines ]'

    let nextLine = getline(v:foldstart+1)
    
    let text = '[ '
    let text .= getline(v:foldstart)
    " let text .= len(nextLine) > 0 ? ' ⤷ ' : ''
    let text .= nextLine
    let text .= ' ]'
    let prefix ='  '"Unicode Character : e0b0
    let suffix = '  '"Unicode Character : e0b2
    let subText = text
    let subText = substitute(text,'\"\|=\|#\|//\|/*\|*/\|',"",'g')
    let subText = substitute(subText,'{\|}',"",'g')

    "This is the position i want my lines number to be
    let repeatedSpacePostText = repeat(' ',60-len(subText))
    return prefix. subText. repeatedSpacePostText. lengthString. suffix
endfunction"}}}

"{{{
command! ToJSON call ToJSONFn() 

function! ToJSONFn()
    redir @+
    silent echo system('node --', 'console.log(JSON.stringify(' .expand(@") .', null, 2))')
    redir END
    echo "JSON object copied to clipboard @+"
endfunction"}}}

augroup NxtFold
    autocmd!
    autocmd BufEnter *.js,*.jsx set foldtext=MyFoldExpression()
    autocmd BufEnter *.js,*.jsx set foldmethod=marker
augroup end

" Source: https://vi.stackexchange.com/questions/11310/what-is-a-scratch-window
command! Scratch vsplit | enew | setlocal buftype=nofile bufhidden=hide nobl noswapfile
