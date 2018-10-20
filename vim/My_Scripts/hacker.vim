"||=======================================================||
"||  _    _                  _                             ||
"|| | |  | |                | |                            ||
"|| | |__| |   __ _    ___  | | __   ___   _ __            ||
"|| |  __  |  / _` |  / __| | |/ /  / _ \ | '__|           ||
"|| | |  | | | (_| | | (__  |   <  |  __/ | |              ||
"|| |_|  |_|  \__,_|  \___| |_|\_\  \___| |_|              ||
"||          A Color scheme for Vim                       ||
"||                    :)) phenomenal-ab                   ||
"||                    :)) https://github.com/phenomenal-ab||
"||========================================================||

"===========[ Usual Stuffs ]===========
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "hacker"

"==========[ End : Usual Stuffs ]========

"=======[ Applies to All Stuffs ]=========
highlight normal ctermfg=10 ctermbg=None cterm=None
"=======[ End : Applies to All Stuffs ]=========

"================[ Python Specifics ]==============

highlight statement ctermfg=45 ctermbg=None cterm=bold
" statement group : def, class 
" statement : Also used in C/C++ -> while, for, conditionals etc.

highlight preProc ctermfg=09 ctermbg=None cterm=bold
" preProc : import

highlight pythonComment ctermfg=07 cterm=None
" pythonComment : comment # 

highlight pythonString ctermfg=39
" pythonString : color for String

highlight pythonFunction ctermfg=09 ctermbg=None cterm=bold
" pythonFunction : Functions and Methods

highlight pythonBuiltin ctermfg=09 ctermbg=None cterm=bold
"pythonBuiltin : True, False, print(), len(), str()

highlight constant ctermfg=39 ctermbg=None cterm=None
" Constants : strings and numbers

highlight pythonExceptions ctermfg=208 cterm=bold
" pythonExceptions : Exception keyword, AttributeError, ZerDivisionError etc.

highlight pythonException ctermfg=011 cterm=italic
" pythonException : try, except, raise etc.

"==============[ End : Python Specifics ]===========

"==============[ C and C++ Specifics ]=============

highlight PreProc ctermfg=198 ctermbg=None cterm=bold,italic
" PreProc : #include, #define, #ifdef etc.

highlight cIncluded ctermfg=09 ctermbg=None cterm=bold
" cIncluded : iostream, string, cstdlib etc.

highlight cStatement ctermfg=45 ctermbg=None cterm=bold
highlight cppStatement ctermfg=45 ctermbg=None cterm=bold
" cppStatement : using, private, public etc.

highlight cStructure ctermfg=208 ctermbg=None cterm=bold
highlight cppStructure ctermfg=208 ctermbg=None cterm=bold
" cppStructure : namespace, class etc.

highlight cppSTLnamespace ctermfg=09 ctermbg=None cterm=bold
" cppSTLnamespace : std etc.

highlight cType ctermfg=208 ctermbg=None cterm=bold
highlight cppSTLType ctermfg=208 ctermbg=None cterm=bold
" cType : int, void, float, double

highlight cAnsiFunction ctermfg=09 ctermbg=None cterm=bold
highlight cCustomFunc ctermfg=09 ctermbg=None cterm=bold
highlight cppSTLfunction ctermfg=09 ctermbg=None cterm=bold
" cCustomFunc : Any User Defined Function
" cppSTLfunction : C++'s Standard Template Library Functions

highlight cppSTLConstant ctermfg=220 ctermbg=None cterm=bold
" cppSTLConstant : cout, cin, 

highlight cConstant ctermfg=206 ctermbg=None cterm=None
highlight cppConstant ctermfg=206 ctermbg=None cterm=None
" cConstant   : NULL etc.
" cppConstant : nullptr etc.

highlight cCppString ctermfg=39 ctermbg=None cterm=None
" cCppString : Every C/C++ String

highlight cSpecial ctermfg=208
" cSpecial : Escape Characters

"===============[ End : C/C++ Specifics ]=============

"================[ Vim Specifics ]==============

highlight vimHighlight ctermfg=45 ctermbg=None cterm=bold
" vimHighlight : highlight keyword

highlight vimHiGroup ctermfg=09 ctermbg=None cterm=bold
" vimHiGroup : Highlighting Groups

highlight vimLineComment ctermfg=147 ctermbg=None cterm=none
highlight vimComment ctermfg=147 ctermbg=None cterm=none
" vimLineComment , vimComment : Comments in Vim

highlight VimHiCtermFgBg ctermfg=45 ctermbg=None cterm=bold
highlight vimHiCterm ctermfg=45 ctermbg=None cterm=bold
" vimHiCtermFgBg : ctermfg, ctermbg 
" vimHiCTerm : cterm

highlight vimHiAttrib ctermfg=77 ctermbg=None cterm=bold
" vimHiAttr : None, bold, italic, underline

highlight vimHiNmbr ctermfg=77 ctermbg=None cterm=bold
" vimHiNmbr : Numbers

highlight vimOption ctermfg=09 ctermbg=None cterm=bold
" vimOption : nocompatible, tabstop, all set options

highlight vimFunction ctermfg=09 ctermbg=None cterm=bold
highlight vimFuncName ctermfg=09 ctermbg=None cterm=bold
" vimFunction : Custom Vim Functions
" vimFuncName : Vim Predefined Functions

highlight vimFTOption ctermfg=09 ctermbg=None cterm=bold
" vimFTOption :plugin on, indent on

highlight vimFuncKey ctermfg=45 ctermbg=None cterm=None
" vimFuncKey : function keyword

highlight vimParenSep ctermfg=11 ctermbg=None cterm=None
" vimParenSep : (, )

highlight VertSplit ctermfg=36 ctermbg=None cterm=None
" Vertical Split that appears when we split the Vim Window

highlight Folded ctermfg=10 ctermbg=235 cterm=bold
" Folded => Colors for the FoldExpr Text

"================[ End : Vim Specific ]==================

"===========[ Bash Script Specifics ]============
highlight shDerefSimple ctermfg=09 ctermbg=None cterm=bold
highlight shDerefVar ctermfg=09    ctermbg=None cterm=bold
" shDerefVar : variables that are later referenced using $

"===========[ End : Bash Script Specifics ]============
