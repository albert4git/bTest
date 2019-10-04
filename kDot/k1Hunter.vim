"--------------------------------------------------------------------------------- 
2html 	let g:loaded_2html_plugin = 1 	:h 2html
getscript 	let g:loaded_getscriptPlugin = 1 	:h pi_getscript
gzip 	let g:loaded_gzip = 1 	:h pi_gzip
logipat 	let g:loaded_logipat = 1 	:h pi_logipat
matchparen 	let g:loaded_matchparen = 1 	:h pi_paren
netrw 	let g:loaded_netrwPlugin = 1 	:h pi_netrw
rrhelper 	let g:loaded_rrhelper = 1 	:e $VIMRUNTIME/plugin/rrhelper.vim
spellfile 	let g:loaded_spellfile_plugin = 1 	:h spellfile.vim
tar 	let g:loaded_tarPlugin = 1 	:h pi_tar
vimball 	let g:loaded_vimballPlugin = 1 	:h pi_vimball
zip 	let g:loaded_zipPlugin = 1 	:h pi_zip

"--------------------------------------------------------------------------------- 
autocmd ColorScheme desert highlight StatusLine ctermbg=darkgray cterm=NONE guibg=darkgray gui=NONE
"--------------------------------------------------------------------------------- 
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags
"--------------------------------------------------------------------------------- 
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost ~/.Xdefaults call system('xrdb ~/.Xdefaults')
"--------------------------------------------------------------------------------- 
command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')
"--------------------------------------------------------------------------------- 
" create directory if needed
if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files')
endif

" backup files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
" swap files
set directory   =$HOME/.vim/files/swap//
set updatecount =100
" undo files
set undofile
set undodir     =$HOME/.vim/files/undo/
" viminfo files
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
"--------------------------------------------------------------------------------- 
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

Plug 'tpope/vim-sensible'
Plug 'rstacruz/vim-opinion'

Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}



call plug#end()
"--------------------------------------------------------------------------------- 

:CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css

" === coc.nvim === "
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" Use vim-plug to manage your plugins:
" https://github.com/junegunn/vim-plug

"--------------------------------------------------------------------------------- 
call plug#begin('~/.vim/vendor')

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting


CocInstall coc-prettier

Setup Prettier command in your init.vim or .vimrc

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"--------------------------------------------------------------------------------- 
call plug#end()

{
  // Require .prettierrc
  "prettier.requireConfig": true,

  // Tslint on save
  "tslint.enable": true,
  "tslint.autoFixOnSave": true,

  // Run prettier (and others)
  "coc.preferences.formatOnSaveFiletypes": [
    "css",
    "markdown",
    "Markdown",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  ]
}

"--------------------------------------------------------------------------------- 

{
  "suggest.echodocSupport": true,
  "suggest.maxCompleteItemCount": 20,
  "coc.preferences.formatOnSaveFiletypes": ["javascript", "typescript", "typescriptreact", "json", "javascriptreact", "typescript.tsx"],
  "eslint.filetypes": ["javascript", "typescript", "typescriptreact", "javascriptreact", "typescript.tsx"],
  "diagnostic.errorSign": "•",
  "diagnostic.warningSign": "•",
  "diagnostic.infoSign": "•"
}

"--------------------------------------------------------------------------------- 
{
  // Require .prettierrc
  "prettier.requireConfig": true,

  // Tslint on save
  "tslint.enable": true,
  "tslint.autoFixOnSave": true,

  // Run prettier (and others)
  "coc.preferences.formatOnSaveFiletypes": [
    "css",
    "markdown",
    "markdown.mdx",
    "Markdown",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  ],

  "eslint.filetypes": [
    "javascript",
    "typescript",
    "typescriptreact",
    "javascriptreact"
  ],

  // Gutter symbols
  "diagnostic.errorSign": "▬",
  "diagnostic.warningSign": "▪",
  "diagnostic.infoSign": "▪",
  "diagnostic.hintSign": "⋅",

  // When true, check the current line, not the current position.
  "diagnostic.checkCurrentLine": true,

  // Hmm?
  "suggest.maxPreviewWidth": 80,
  "suggest.enablePreview": true,
  "suggest.echodocSupport": true,
  "suggest.maxCompleteItemCount": 20
}




"--------------------------------------------------------------------------------- 
set t_Co=256
set nocompatible
let g:mapleader=","
syntax on
filetype plugin indent on

" https://github.com/neovim/neovim/wiki/FAQ#nvim-shows-weird-symbols-2-q-when-changing-modes
if $TMUX != '' | set guicursor= | endif

call plug#begin('~/.vim/vendor')

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'flazz/vim-colorschemes'

if $VIM_MINIMAL != '' || $GIT_AUTHOR_DATE != ''
  call plug#end()
  finish
endif

Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'rstacruz/vim-opinion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'

if !exists('g:gui_oni')
  Plug 'scrooloose/nerdtree'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'mhinz/vim-signify'
  Plug 'rstacruz/vim-hyperstyle'
  Plug 'rstacruz/vim-xtract'
  Plug 'thinca/vim-visualstar'
endif

Plug 'bagrat/vim-buffet'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'
Plug 'michaeljsmith/vim-indent-object'
Plug 'rstacruz/vim-closer'

" Plug 'Shougo/denite.nvim' " fuzzy finding?
" Plug 'Shougo/echodoc.vim' " show documentation in cmd line
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'lambdalisue/suda.vim'

let g:polyglot_disabled = ['markdown', 'md', 'liquid']
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails', { 'for': 'ruby' }

call plug#end()
" vim:foldmethod=marker
