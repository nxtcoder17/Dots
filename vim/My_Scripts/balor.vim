
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "balor"
syn keyword javaType              class
syn keyword custom_javaUtility    System out in Scanner
syn keyword custom_javaFuncs      println print printf 

highlight normal                guifg=#4bf442   guibg=#000000
highlight javaString            guifg=#ffa0a0
highlight javaConditional       guifg=#f48846   cterm=italic,bold
highlight javaRepeat            guifg=#f48846   cterm=bold
highlight javaStorageClass      guifg=#3d6fc6   cterm=bold
highlight javaScopeDecl         guifg=#3d6fc6   cterm=bold
highlight javaBoolean           guifg=#46f4e8   cterm=bold
highlight javaConstant          guifg=#46f4e8   cterm=bold
highlight javaType              guifg=#f44657   cterm=bold
highlight javaExceptions        guifg=#ff8605   cterm=bold

highlight custom_javaUtility    guifg=#02cea9   cterm=bold
highlight custom_javaFuncs      guifg=#0e8c8e   cterm=bold
