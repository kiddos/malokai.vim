""
"" Extra Java Syntax
"" Author: Joseph Yu
"" Last Update: 2015/12/20
""

" operator
syn match javaOperator	'\(<<\|>>\|[-+*/%&^|<>!=]\)='
syn match javaOperator	'<<\|>>\|&&\|||\|++\|--\|->'
syn match javaOperator	'[.!*%<>^|=+-]'
syn match javaOperator	'/[^/*=]'me=e-1
syn match javaOperator '&&\|||'

syn match javaParen '('
syn match javaParen ')'
syn match javaParen '[{}]'

syn match javaCustomComma ','
syn match javaArg "(,\?[a-zA-Z0-9]\+\s\+[a-zA-Z0-9$_]\+)"
      \ contains=javaParen,javaType,javaCustomComma
" syn match javaContructor '[\w]+([\w\s,]*)' contains=javaParen,javaArg

syn match javaAnnotation "@[A-Za-z]*"

hi def link javaOperator Operator
hi def link javaBrace javaParen
" hi def link javaConstrutor Function
hi def link javaArg Identifier
" hi javaArg ctermbg=9  ctermfg=10

hi javaAnnotation cterm=NONE ctermfg=255
