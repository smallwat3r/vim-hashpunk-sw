" File              : hashpunk-sw-sweet.vim
" Author            : Matthieu Petiteau <mpetiteau.pro@gmail.com>
" Date              : Thu  7 Feb 09:33:20 2019
" Last Modified Date: Thu  7 Feb 09:33:20 2019
" Last Modified By  : Matthieu Petiteau <mpetiteau.pro@gmail.com>
"
" Fork from original theme hashpunk by abnt713
" https://github.com/abnt713/vim-hashpunk

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'hashpunk-sw-sweet'
set background=dark

" Dark Meadow Legacy
let s:clear           =  ['NONE', 'NONE'   ]
let s:DarkMagenta     =  ['90'  , '#870087']
let s:Purple4         =  ['55'  , '#5f00af']
let s:SkyBlue1        =  ['117' , '#87afff']
let s:Magenta2        =  ['165' , '#d700ff']
let s:MediumOrchid1   =  ['207' , '#ff5faf']

" Hashpunk-green
let s:DeepSkyBlue3    =  ['31'  , '#0087af']

let s:PaleGreen1      =  ['156' , '#afff87']
let s:RadicalRed2     =  ['198' , '#fe0040']

let s:Grey0           =  ['16'  , '#000000']
let s:Grey7           =  ['233' , '#121212']
let s:Grey15          =  ['235' , '#262626']
let s:Grey19          =  ['236' , '#303030']
let s:Grey30          =  ['239' , '#4e4e4e']
let s:Grey42          =  ['242' , '#6c6c6c']
let s:Grey54          =  ['245' , '#505050']
let s:Grey66          =  ['248' , '#a8a8a8']
let s:Grey74          =  ['250' , '#bcbcbc']
let s:Grey82          =  ['252' , '#d0d0d0']
let s:Grey93          =  ['255' , '#eeeeee']

" Text style
let s:italic      =   'italic'
let s:bold        =   'bold'
let s:underline   =   'underline'
let s:none        =   'NONE'

" Helper function to set up highlight executions
function! s:highlight(group, fg, bg, style)
  exec  "highlight "  . a:group
    \ . " ctermfg="   . a:fg[0]
    \ . " ctermbg="   . a:bg[0]
    \ . " cterm="     . a:style
    \ . " guifg="     . a:fg[1]
    \ . " guibg="     . a:bg[1]
    \ . " gui="       . a:style
endfunction

" Syntax highlighting groups
"
" For reference on what each group does, please refer to this:
" vimdoc.sourceforge.net/htmldoc/syntax.html

call s:highlight('Comment', s:Grey30, s:clear, s:italic)
call s:highlight('Constant', s:PaleGreen1, s:clear, s:none)
call s:highlight('String', s:Grey42, s:clear, s:none)
call s:highlight('Character', s:Grey93, s:clear, s:none)
call s:highlight('Number', s:RadicalRed2, s:clear, s:none)
call s:highlight('Boolean', s:RadicalRed2, s:clear, s:none)
call s:highlight('Float', s:RadicalRed2, s:clear, s:none)

call s:highlight('Identifier', s:PaleGreen1, s:clear, s:none)
call s:highlight('Function', s:PaleGreen1, s:clear, s:none)

call s:highlight('Statement', s:PaleGreen1, s:clear, s:bold)
call s:highlight('Conditional', s:PaleGreen1, s:clear, s:bold)
call s:highlight('Repeat', s:PaleGreen1, s:clear, s:bold)
call s:highlight('Label', s:PaleGreen1, s:clear, s:bold)
call s:highlight('Operator', s:PaleGreen1, s:clear, s:none)
call s:highlight('Keyword', s:PaleGreen1, s:clear, s:none)
call s:highlight('Exception', s:PaleGreen1, s:clear, s:italic)

call s:highlight('PreProc', s:Grey54, s:clear, s:italic)
call s:highlight('Include', s:PaleGreen1, s:clear, s:italic)
call s:highlight('Define', s:Grey66, s:clear, s:italic)
call s:highlight('Macro', s:Grey66, s:clear, s:italic)
call s:highlight('PreCondit', s:PaleGreen1, s:clear, s:italic)

call s:highlight('Type', s:PaleGreen1, s:clear, s:bold)
call s:highlight('StorageClass', s:PaleGreen1, s:clear, s:bold)
call s:highlight('Structure', s:PaleGreen1, s:clear, s:bold)
call s:highlight('Typedef', s:PaleGreen1, s:clear, s:bold)

call s:highlight('Special', s:Grey66, s:clear, s:none)
call s:highlight('SpecialChar', s:PaleGreen1, s:clear, s:none)
call s:highlight('Delimiter', s:PaleGreen1, s:clear, s:none)
call s:highlight('SpecialComment', s:Grey54, s:clear, s:none)
call s:highlight('Debug', s:PaleGreen1, s:clear, s:none)
call s:highlight('Underlined', s:Grey54, s:clear, s:underline)
call s:highlight('Error', s:PaleGreen1, s:clear, s:underline)
call s:highlight('Todo', s:PaleGreen1, s:clear, s:none)

call s:highlight('Directory', s:Grey93, s:clear, s:bold)
call s:highlight('CursorLine', s:PaleGreen1, s:clear, s:bold)
call s:highlight('MatchParen', s:Grey0, s:PaleGreen1, s:none)
call s:highlight('ColorColumn', s:PaleGreen1, s:Grey15, s:none)


" Interface highlighting
call s:highlight('Normal', s:Grey74, s:Grey7, s:none)
call s:highlight('Visual', s:clear, s:Grey0, s:none)
call s:highlight('Cursor', s:clear, s:Grey0, s:none)
call s:highlight('iCursor', s:clear, s:Grey0, s:none)
call s:highlight('LineNr', s:Grey66, s:clear, s:none)
call s:highlight('NonText', s:Grey66, s:clear, s:none)
call s:highlight('CursorLineNr', s:Grey0, s:Grey7, s:none)
call s:highlight('VertSplit', s:Grey15, s:clear, s:none)


" Git Gutter
call s:highlight('GitGutterAdd', s:Grey93, s:clear, s:none)
call s:highlight('GitGutterChange', s:Grey93, s:clear, s:none)
call s:highlight('GitGutterDelete', s:Grey93, s:clear, s:none)
call s:highlight('GitGutterChangeDelete', s:Grey93, s:clear, s:none)
call s:highlight('SignColumn', s:Grey93, s:clear, s:none)


" Java syntax highlighting
call s:highlight('javaParen', s:PaleGreen1, s:clear, s:none)
call s:highlight('javaCommentTitle', s:Grey42, s:clear, s:none)
call s:highlight('javaDocParam', s:PaleGreen1, s:clear, s:none)
call s:highlight('javaDocTags', s:Grey54, s:clear, s:none)
call s:highlight('javaScopeDecl', s:Grey54, s:clear, s:none)
call s:highlight('javaStorageClass', s:PaleGreen1, s:clear, s:none)


" Python syntax highlighting
call s:highlight('pythonFunction', s:Grey93, s:clear, s:none)
call s:highlight('pythonBuiltin', s:Grey54, s:clear, s:italic)


" Vimscript syntax highlighting
call s:highlight('vimOption', s:Grey93, s:clear, s:none)


" NERDTree
call s:highlight('NERDTreeClosable', s:PaleGreen1, s:clear, s:none)
call s:highlight('NERDTreeOpenable', s:PaleGreen1, s:clear, s:none)

" *NOTE*
"
" The following groups are plug specific and would require the following plugs
" from github in order for the groups to work.
"

" Elm syntax highlighting
" Requires plug: ElmCast/Magenta2-vim
"
call s:highlight('Magenta2TypeDef', s:MediumOrchid1, s:clear, s:bold)
call s:highlight('Magenta2Alias', s:Grey66, s:clear, s:none)
call s:highlight('Magenta2TopLevelDecl', s:SkyBlue1, s:clear, s:bold)
call s:highlight('Magenta2Braces', s:DarkMagenta, s:clear, s:none)


" Elixir syntax highlighting
" Requires plug: elixir-editors/vim-elixir
"
call s:highlight('elixirAlias', s:Magenta2, s:clear, s:italic)
call s:highlight('elixirDefine', s:MediumOrchid1, s:clear, s:none)
call s:highlight('elixirBlockDefinition', s:MediumOrchid1, s:clear, s:none)
call s:highlight('elixirFunctionDeclaration', s:Grey66, s:clear, s:none)


" GOLang syntax highlighting
" Requires plug: fatih/vim-go
"
call s:highlight('goPackage', s:Magenta2, s:clear, s:italic)
call s:highlight('goImport', s:Purple4, s:clear, s:italic)


" Rust syntax highlighting
" Requires plug: rust-lang/rust.vim
"
call s:highlight('rustMacro', s:MediumOrchid1, s:clear, s:none)
