""
"" Vim color scheme
"" Maintainer: Joseph Yu
"" Last Change: 2015 8 10
""

hi clear

let color_name = "malokai"

set t_Co=256
set background=dark

if exists("syntax_on")
  syntax reset
endif

hi	Normal		cterm=NONE	ctermfg=255	ctermbg=233		gui=NONE	guifg=#FFFFFF	guibg=#000000
hi	Cursor		cterm=NONE	ctermfg=0	ctermbg=255		gui=NONE	guifg=#000000	guibg=#FFFFFF
hi	CursorIM	cterm=NONE	ctermfg=0	ctermbg=255		gui=NONE	guifg=#000000	guibg=#FFFFFF
hi	CursorColumn	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi	CursorLine		cterm=NONE	ctermfg=NONE	ctermbg=234		gui=NONE	guifg=NONE	guibg=#121212
hi	Directory	cterm=bold		ctermfg=33		gui=bold	guifg=#0CB627
"hi	DiffAdd		ctermbg=236		guibg=#474646
"hi	DiffChange	ctermbg=236		guibg=#474646
"hi	DiffDelete	ctermbg=236		cterm=bold		gui=bold		guibg=#474646
"hi	DiffText	ctermbg=236		ctermfg=82		cterm=bold		gui=bold	guibg=#474646	guifg=#78EC3B
hi	ErrorMsg	cterm=bold,italic	ctermfg=NONE	ctermbg=161		guifg=#FFFFFF	guifg=#D83528
hi	VertSplit	cterm=bold			ctermfg=16		ctermbg=33		guibg=#000000	guifg=#7159FF
hi	Folded		ctermfg=33		guifg=#76A1F8
hi	FoldColumn	ctermfg=69		guifg=#76A1F8
"hi	SignColumn	ctermfg=63		guifg=#76A1F8
hi	IncSearch	cterm=bold		ctermbg=238		gui=bold		guibg=#3A3A3A
hi	LineNr			cterm=NONE	ctermfg=246		ctermbg=234		gui=NONE	guifg=#b8b6b6	guibg=#121212
hi	CursorLineNr	cterm=bold	ctermfg=252		ctermbg=234		gui=NONE	guifg=#FFFFFF	guibg=#1C1C1C
hi	MatchParen	cterm=bold		ctermfg=227		ctermbg=236		gui=bold	guifg=#000000	guibg=#19a1f6
"hi	ModeMsg		cterm=bold		ctermfg=121		ctermbg=0		gui=bold	guifg=#9CF3BE	guibg=#000000
hi	MoreMsg		cterm=bold		ctermfg=153		ctermbg=0		gui=bold	guifg=#BFD8F1	guibg=#000000
hi	NonText		cterm=bold		ctermfg=161		ctermbg=NONE	gui=bold	guifg=#BE86F5	guibg=#000000
hi	Pmenu		cterm=bold		ctermbg=236		ctermfg=255		gui=bold	guibg=#303030	guifg=#FFFFFF
hi	PmenuSel	cterm=bold		ctermbg=239		ctermfg=255		gui=bold	guibg=#4E4E4E	guifg=#FFFFFF
hi	PmenuSbar	ctermbg=234		ctermfg=234		guibg=#006600	guifg=#1C1C1C
hi	PmenuThumb	ctermbg=242		ctermfg=242		guibg=#009900	guifg=#848484
hi	Question	ctermbg=NONE	ctermfg=77		guibg=#000000	guifg=#09D62C
hi	Search		ctermfg=NONE	ctermbg=236		guifg=NONE		guibg=#303030
"hi	SpecialKey	ctermfg=69		guifg=#7DA1F2
hi	TabLine		cterm=bold		ctermfg=250		ctermbg=NONE		gui=bold		guifg=#7E50F1	guibg=#000000
hi	TabLineFill	cterm=bold		ctermfg=233		ctermbg=0		gui=bold		guifg=#000000	guibg=#000000
hi	TabLineSel	cterm=underline,bold			ctermfg=255		ctermbg=234		gui=underline,bold	guifg=#DC3476	guibg=#121212
hi	Visual		cterm=bold		ctermfg=255		ctermbg=130		gui=reverse		guibg=NONE
hi	VisualNOS	cterm=underline,bold			gui=underline,bold
hi	WarningMsg	cterm=NONE		ctermbg=NONE		ctermfg=NONE		gui=bold		guibg=#DB2F22	guifg=#FFFFFF
"hi	WildMenu	ctermfg=16		ctermbg=214		guifg=#000000	guibg=#FF9900

"hi	Menu		gui=bold
"hi	scrollbars	gui=bold
"hi	Tooltip		gui=bold

"""	general syntax highlighting
hi	Boolean		cterm=bold		ctermfg=99		gui=bold	guifg=#DA3D7A
hi	Character	cterm=NONE		ctermfg=99		gui=NONE	guifg=#09D62C
hi	Comment		cterm=NONE		ctermfg=243		gui=NONE	guifg=#8E8E8E
hi	Conditional	cterm=bold		ctermfg=161		gui=bold	guifg=#DD50F8
hi	Constant	cterm=bold		ctermfg=99		gui=bold	guifg=#DA3D7A
hi	Debug		cterm=bold		ctermfg=161		gui=bold	guifg=#DA3D7A
hi	Define		cterm=bold		ctermfg=161		gui=bold	guifg=#BD2419
hi	Delimiter	cterm=NONE		ctermfg=255		gui=bold	guifg=#F3B83F
hi	Error		cterm=bold		ctermbg=160		ctermfg=255	gui=bold	guifg=#FFFFFF	guibg=#DC2E21
hi	Exception	cterm=bold		ctermfg=161		gui=bold	guifg=#DD50F8
hi	Float		cterm=NONE		ctermfg=99		gui=bold	guifg=#DA3D7A
hi	Function	cterm=bold		ctermfg=77		gui=NONE	guifg=#BEF9DE
hi	Identifier	cterm=NONE		ctermfg=255		gui=bold	guifg=#F3B83F
hi	Ignore		cterm=bold		ctermfg=160		gui=bold	guifg=#DC2E21
hi	Include		cterm=bold		ctermfg=227		gui=bold	guifg=#DD50F8
hi	Keyword		cterm=bold		ctermfg=161		gui=bold	guifg=#BD85F7
hi	Label		cterm=bold		ctermfg=161		gui=bold	guifg=#DD50F8
hi	Macro		cterm=bold		ctermfg=45		gui=bold	guifg=#7EA1F0
hi	Number		cterm=NONE		ctermfg=99		gui=bold	guifg=#DA3D7A
hi	Operator	cterm=bold		ctermfg=161		gui=bold	guifg=#BE4EF7
hi	PreCondit	cterm=bold		ctermfg=161		gui=bold	guifg=#DD50F8
hi	PreProc		cterm=bold		ctermfg=161		gui=bold	guifg=#DA3D7A
hi	Repeat		cterm=bold		ctermfg=161		gui=bold	guifg=#DD50F8
hi	Special		cterm=bold		ctermfg=99		gui=bold	guifg=#F3B83F
hi	SpecialChar	cterm=bold		ctermfg=99		gui=bold	guifg=#F3B83F
hi	SpecialComment	cterm=bold	ctermfg=33		gui=bold	guifg=#159FF8
hi	Statement	cterm=bold		ctermfg=161		gui=bold	guifg=#DD50F8
hi	StorageClass	cterm=bold	ctermfg=161		gui=bold	guifg=#159FF8
hi	String		cterm=NONE		ctermfg=227		gui=NONE	guifg=#09D62C
hi	Structure	cterm=bold		ctermfg=161		gui=bold	guifg=#159FF8
hi	Tag			cterm=bold		ctermfg=161		gui=bold	guifg=#F3B83F
hi	Title		cterm=bold		ctermfg=255		gui=NONE		guifg=#F9BB34
hi	Todo		cterm=bold		ctermfg=161		ctermbg=214	gui=bold	guifg=#DA3D7A	guibg=#F3B83F
hi	Type		cterm=bold		ctermfg=45		gui=bold	guifg=#159FF8
hi	Typedef		cterm=bold		ctermfg=161		gui=bold	guifg=#159FF8
hi	Underlined	cterm=underline,bold	ctermfg=214			gui=underline,bold	guifg=#F3B83F

""" enable C syntax highlight
:let c_gnu = 1
:let c_comment_strings = 1
:let c_space_errors = 1
:let c_curly_error = 1
:let c_ansi_typedefs = 1
:let c_ansi_constants = 1
:let c_syntax_for_h = 1

"""	enable Java syntax highlight
"""	All identifiers in java.lang.* are always visible in all classes.  To
"""	highlight them use:
:let java_highlight_java_lang_ids=1
"""	If you write function declarations that are always indented by either
"""	a tab, 8 spaces or 2 spaces you may want to set
:let java_highlight_functions="indent"
:let java_highlight_functions="style"
:let java_allow_cpp_keywords = 0
:hi link javaParen Comment
:let java_minlines = 50

"""	enable Python syntax highlight
"""	For highlighted numbers:
:let python_highlight_numbers = 1
""	For highlighted builtin functions:
:let python_highlight_builtins = 1
""	For highlighted standard exceptions:
:let python_highlight_exceptions = 1
""	For highlighted trailing whitespace and mix of spaces and tabs:
:let python_highlight_space_errors = 1
""	If you want all possible Python highlighting (the same as setting the
""	preceding three options):
""	:let python_highlight_all = 1

