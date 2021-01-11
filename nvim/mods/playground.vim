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

"Close all Hidden Buffers
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
endfunction

function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), 90])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 140]))
    exe "resize" . (min([vmax, 60]))
endfunction

function AutoResizeSplit () 
  " let height = max([winheight(0), float2nr(&lines * 0.6)])
  " echo height
  " let width = max([winwidth(0), float2nr(&columns * 0.6)])
  " echo width
  " call animate#window_absolute(width, height)
  vertical resize +20
  resize +5
endfunction

function AutoResizeSplit2 () 
  " let height = max([winheight(0), float2nr(&lines * 0.6)])
  " echo height
  " let width = max([winwidth(0), float2nr(&columns * 0.6)])
  " echo width
  " call animate#window_absolute(width, height)
  vertical resize -20
  resize -5
endfunction

" autocmd! WinEnter * call AutoResizeSplit()
" autocmd! WinEnter * call AutoResizeSplit()
" autocmd! WinLeave * call AutoResizeSplit2()

set foldmethod=marker
set foldtext=MyFoldExpression()

function! MyFoldExpression()
    let foldLength = v:foldend - v:foldstart + 1
    let lengthString = '[ '.foldLength. ' lines ]'
    
    let text = getline(v:foldstart)
    let prefix ='  '"Unicode Character : e0b0
    let suffix = '  '"Unicode Character : e0b2
    let subText = substitute(text,'\"\|=\|#\|//\|/*\|*/\|',"",'g')
    let subText = substitute(subText,'{\|}',"",'g')

    "This is the position i want my lines number to be
    let repeatedSpacePostText = repeat(' ',60-len(subText))
    return prefix. subText. repeatedSpacePostText. lengthString. suffix
endfunction

function! MyJSFoldExpression()
    let foldLength = v:foldend - v:foldstart + 1
    let lengthString = '[ '.foldLength. ' lines ]'

    let text = getline(v:foldstart)
    let needConcat = ""
    let checkIfAssignment = matchstr(text, " = ")
    let checkIfFunction = matchstr(text, "function")

    let subText = substitute(subText,'{{{|}}}',"",'g')

    let needConcat = needConcat . checkIfAssignment . checkIfFunction
    if (strlen(needConcat) == 0)
      let text = text . getline(v:foldstart + 1)
    endif

    " echo text
    " return text

    let prefix ='  '"Unicode Character : e0b0
    let suffix = '  '"Unicode Character : e0b2

    "This is the position i want my lines number to be
    let repeatedSpacePostText = repeat(' ',60-len(text))
    return prefix. text. repeatedSpacePostText. lengthString. suffix
endfunction

function! ToJSON()
    redir @+
    silent echo system('node --', 'console.log(JSON.stringify(' .expand(@") .', null, 2))')
    redir END
    echo "JSON object copied to clipboard @+"
endfunction

augroup NxtFold
    autocmd!
    autocmd BufEnter *.js,*.jsx set foldtext=MyJSFoldExpression()
    autocmd BufEnter *.js,*.jsx set foldmethod=marker
    " autocmd BufEnter *.js,*.jsx set foldmarker= | set foldtext=MyJSFoldExpression()
    " autocmd BufEnter *.js,*.jsx set foldtext=MyJSFoldExpression()
augroup end

" Source: https://vi.stackexchange.com/questions/11310/what-is-a-scratch-window
command! Scratch vsplit | enew | setlocal buftype=nofile bufhidden=hide nobl noswapfile
