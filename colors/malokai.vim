""
"" Vim color scheme
"" Maintainer: Joseph Yu
"" Last Change: 2015 10 19
""

hi clear

let color_name = "malokai"

set t_Co=256
set background=dark

if exists("syntax_on")
  syntax reset
endif

" terminal colors
let term_text_color = "253"
let term_bg_color = "233"
let term_hl_color = "234"
let term_strong_hl_color = "235"
let term_diff_delete = "27"
" gui color
let gui_text_color = "#F0F0F0"
let gui_bg_color = "#0A0A0A"
let gui_hl_color = "#121212"
let gui_strong_hl_color = "#161616"
let gui_diff_delete = "#5882FA"

" normal & cursor {{{
execute "hi Normal        cterm=none ctermfg=".term_text_color." ctermbg=".term_bg_color." gui=none guifg=".gui_text_color." guibg=".gui_bg_color
execute "hi Cursor        cterm=reverse gui=none guifg=".gui_bg_color." guibg=".gui_text_color
execute "hi CursorIM      cterm=reverse gui=none guifg=".gui_bg_color." guibg=".gui_text_color
execute "hi CursorColumn  cterm=none ctermfg=none ctermbg=".term_hl_color." gui=none guifg=none guibg=".gui_hl_color
execute "hi CursorLine    cterm=none ctermfg=none ctermbg=".term_hl_color." gui=none guifg=none guibg=".gui_hl_color
" }}}
" diff {{{
execute "hi DiffAdd     cterm=bold ctermbg=none ctermfg=none gui=bold guibg=none guifg=none"
execute "hi DiffChange  cterm=bold ctermbg=none ctermfg=none gui=bold guibg=none guifg=none"
execute "hi	DiffDelete	cterm=bold ctermbg=none ctermfg=".term_diff_delete." gui=bold guibg=none guifg=".gui_diff_delete
execute "hi	DiffText	cterm=bold ctermbg=none ctermfg=".term_diff_delete." gui=bold guibg=none guifg=".gui_diff_delete
" }}}
" fold {{{
hi	Folded		cterm=NONE  ctermbg=NONE  ctermfg=252		guifg=#76A1F8
hi	FoldColumn	cterm=NONE  ctermbg=NONE  ctermfg=252		guifg=#76A1F8
" }}}
" search {{{
hi	Search		cterm=NONE  ctermbg=232	  gui=NONE  guibg=#030303
hi	IncSearch	cterm=bold	ctermbg=232	  gui=bold  guibg=#030303
" }}}
" line number {{{
hi	LineNr		  cterm=NONE  ctermfg=246   ctermbg=234	  gui=NONE	guifg=#BDBDBD	guibg=#121212
hi	CursorLineNr  cterm=bold  ctermfg=252	ctermbg=235	  gui=bold	guifg=#E6E6E6	guibg=#202020
" }}}
" message {{{
hi	ErrorMsg	cterm=bold	  ctermfg=214   ctermbg=NONE  gui=bold  guifg=#F5B91F   guibg=NONE
hi	MoreMsg		cterm=bold	  ctermfg=161	ctermbg=NONE  gui=bold	guifg=#F51F3F	guibg=NONE
hi	WarningMsg	cterm=bold	  ctermfg=246   ctermbg=NONE  gui=bold	guifg=#BDBDBD	guibg=NONE
hi	Question	cterm=bold    ctermfg=252 	ctermbg=NONE  gui=bold  guifg=#E6E6E6	guibg=NONE
" }}}
" popup menu {{{
hi	Pmenu		cterm=bold	ctermfg=255   ctermbg=236	gui=bold	guibg=#303030	guifg=#FFFFFF
hi	PmenuSel	cterm=bold	ctermfg=255	  ctermbg=239	gui=bold	guibg=#4E4E4E	guifg=#FFFFFF
hi	PmenuSbar	cterm=NONE  ctermfg=234	  ctermbg=234	gui=NONE    guibg=#006600	guifg=#1C1C1C
hi	PmenuThumb	cterm=NONE  ctermfg=242	  ctermbg=242   gui=NONE    guibg=#009900	guifg=#848484
" }}}
" Tabs {{{
hi	TabLine		cterm=bold	          ctermfg=250	ctermbg=236	    gui=bold            guifg=#7E50F1	guibg=#000000
hi	TabLineFill	cterm=bold	          ctermfg=232	ctermbg=232	    gui=bold		    guifg=#000000	guibg=#000000
hi	TabLineSel	cterm=underline,bold  ctermfg=252	ctermbg=238	    gui=underline,bold	guifg=#DC3476	guibg=#121212
" }}}
" visual {{{
hi	Visual		cterm=bold		ctermfg=255		ctermbg=130		gui=reverse		guibg=NONE
hi	VisualNOS	cterm=underline,bold			gui=underline,bold
" }}}
" other {{{
hi	SignColumn	cterm=bold  ctermfg=255   ctermbg=NONE    gui=bold  guifg=#76A1F8   guibg=#000000
hi	Directory	cterm=bold	ctermfg=33	  ctermbg=NONE    gui=bold	guifg=#0CB627   guibg=#000000
hi	VertSplit	cterm=bold	ctermfg=16	  ctermbg=77	  gui=bold  guifg=#000000	guibg=#7159FF
hi	MatchParen	cterm=bold	ctermfg=227	  ctermbg=236	  gui=bold	guifg=#000000	guibg=#19a1f6
hi	NonText		cterm=bold	ctermfg=99	  ctermbg=NONE	  gui=bold	guifg=#BE86F5	guibg=#000000
hi	SpecialKey	cterm=NONE  ctermfg=161	  ctermbg=NONE    gui=NONE  guifg=#7DA1F2   guibg=#000000
" }}}
" gui highlight {{{
"hi	WildMenu	ctermfg=16		ctermbg=214		guifg=#000000	guibg=#FF9900
"hi	Menu		gui=bold
"hi	scrollbars	gui=bold
"hi	Tooltip		gui=bold
" }}}

""	general syntax highlighting {{{
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
" }}}

"" enable C syntax highlight {{{
let c_gnu = 1
let c_comment_strings = 1
let c_space_errors = 1
let c_curly_error = 1
let c_ansi_typedefs = 1
let c_ansi_constants = 1
let c_syntax_for_h = 1
" }}}
"" enable Java syntax highlight {{{
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_allow_cpp_keywords = 0
let java_minlines = 1024
" }}}
"" enable Python syntax highlight {{{
let python_highlight_all = 1
" }}}

