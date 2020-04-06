
set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start
set guifont=Monospace\ 12
map K i<Enter><Esc>
set mouse=a

" J join K krack

" ----------------------PLUGINS START -----------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'https://github.com/jpo/vim-railscasts-theme.git'
Plugin 'chriskempson/base16-vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mkarmona/colorsbox'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/zoom.vim'
Plugin 'xolox/vim-misc'
Plugin 'pgdouyon/vim-evanesco'
Plugin 'sjl/gundo.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'lambdalisue/vim-django-support'
Plugin 'gabesoft/vim-ags'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'Nopik/vim-nerdtree-direnter'


" --------------------- PLUGINS END --------------

call vundle#end()            " required
filetype plugin indent on    " required
"

" Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

set tabstop=4 
set shiftwidth=4

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" JEDI
let g:jedi#popup_select_first = 1
let g:jedi#show_call_signatures = "1"


"NERD TREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
map <silent> <C-n> :NERDTreeFocus<CR>
let g:NERDTreeMapOpenInTab='<Enter>'
let g:nerdtree_tabs_open_on_console_startup=1

"TABS
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-Right> :tabn<CR>
map  <C-Left> :tabp<CR>

"Django
let g:django_support#auto_activate_on_filetype = 0

set ignorecase
set smartcase
set incsearch

let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" Scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>



set t_Co=256
set background=dark
colorscheme colorsbox-faff
syntax enable
