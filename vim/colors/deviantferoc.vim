"s Vim colorscheme file
" Maintainer:   Adrian Nagle <vim@naglenet.org>
" Last Change:  2001-09-25 07:48:15 Mountain Daylight Time
" URL:          http://www.naglenet.org/vim/syntax/adrian.vim
" MAIN URL:     http://www.naglenet.org/vim

" This is my custom syntax file to override the defaults provided with Vim.
" This file should be located in $HOME/vimfiles/colors.

" This file should automatically be sourced by $RUNTIMEPATH.

" NOTE(S):
" *(1)
" The color definitions assumes and is intended for a black or dark
" background.

" *(2)
" This file is specifically in Unix style EOL format so that I can simply
" copy this file between Windows and Unix systems.  VIM can source files in
" with the UNIX EOL format (only <NL> instead of <CR><NR> for DOS) in any
" operating system if the 'fileformats' is not empty and there is no <CR>
" just before the <NL> on the first line.  See ':help :source_crnl' and
" ':help fileformats'.
"
" *(3)
" Move this file to adrian.vim for vim6.0aw.
"



hi clear
set background=dark
if exists("syntax_on") 
	syntax reset
endif
let g:colors_name = "deviantferoc"
"hi Normal ctermbg=233
"Set colors
"hi Normal ctermbg=233
"Set colors
"hi CursorLine ctermbg=235	cterm=none
"hi CursorLineNr ctermfg=252 ctermbg=234
"Console colors
hi CursorLine   ctermbg=0   cterm=none
hi Visual       ctermbg=237 ctermfg=250 cterm=none
hi CursorLineNr ctermfg=254   ctermbg=6
hi LineNr       ctermfg=247 ctermbg=8
hi VertSplit    ctermfg=0   ctermbg=8 cterm=none
hi Specialkey   ctermfg=8   ctermbg=0

highlight Comment    cterm=none      ctermfg=DarkGrey guifg=#d1ddff
highlight Constant   cterm=bold      ctermfg=Yellow   guifg=#ffa0a0
"highlight Number   	 term=underline ctermfg=DarkGrey                     guifg=Yellow
highlight Identifier ctermfg=12       cterm=bold guifg=#40ffff
highlight Statement  ctermfg=10  gui=bold  guifg=#ffff60
highlight Keyword    ctermfg=14
highlight Conditional ctermfg=9
highlight Number     ctermfg=13
highlight PreProc    ctermfg=12      guifg=#ff4500
highlight Type       ctermfg=9       cterm=italic gui=bold  guifg=#7d96ff
highlight Ignore     ctermfg=0   guifg=bg
highlight Error      ctermfg=15      ctermbg=8 guifg=White guibg=Red
highlight Todo       ctermfg=15      ctermbg=8 guifg=Blue  guibg=Yellow

" Change the highlight of search matches (for use with :set hls).
highlight Search                    ctermfg=255      ctermbg=239  guifg=Black    guibg=Yellow  

" Change the highlight of visual highlight.

highlight Float          ctermfg=9  guifg=#88AAEE
highlight Exception      ctermfg=10     ctermbg=234   guifg=Red      guibg=White
highlight Function       ctermfg=14
highlight Typedef        ctermfg=9  ctermbg=8   gui=italic       guifg=White guibg=Blue
highlight SpecialChar    ctermfg=12 ctermbg=8   guifg=Black    guibg=White
highlight Delimiter      ctermfg=15 ctermbg=8 guifg=White    guibg=Black
highlight SpecialComment ctermfg=11    ctermbg=8     guifg=Black    guibg=Green

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
highlight link Special      Type
highlight link String       Constant
highlight link Character    Constant
highlight link Boolean      Statement
highlight link Repeat       Conditional
highlight link Label        Type
highlight link Operator     Type
highlight link Include      PreProc
highlight link Define       PreProc
highlight link Macro        PreProc
highlight link PreCondit    PreProc
highlight link StorageClass Type
highlight link Structure    Type
highlight link Tag          Special
highlight link Debug        Special
highlight link Typedef         Type

"highlight link SpecialChar     Special
"highlight link Delimiter       Special
"highlight link SpecialComment  Special
"highlight link Exception       Type
