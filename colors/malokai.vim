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
let term_fold_color = "250"
let term_dark_bg_color = "232"
let term_warning_text_color = "214"
let term_light_text_color = "246"
let term_popup_bg_color = "236"
let term_popup_sel_color = "239"
let term_popup_thumb_color = "242"
let term_tab_bg_fill = "232"
let term_tab_bg = "235"
let term_tab_select = "237"
let term_select_bg = "130"
let term_directory = "33"
let term_separator = "77"
let term_match_paren = "227"
let term_non_text = "99"
let term_special = "161"
" gui color
let gui_text_color = "#F0F0F0"
let gui_bg_color = "#0A0A0A"
let gui_hl_color = "#121212"
let gui_strong_hl_color = "#161616"
let gui_diff_delete = "#5882FA"
let gui_fold_color = "#BDBDBD"
let gui_dark_bg_color = "#060606"
let gui_warning_text_color = "#ED9F0D"
let gui_light_text_color = "#666666"
let gui_popup_bg_color = "#202020"
let gui_popup_sel_color = "#363636"
let gui_popup_thumb_color = "#565656"
let gui_tab_bg_fill = "#090909"
let gui_tab_bg = "#0C0C0C"
let gui_tab_select = "#0E0E0E"
let gui_select_bg = "#EB981D"
let gui_directory = "#4F4DE9"
let gui_separator = "#58D539"
let gui_match_paren = "#F7AA03"
let gui_non_text = "#8100EB"
let gui_special = "#FF3535"

" normal & cursor {{{
execute "hi Normal        cterm=none ctermfg=".term_text_color." ctermbg=".term_bg_color." gui=none guifg=".gui_text_color." guibg=".gui_bg_color
execute "hi Cursor        cterm=reverse gui=none guifg=".gui_bg_color." guibg=".gui_text_color
execute "hi CursorIM      cterm=reverse gui=none guifg=".gui_bg_color." guibg=".gui_text_color
execute "hi CursorColumn  cterm=none ctermfg=none ctermbg=".term_hl_color." gui=none guibg=".gui_hl_color
execute "hi CursorLine    cterm=none ctermfg=none ctermbg=".term_hl_color." gui=none guibg=".gui_hl_color
" }}}
" diff {{{
execute "hi DiffAdd     cterm=bold ctermbg=none ctermfg=none gui=bold"
execute "hi DiffChange  cterm=bold ctermbg=none ctermfg=none gui=bold"
execute "hi	DiffDelete	cterm=bold ctermbg=none ctermfg=".term_diff_delete." gui=bold guifg=".gui_diff_delete
execute "hi	DiffText	cterm=bold ctermbg=none ctermfg=".term_diff_delete." gui=bold guifg=".gui_diff_delete
" }}}
" fold {{{
execute "hi Folded        cterm=none ctermbg=none  ctermfg=".term_fold_color." gui=none guifg=".gui_fold_color
execute "hi FoldedColumn  cterm=none ctermbg=none  ctermfg=".term_fold_color." gui=none guifg=".gui_fold_color
" }}}
" search {{{
execute "hi	Search		cterm=none  ctermfg=none ctermbg=".term_dark_bg_color." gui=none guibg=".gui_dark_bg_color
execute "hi	IncSearch	cterm=bold	ctermfg=none ctermbg=".term_dark_bg_color." gui=bold guibg=".gui_dark_bg_color
" }}}
" line number {{{
execute "hi	LineNr		  cterm=none  ctermfg=".term_light_text_color." ctermbg=".term_hl_color." gui=none	guifg=".gui_light_text_color." guibg=".gui_hl_color
execute "hi	CursorLineNr  cterm=bold  ctermfg=".term_text_color." ctermbg=".term_strong_hl_color." gui=bold	guifg=".gui_text_color." guibg=".gui_strong_hl_color
" }}}
" message {{{
execute "hi	ErrorMsg	cterm=bold	ctermfg=".term_warning_text_color." ctermbg=none  gui=bold  guifg=".gui_warning_text_color
execute "hi	MoreMsg		cterm=bold	ctermfg=".term_text_color."	ctermbg=none gui=bold guifg=".gui_text_color
execute "hi	WarningMsg	cterm=bold	ctermfg=".term_text_color." ctermbg=none gui=bold guifg=".gui_text_color
execute "hi	Question	cterm=bold  ctermfg=".term_text_color." ctermbg=none gui=bold guifg=".gui_text_color
" }}}
" popup menu {{{
execute "hi	Pmenu		cterm=bold	ctermfg=".term_text_color." ctermbg=".term_popup_bg_color." gui=bold guifg="gui_text_color." guibg=".gui_popup_bg_color
execute "hi	PmenuSel	cterm=bold	ctermfg=".term_text_color."	ctermbg=".term_popup_sel_color." gui=bold guifg=".gui_text_color." guibg=".gui_popup_sel_color
execute "hi	PmenuSbar	cterm=none  ctermfg=".term_hl_color." ctermbg=".term_hl_color."	gui=none guifg=".gui_hl_color." guibg=".gui_hl_color
execute "hi	PmenuThumb	cterm=none  ctermfg=".term_popup_thumb_color." ctermbg=".term_popup_thumb_color." gui=none guifg=".gui_popup_thumb_color." guibg=".gui_popup_thumb_color
" }}}
" Tabs {{{
execute "hi	TabLine		cterm=bold ctermfg=".term_text_color." ctermbg=".term_tab_bg." gui=bold guifg=".gui_text_color." guibg=".gui_tab_bg
execute "hi	TabLineFill	cterm=none ctermfg=".term_tab_bg_fill." ctermbg=".term_tab_bg_fill." gui=none guifg=".gui_tab_bg_fill." guibg=".gui_tab_bg_fill
execute "hi	TabLineSel	cterm=underline,bold  ctermfg=".term_text_color." ctermbg=".term_tab_select." gui=underline,bold guifg=".gui_text_color." guibg=".gui_tab_select
" }}}
" visual {{{
execute "hi	Visual		cterm=bold ctermfg=".term_text_color." ctermbg=".term_select_bg." gui=bold guifg=".gui_text_color." guibg=".gui_select_bg
execute "hi	VisualNOS	cterm=bold ctermfg=".term_text_color." ctermbg=".term_select_bg." gui=bold guifg=".gui_text_color." guibg=".gui_select_bg
" }}}
" other {{{
execute "hi	SignColumn	cterm=bold ctermfg=".term_text_color." ctermbg=none gui=bold guifg=".gui_text_color
execute "hi	Directory	cterm=bold ctermfg=".term_directory." ctermbg=none gui=bold	guifg=".gui_directory
execute "hi	VertSplit	cterm=bold ctermfg=16 ctermbg=".term_separator." gui=bold guifg=#000000 guibg=".gui_separator
execute "hi	MatchParen	cterm=bold ctermfg=".term_match_paren." ctermbg=".term_strong_hl_color." gui=bold guifg=".gui_match_paren." guibg=".gui_strong_hl_color
execute "hi	NonText		cterm=bold ctermfg=".term_non_text." ctermbg=none gui=bold guifg=".gui_non_text
execute "hi	SpecialKey	cterm=none ctermfg=".term_special." ctermbg=none gui=none guifg=".gui_special
execute "hi	WildMenu	cterm=bold ctermfg=none ctermbg=".term_dark_bg_color." gui=bold guibg=".gui_dark_bg_color
" }}}
" gui highlight {{{
execute "hi	Menu		gui=bold guifg=".gui_text_color." guibg=".gui_bg_color
execute "hi	scrollbars	gui=bold guifg=".gui_strong_hl_color." guibg=".gui_dark_bg_color
execute "hi	Tooltip		gui=bold guifg=".gui_text_color." guibg=".gui_hl_color
" }}}

let term_constant_color = "99"
let term_construct_color = "161"
let term_comment_color = "243"
let term_error_color = "160"
let term_function_color = "77"
let term_type_color = "45"
let gui_constant_color = "#9820CB"

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

" support for code_color plugin {{{
exe "hi Variable      cterm=none ctermfg=".term_text_color." ctermbg=none gui=none guifg=".gui_text_color
exe "hi Member        cterm=none ctermfg=77  ctermbg=none"
exe "hi Namespace     cterm=bold ctermfg=208 ctermbg=none"
exe "hi EnumConstant  cterm=bold ctermfg=99 ctermbg=none"
" }}}
