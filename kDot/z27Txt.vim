autocmd FileType * 
      \if &omnifunc != '' |
      \call SuperTabChain(&omnifunc, "<c-p>") |
      \call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
      \endif

"--------------------------------------------------------------------------------- 
let g:SuperTabDefaultCompletionType = 'context'
autocmd FileType *
  \ if &omnifunc != '' |
  \   call SuperTabChain(&omnifunc, "<c-p>") |
  \ endif
"--------------------------------------------------------------------------------- 
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&omnifunc:<c-x><c-o>"]
autocmd FileType * 
      \if &omnifunc != '' |
      \call SuperTabChain(&omnifunc, "<c-p>") |
      \call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
      \endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Plugin: Supertab                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" supertab (completefunc) + latex-box (omnifunc)
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&omnifunc:<c-x><c-o>"]
" Problem with load order (vimrc is evaluated before latex-box setting of omnifunc)
" \ verbose set omnifunc? | " is empty
" added this autocommand to after/ftplugin/tex.vim
" :do FileType solves also the problem
autocmd FileType * 
      \ if &omnifunc != '' |
      \ call SuperTabChain(&omnifunc, "<c-p>") |
      \ call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
      \ endif

"--------------------------------------------------------------------------------- 

let g:virtualenv_directory="/Users/Kit/Development/virtualenv"

Then in ~/.vim/ftplugin/python/virtualenv.vim I have these:

py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
    print "virtualenv in os.environ!"
EOF
VirtualEnvActivate my-virtualenv-python-2.7

"--------------------------------------------------------------------------------- 

function! s:SetHighlightings()
    highlight Pmenu ctermbg=Gray ctermfg=White
    highlight PmenuSel ctermbg=Black ctermfg=White
    highlight Pmenu guibg=gray10 guifg=LightSteelBlue4
    highlight PmenuSel guibg=gray10 guifg=LightSteelBlue1
endfunction
call s:SetHighlightings()
autocmd ColorScheme * call <SID>SetHighlightings()

"--------------------------------------------------------------------------------- 
highlight Comment ctermbg=DarkGray
highlight Constant ctermbg=Blue
highlight Normal ctermbg=Black
highlight NonText ctermbg=Black
highlight Special ctermbg=DarkMagenta
highlight Cursor ctermbg=Green
"--------------------------------------------------------------------------------- 
highlight Comment cterm=underline ctermbg=Blue ctermfg=White
"--------------------------------------------------------------------------------- 
NR-16   NR-8    COLOR NAME 
0       0       Black
1       4       DarkBlue
2       2       DarkGreen
3       6       DarkCyan
4       1       DarkRed
5       5       DarkMagenta
6       3       Brown, DarkYellow
7       7       LightGray, LightGrey, Gray, Grey
8       0*      DarkGray, DarkGrey
9       4*      Blue, LightBlue
10      2*      Green, LightGreen
11      6*      Cyan, LightCyan
12      1*      Red, LightRed
13      5*      Magenta, LightMagenta
14      3*      Yellow, LightYellow
15      7*      White
"--------------------------------------------------------------------------------- 
Let's say, for example, you want to remove trailing whitespace from all changed lines:

:Glines s/\s\+$//
"--------------------------------------------------------------------------------- 
highlight link diffAdded DiffAdd
highlight link diffChanged DiffChange
highlight link diffRemoved DiffDelete
"--------------------------------------------------------------------------------- 
:function! ReverseBackground()
: let Mysyn=&syntax
: if &bg=="light"
: se bg=dark
: else
: se bg=light
: endif
: syn on
: exe "set syntax=" . Mysyn
": echo "now syntax is "&syntax
:endfunction
:command! Invbg call ReverseBackground()
:noremap <F11> :Invbg<CR>
"--------------------------------------------------------------------------------- 
:function! ReverseBackground()
: let Mysyn=&syntax
: if &bg=="light"
: se bg=dark
: highlight Normal guibg=black guifg=white
: else
: se bg=light
: highlight Normal guibg=white guifg=black
: endif
: syn on
: exe "set syntax=" . Mysyn
": echo "now syntax is "&syntax
:endfunction
:command! Invbg call ReverseBackground()
:noremap <F11> :Invbg<CR>
"--------------------------------------------------------------------------------- 

highlight ShowMatches guibg=darkgrey guifg=white
au! Cursorhold * exe 'match ShowMatches /\v%(%#\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(\n|[^\{\}])*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(%(\{%(\n|[^\{\}])*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*\})|%(\n|[^\{\}]))*%#\})/'
set ut=30
"--------------------------------------------------------------------------------- 
" Identify the syntax highlighting group used at the cursor

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"--------------------------------------------------------------------------------- 
let g:ags_agexe = 'rg'

let g:ags_agargs = {
  \ '--column'         : ['', ''],
  \ '--line-number'    : ['', ''],
  \ '--context'        : ['g:ags_agcontext', '-C'],
  \ '--max-count'      : ['g:ags_agmaxcount', ''],
  \ '--heading'        : ['',''],
  \ '--smart-case'     : ['','-S'],
  \ '--color'          : ['always',''],
  \ '--colors'         : [['match:fg:green', 'match:bg:black', 'match:style:nobold', 'path:fg:red', 'path:style:bold', 'line:fg:black', 'line:style:bold'] ,''],
  \ }
"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 
