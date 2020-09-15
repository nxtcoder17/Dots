
" Colorscheme : Gruvbox is the best thing
colorscheme gruvbox-material

" Current Line number in different color
hi CursorLineNr guibg=NONE guifg=#00beff gui=bold

" +++++ Start: Fold Expression +++++ {{{

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
