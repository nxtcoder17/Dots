" Vim syntax file
" Language:     JavaFX Script
" Maintainer:   Yang Zhang <com.gmail@yaaang>
" URL:		http://assorted.sf.net/jfx-vim
" Last Change:  2008 Jan 18

" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match
syn sync minlines=50

" most JFX keywords
syn keyword jfxKeyword abstract attribute bind break class continue delete false for function if import init insert new not null package private public return super sizeof static this throw try true var while after and as before catch dur else exclusive extends finally in bound indexof into inverse lazy on or replace step with where instanceof override at then tween assert by do first from last let protected readonly typeof lazy
syn keyword jfxImport import nextgroup=scalaFqn skipwhite
syn match jfxFqn "\<[._$a-zA-Z0-9,*]*" contained nextgroup=jfxFqnSet

" booleans
syn keyword jfxBoolean true false

" null
syn keyword jfxNull null

" package and import statements
syn keyword jfxPackage package nextgroup=jfxFqn skipwhite
syn keyword jfxImport import nextgroup=jfxFqn skipwhite
syn match jfxFqn "\<[._$a-zA-Z0-9,]*" contained

"" type declarations in val/var/def
syn match jfxType ":\s*[._$a-zA-Z0-9]\+[+*?]\?" contained
":\s*\(=>\s*\)\?[._$a-zA-Z0-9]\+\(\[[^]]*\]\+\)\?\(\s*\(<:\|>:\|#\|=>\)\s*[._$a-zA-Z0-9]\+\(\[[^]]*\]\+\)*\)*"ms=s+1 contained

" definitions
syn keyword jfxDef function operation nextgroup=jfxDefName skipwhite
syn keyword jfxVar var nextgroup=jfxVarName skipwhite
syn keyword jfxClass class nextgroup=jfxClassName skipwhite
syn keyword jfxAttribute attribute nextgroup=jfxAttributeName skipwhite
syn match jfxAttributeName "[^ =:;([]\+" contained nextgroup=jfxType skipwhite
syn match jfxDefName "[^ =:;([]\+" contained nextgroup=jfxDefArgs nextgroup=jfxType skipwhite
syn match jfxVarName "[^ =:;([]\+" contained nextgroup=jfxType skipwhite
syn match jfxClassName "[^ =:;(\[]\+" contained skipwhite
syn region jfxDefArgs start="(" end=")" contained contains=jfxDefArg skipwhite
" TODO fixme
"syn match jfxDefArg "[^ =:;([]\+" contained nextgroup=jfxType skipwhite

" comments
syn match jfxTodo "[tT][oO][dD][oO]\|[xX][xX][xX]" contained
syn match jfxLineComment "//.*" contains=jfxTodo
syn region jfxComment start="/\*" end="\*/" contains=jfxTodo

" string literals with escapes
syn region jfxString start="\"" skip="\\\"" end="\"" contains=jfxStringEscape " TODO end \n or not?
syn match jfxStringEscape "\\u[0-9a-fA-F]\{4}" contained
syn match jfxStringEscape "\\[nrfvb\\\"]" contained
syn match jfxString "'[_a-zA-Z][_a-zA-Z0-9]*\>"
syn match jfxString "'[^'\\]'\|'\\.'"

" number literals
syn match jfxNumber "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match jfxNumber "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match jfxNumber "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match jfxNumber "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

syn sync fromstart

hi link jfxAttribute StorageClass
hi link jfxKeyword Keyword
hi link jfxPackage Include
hi link jfxImport Include
hi link jfxBoolean Boolean
hi link jfxNull Constant
hi link jfxNumber Number
hi link jfxString String
hi link jfxStringEscape Special
hi link jfxComment Comment
hi link jfxLineComment Comment
hi link jfxTodo Todo
hi link jfxDef Keyword
hi link jfxVar Keyword
hi link jfxClass Keyword
hi link jfxDefName Function
hi link jfxDefSpecializer Function
hi link jfxClassName Special
hi link jfxType Type

let b:current_syntax = "jfx"
