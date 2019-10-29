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
if &compatible " use Vim settings, rather than Vi
  set nocompatible
endif
filetype plugin indent on " enable file type detection and plugin and indent loading
syntax enable " enable syntax highlighting

call plug#begin('~/.local/share/nvim/plugged')
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'} " vim client for LSP
Plug 'ncm2/ncm2' " completion engine
Plug 'ncm2/ncm2-ultisnips' " complete snippets
Plug 'roxma/nvim-yarp' " ncm2 dependency
Plug 'sirver/ultisnips' " create and use snippets
Plug 'honza/vim-snippets' " community decided snippets
call plug#end()

" LanguageClient-neovim
let g:LanguageClient_serverCommands = {
  \ 'python': ['pyls'],
  \ }
let g:LanguageClient_diagnosticsEnable = 0

" ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent> <expr> <CR> pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>"

" ultisnips
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0
"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 
