""
"" Vim color scheme
"" Maintainer: Joseph Yu
""

hi clear

let color_name = "malokai"
set background=dark

if exists("syntax_on")
  syntax reset
endif

function s:SetHighlight(name, fg, bg, fontface)
  let l:fontface = a:fontface

  if empty(l:fontface)
    let l:fontface = 'none'
  endif

  exec 'hi link ' . a:name . ' NONE'

  if !empty(a:fg)
    exec 'hi ' . a:name . ' guifg=' . a:fg.gui . ' ctermfg=' . a:fg.cterm
  endif

  if !empty(a:bg)
    exec 'hi ' . a:name . ' guibg=' . a:bg.gui . ' ctermbg=' . a:bg.cterm
  endif

  if !empty(l:fontface)
    exec 'hi ' . a:name . ' gui=' . l:fontface . ' cterm=' . l:fontface
  endif
endfunction

let s:purple = { 'gui': '#AE85FC', 'cterm': '177' }
let s:red = { 'gui': '#F62D57', 'cterm': '161' }
let s:dark_red = { 'gui': '#D70000', 'cterm': '160' }
let s:green = { 'gui': '#82DD73', 'cterm': '156' }
let s:cyan = { 'gui': '#6BD9ED', 'cterm': '123' }
let s:yellow = { 'gui': '#E6DA7B', 'cterm': '228' }
let s:orange = { 'gui': '#FB9633', 'cterm': '208' }

let s:comment = { 'gui': '#808890', 'cterm': '243' }
let s:error_fg = { 'gui': '#F14C50', 'cterm': '166' }
let s:hint_fg = { 'gui': '#BCBCBC', 'cterm': '250' }
let s:none = { 'gui': 'none', 'cterm': 'none' }
let s:fg = { 'gui': '#E8E8E3', 'cterm': '252' }
let s:bg = { 'gui': '#242424', 'cterm': '234' }

let s:folded = { 'gui': '#BCBCBC', 'cterm': '250' }
let s:hl_bg = { 'gui': '#2B2B2B', 'cterm': '232' }
let s:warning = { 'gui': '#F1854C', 'cterm': '208' }
let s:line_number_fg = { 'gui': '#949494', 'cterm': '246' }
let s:line_number_bg = { 'gui': '#242424', 'cterm': '235' }
let s:cursor_line_number_bg = { 'gui': '#3e3d32', 'cterm': '235' }

let s:menu_bg = { 'gui': '#303030', 'cterm': '236' }
let s:menu_selected_bg = { 'gui': '#363636', 'cterm': '239' }
let s:menu_thumb = { 'gui': '#6C6C6C', 'cterm': '242' }
let s:menu_thumb_bg = { 'gui': '#262626', 'cterm': '235' }

let s:select_bg = { 'gui': '#383A3E', 'cterm': '236'}

let s:tab_bg = { 'gui': '#171814', 'cterm': '235' }
let s:tab_bg_fill = { 'gui': '#080808', 'cterm': '232' }
let s:tab_bg_selected = { 'gui': '#272822', 'cterm': '237' }

" normal & cursor {{{
call s:SetHighlight('Normal', s:fg, s:bg, '')
call s:SetHighlight('NormalFloat', s:fg, s:bg, '')
call s:SetHighlight('Cursor', '', '', 'reverse')
call s:SetHighlight('CursorIM', '', '', 'reverse')
call s:SetHighlight('CursorColumn', s:none, '', 'reverse')
call s:SetHighlight('CursorLine', s:none, s:bg, '')
" }}}
" diff {{{
call s:SetHighlight('DiffAdd', s:green, s:bg, '')
call s:SetHighlight('DiffChange', s:yellow, s:bg, '')
call s:SetHighlight('DiffDelete', s:red, s:bg, '')
call s:SetHighlight('DiffText', s:fg, s:bg, '')
" }}}
" fold {{{
call s:SetHighlight('Folded', s:folded, s:bg, '')
call s:SetHighlight('FoldColumn', s:folded, s:bg, '')
" }}}
" search {{{
call s:SetHighlight('Search', s:none, s:bg, 'underline')
call s:SetHighlight('IncSearch', s:none, s:hl_bg, 'italic')
" }}}
" line number {{{
call s:SetHighlight('LineNr', s:line_number_fg, s:line_number_bg, '')
call s:SetHighlight('CursorLineNr', s:fg, s:cursor_line_number_bg, 'bold')
" }}}
" message {{{
call s:SetHighlight('ErrorMsg', s:red, s:none, '')
call s:SetHighlight('WarningMsg', s:warning, s:none, '')
call s:SetHighlight('MoreMsg', s:fg, '', '')
call s:SetHighlight('Question', s:fg, '', '')
" }}}
" popup menu {{{
call s:SetHighlight('Pmenu', s:fg, s:menu_bg, '')
call s:SetHighlight('PmenuSel', s:none, s:menu_selected_bg, 'bold')
call s:SetHighlight('PmenuSbar', s:menu_thumb_bg, s:menu_thumb_bg, '')
call s:SetHighlight('PmenuThumb', s:menu_thumb, s:menu_thumb, '')
" }}}
" Tabs {{{
call s:SetHighlight('TabLine', s:fg, s:tab_bg, '')
call s:SetHighlight('TabLineFill', s:fg, s:tab_bg_fill, '')
call s:SetHighlight('TabLineSel', s:fg, s:tab_bg_selected, 'bold')
" barbar {{{
call s:SetHighlight('BufferCurrent', s:fg, s:tab_bg_selected, 'bold')
call s:SetHighlight('BufferCurrentIndex', s:fg, s:tab_bg_selected, '')
call s:SetHighlight('BufferCurrentMod', s:fg, s:tab_bg_selected, '')
call s:SetHighlight('BufferCurrentSign', s:green, s:tab_bg_selected, 'bold')
call s:SetHighlight('BufferCurrentTarget', s:fg, s:tab_bg_selected, 'bold')
call s:SetHighlight('BufferCurrentIcon', s:green, s:tab_bg_selected, '')
call s:SetHighlight('BufferVisible', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleIndex', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleMod', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleSign', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleTarget', s:fg, s:tab_bg, 'bold')
call s:SetHighlight('BufferVisibleIcon', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactive', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveIndex', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveMod', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveSign', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveTarget', s:fg, s:tab_bg, 'bold')
call s:SetHighlight('BufferInactiveIcon', s:red, s:tab_bg, '')
" }}}
" }}}
" visual {{{
call s:SetHighlight('Visual', '', s:select_bg, '')
call s:SetHighlight('VisualNOS', '', s:select_bg, '')
" }}}
" other {{{
call s:SetHighlight('SignColumn', s:fg, s:none, '')
call s:SetHighlight('Directory', s:fg, s:none, '')
call s:SetHighlight('NonText', s:green, s:none, '')
call s:SetHighlight('Title', s:fg, '', '')
call s:SetHighlight('FloatTitle', s:green, '', '')
call s:SetHighlight('MatchParen', s:orange, s:hl_bg, '')
" }}}

"	general syntax highlighting {{{
" Comment {{{
call s:SetHighlight('Comment', s:comment, '', 'italic') " comment
" }}}
"	Constants {{{
call s:SetHighlight('Constant', s:purple, '', '') " any constant
call s:SetHighlight('String', s:yellow, '', '') " "string"
call s:SetHighlight('Character', s:purple, '', '') " 'c', '\n'
call s:SetHighlight('Number', s:purple, '', '') " 123, 0xff
call s:SetHighlight('Boolean', s:purple, '', 'bold') " true FALSE
call s:SetHighlight('Float', s:purple, '', '') " 3.14
"	}}}
"	Identifier {{{
call s:SetHighlight('Identifier', s:fg, '', '') " any variable name
call s:SetHighlight('Function', s:green, '', '') " function name (also: methods for classes)
"	}}}
" Statement {{{
call s:SetHighlight('Statement', s:red, '', '') " any statement
call s:SetHighlight('Conditional', s:red, '', 'bold') " if, then, else, endif, switch, etc.
call s:SetHighlight('Repeat', s:red, '', 'bold') " for, do, while, etc.
call s:SetHighlight('Label', s:red, '', 'bold') " case, default, etc.
call s:SetHighlight('Operator', s:fg, '', '') " "sizeof", "+", "*", etc.
call s:SetHighlight('Keyword', s:red, '', '') " any other keyword, eg. return
call s:SetHighlight('Exception', s:red, '', 'italic') " try, catch, throw
" }}}
" PreProc {{{
call s:SetHighlight('PreProc', s:red, '', 'bold') " generic Preprocessor
call s:SetHighlight('Include', s:red, '', 'bold') " #include
call s:SetHighlight('Define', s:red, '', 'bold') " #define
call s:SetHighlight('Macro', s:cyan, '', '') " same as Define
call s:SetHighlight('PreCondit', s:red, '', 'bold') " preprocessor #if, #else, #endif, etc.
" }}}
" Type {{{
call s:SetHighlight('Type', s:cyan, '', 'italic') " int, long, char, etc.
call s:SetHighlight('StorageClass', s:cyan, '', 'italic') " static, register, volatile
call s:SetHighlight('Structure', s:fg, '', 'italic') " struct, union, enum
call s:SetHighlight('Typedef', s:cyan, '', 'italic') " typedef
" }}}
" Special {{{
call s:SetHighlight('Special', s:cyan, '', '') " any special symbol
call s:SetHighlight('SpecialChar', s:purple, '', '') " special character in a constant, eg. "\n"
call s:SetHighlight('Tag', s:green, '', '') " you can use CTRL-] on this
call s:SetHighlight('Delimiter', s:fg, '', '') " character that needs attention
call s:SetHighlight('SpecialComment', s:orange, '', '') " special things inside a comment
call s:SetHighlight('Debug', s:green, s:none, '') " debugging statements
" }}}
" Underlined {{{
call s:SetHighlight('Underlined', s:orange, '', 'underline')
" }}}
" Ignore {{{
call s:SetHighlight('Ignore', s:error_fg, '', 'bold') " left blank, hidden  |hl-Ignore|
" }}}
" Error {{{
call s:SetHighlight('Error', s:red, s:bg, 'bold') " any erroneous construct
" }}}
" Todo {{{
call s:SetHighlight('Todo', s:orange, s:bg, '') " TODO
" }}}
" }}}

" tree-sitter {{{
" comment {{{
" call s:SetHighlight('@comment', s:comment, '', 'italic')
" }}}
" misc {{{
" call s:SetHighlight('@none', '', '', '')
" call s:SetHighlight('@preproc', s:red, '', 'bold')
" call s:SetHighlight('@define', s:red, '', 'bold')
" }}}
" constants {{{
" call s:SetHighlight('@boolean', s:purple, '', '')
" call s:SetHighlight('@character', s:purple, '', '')
" call s:SetHighlight('@character.special', s:purple, '', '')
" call s:SetHighlight('@float', s:purple, '', '')
" call s:SetHighlight('@string', s:yellow, '', '')
" call s:SetHighlight('@string.special', s:yellow, '', '')
" call s:SetHighlight('@string.escape', s:yellow, '', '')
" call s:SetHighlight('@namespace', s:purple, '', '')
" }}}
" keywords {{{
" call s:SetHighlight('@exception', s:cyan, '', '')
" call s:SetHighlight('@include', s:red, '', 'bold')
" call s:SetHighlight('@keyword', s:red, '', '')
" call s:SetHighlight('@keyword.function', s:cyan, '', 'bold')
" call s:SetHighlight('@keyword.operator', s:red, '', 'bold')
" call s:SetHighlight('@keyword.return', s:red, '', 'bold')
" call s:SetHighlight('@repeat', s:red, '', 'bold')
" call s:SetHighlight('@conditional', s:red, '', 'bold')
" }}}
" function {{{
" call s:SetHighlight('@function', s:green, '', '')
" call s:SetHighlight('@function.builtin', s:green, '', '')
" call s:SetHighlight('@function.macro', s:green, '', '')
" call s:SetHighlight('@method', s:green, '', '')
" call s:SetHighlight('@method.call', s:green, '', '')
" }}}
" parameters {{{
" call s:SetHighlight('@parameter', s:fg, '', '')
" call s:SetHighlight('@property', s:orange, '', '')
" call s:SetHighlight('@field', s:fg, '', '')
" call s:SetHighlight('@symbol', s:fg, '', '')
" }}}
" variable {{{
" call s:SetHighlight('@variable', s:fg, '', '')
" call s:SetHighlight('@variable.builtin', s:fg, '', '')
" }}}
" operator {{{
" call s:SetHighlight('@operator', s:fg, '', '')
" call s:SetHighlight('@parameter', s:fg, '', '')
" call s:SetHighlight('@punctuation.delimiter', s:fg, '', '')
" call s:SetHighlight('@punctuation.bracket', s:fg, '', '')
" call s:SetHighlight('@punctuation.special', s:fg, '', '')
" }}}
" label {{{
" call s:SetHighlight('@label', s:fg, '', '')
" }}}
" types {{{
" call s:SetHighlight('@constructor', s:cyan, '', '')
" call s:SetHighlight('@type', s:cyan, '', '')
" call s:SetHighlight('@type.builtin', s:cyan, '', '')
" call s:SetHighlight('@type.qualifier', s:cyan, '', '')
" call s:SetHighlight('@type.definition', s:cyan, '', '')
" }}}
" html, javascript, typescript tsx {{{
let types = ['html', 'javascript', 'typescript', 'tsx']
for t in types
  call s:SetHighlight('@tag.' .. t , s:red, '', '')
  call s:SetHighlight('@tag.delimiter.' .. t, s:fg, '', '')
  call s:SetHighlight('@text.' .. t, s:fg, '', '')
  call s:SetHighlight('@text.strong.' .. t, s:fg, '', 'bold')
  call s:SetHighlight('@text.emphasis.' .. t, s:fg, '', 'italic')
  call s:SetHighlight('@text.underline.' .. t, s:fg, '', 'underline')
  call s:SetHighlight('@text.title.' .. t, s:fg, '', 'bold')
  call s:SetHighlight('@text.literal.' .. t, s:fg, '', '')
  call s:SetHighlight('@text.uri.' .. t, s:cyan, '', 'italic')
endfor
" }}}
" css {{{
call s:SetHighlight('@attribute.css' , s:fg, '', '')
call s:SetHighlight('@punctuation.delimiter.css', s:fg, '', '')
call s:SetHighlight('@property.css' , s:cyan, '', 'italic')
" }}}
" }}}

" lsp {{{
" call s:SetHighlight('@lsp.type.class', s:cyan, '', 'italic')
" call s:SetHighlight('@lsp.type.decorator', s:fg, '', '')
" call s:SetHighlight('@lsp.type.enum', s:cyan, '', 'italic')
" call s:SetHighlight('@lsp.type.enumMember', s:purple, '', 'bold')
" call s:SetHighlight('@lsp.type.function', s:green, '', '')
" call s:SetHighlight('@lsp.type.interface', s:fg, '', '')
" call s:SetHighlight('@lsp.type.macro', s:cyan, '', '')
" call s:SetHighlight('@lsp.type.method', s:green, '', '')
" call s:SetHighlight('@lsp.type.namespace', s:purple, '', 'italic')
" call s:SetHighlight('@lsp.type.parameter', s:fg, '', 'underline')
" call s:SetHighlight('@lsp.type.property', s:fg, '', '')
" call s:SetHighlight('@lsp.type.struct', s:fg, '', '')
" call s:SetHighlight('@lsp.type.type', s:cyan, '', 'italic')
" call s:SetHighlight('@lsp.type.typeParameter', s:fg, '', '')
" call s:SetHighlight('@lsp.type.variable', s:fg, '', '')

call s:SetHighlight('DiagnosticError', s:error_fg, s:none, 'bold')
call s:SetHighlight('DiagnosticWarn', s:warning, s:none, 'bold')
call s:SetHighlight('DiagnosticInfo', s:fg, s:none, '')
call s:SetHighlight('DiagnosticHint', s:hint_fg, s:none, '')

call s:SetHighlight('LspInlayHint', s:comment, s:none, '')
call s:SetHighlight('LspDiagnosticsDefaultError', s:error_fg, s:none, 'bold')
call s:SetHighlight('LspDiagnosticsDefaultWarning', s:warning, s:none, 'bold')
call s:SetHighlight('LspDiagnosticsDefaultInformation', s:fg, s:none, '')
" }}}
