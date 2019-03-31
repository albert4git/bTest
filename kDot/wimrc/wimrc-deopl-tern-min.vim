syntax on
set nu
set relativenumber
set ts=4
set shiftwidth=4

"packages
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'The-NERD-tree'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'sophacles/vim-processing'
Plug 'majutsushi/tagbar'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'Shougo/neco-syntax'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'Shougo/neoinclude.vim'
Plug 'wokalski/autocomplete-flow'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'mhartington/nvim-typescript'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-zsh'

call plug#end()

"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
set completeopt-=preview
inoremap <expr><C-k> pumvisible()? "\<C-p>":"\<C-k>"
inoremap <expr><C-j> pumvisible()? "\<C-n>":"\<C-j>"

"deoplete-clang
let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/Library/Developer/CommandLineTools/usr/lib/clang'
let g:deoplete#sources#clang#sort_algo = 'priority'

"deoplete-go
let g:deoplete#sources#go#gocode_binary = '/Users/sohnryang/go/bin/gocode'

"deoplete-ternjs
let g:deoplete#sources#ternjs#tern_bin = '/usr/local/bin/tern'
let g:deoplete#sources#ternjs#timeout = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#case_insensitive = 1

"neosnippet
let g:neosnippet#enable_completed_snippet = 1

"ultisnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

"colorscheme
set background=dark
colorscheme solarized

"NERDTree
let NERDTreeShowHidden = 1

"vim-autoformat settings
noremap <F3> :Autoformat<CR>

"airline
let g:airline_theme = 'solarized'

"syntastic settings
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['eslint']
noremap <F4> :Errors<CR>

"syntastic settings
let g:syntastic_check_on_open = 1
noremap <F4> :Errors<CR>

"zsh-theme filetype
au BufNewFile,BufRead *.zsh-theme setlocal ft=zsh

"gist-vim settings
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1





" Set bin if you have many instalations
"let g:deoplete#sources#ternjs#tern_bin = '/path/to/tern_bin'
"let g:deoplete#sources#ternjs#timeout = 1

"" Whether to include the types of the completions in the result data. Default: 0
"let g:deoplete#sources#ternjs#types = 1

"" Whether to include the distance (in scopes for variables, in prototypes for 
"" properties) between the completions and the origin position in the result 
"" data. Default: 0
"let g:deoplete#sources#ternjs#depths = 1

"" Whether to include documentation strings (if found) in the result data.
"" Default: 0
"let g:deoplete#sources#ternjs#docs = 1

"" When on, only completions that match the current word at the given point will
"" be returned. Turn this off to get all results, so that you can filter on the 
"" client side. Default: 1
"let g:deoplete#sources#ternjs#filter = 0

"" Whether to use a case-insensitive compare between the current word and 
"" potential completions. Default 0
"let g:deoplete#sources#ternjs#case_insensitive = 1

"" When completing a property and no completions are found, Tern will use some 
"" heuristics to try and return some properties anyway. Set this to 0 to 
"" turn that off. Default: 1
"let g:deoplete#sources#ternjs#guess = 0

"" Determines whether the result set will be sorted. Default: 1
"let g:deoplete#sources#ternjs#sort = 0

"" When disabled, only the text before the given position is considered part of 
"" the word. When enabled (the default), the whole variable name that the cursor
"" is on will be included. Default: 1
"let g:deoplete#sources#ternjs#expand_word_forward = 0

"" Whether to ignore the properties of Object.prototype unless they have been 
"" spelled out by at least two characters. Default: 1
"let g:deoplete#sources#ternjs#omit_object_prototype = 0

"" Whether to include JavaScript keywords when completing something that is not 
"" a property. Default: 0
"let g:deoplete#sources#ternjs#include_keywords = 1

"" If completions should be returned when inside a literal. Default: 1
"let g:deoplete#sources#ternjs#in_literal = 0


""Add extra filetypes
"let g:deoplete#sources#ternjs#filetypes = [
"                \ 'jsx',
"                \ 'javascript.jsx',
"                \ 'vue',
"                \ '...'
"                \ ]
