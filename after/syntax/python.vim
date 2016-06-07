""
"" Extra Python Syntax
"" Author: Joseph Yu
"" Last Update: 2016/6/6
""

syn match	pythonBracket	"[()]"
syn match	pythonBraces	"[{}]"
syn match	pythonComma		","
syn match	pythonOperator	"\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match	pythonOperator	"<<\|>>\|&\||\|++\|--\|->"
syn match	pythonOperator	"[.!~*&%<>^|=+-]"
syn match	pythonOperator	"/[^/*=]"me=e-1
syn match	pythonOperator	"/$"
syn match	pythonOperator	"&&\|||"
syn match	pythonArgument	"(\([_a-zA-Z0-9, ]*[ =]*["_,\w\d\s+-\*/\.]*\)*)" contains=pythonString,pythonBracket,pythonOperator,pythonNumber,pythonComma
syn keyword pythonBoolean	True
syn keyword pythonBoolean	False

hi pythonComma cterm=NONE ctermfg=255
hi pythonArgument cterm=bold ctermfg=202
hi pythonBracket cterm=NONE ctermfg=255
hi pythonBoolean cterm=bold ctermfg=99
