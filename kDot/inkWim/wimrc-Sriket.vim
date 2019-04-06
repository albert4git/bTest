" auto install plug if not found
if empty(glob('$HOME/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

nmap <Leader>Vu :PlugUpdate<CR>
nmap <Leader>Vi :PlugUpgrade<CR>
nmap <Leader>Vc :PlugClean<CR>
nmap <Leader>Vs :PlugStatus<CR>
let g:plug_retries = 0
let g:plug_window = "tabnew"

call plug#begin('~/.vim/plugged')

    " usability
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'
    nmap Sl yss
    nmap Sw ysiw
    nmap SW ysiW
    nmap Sap ysap
    nmap Sip ysip

Plug 'justinmk/vim-sneak'
    nmap s <Plug>Sneak_s
    xmap s <Plug>Sneak_s
    let g:sneak#streak = 0
    let g:sneak#prompt = '/'
    let g:sneak#use_ic_scs = 1
    let g:sneak#absolute_dir = 0
    let g:sneak#textobject_z = 1
    hi link SneakPluginTarget Search
    hi link SneakPluginScope Comment

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
    nmap <Leader>f :FZF -m<CR>
    nmap <Leader>F :FZF -m ~/<CR>
    nmap <Leader>l :Buffers<CR>

Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'
    let g:oblique#clear_highlight = 1
    let g:oblique#incsearch_highlight_all = 1
    let g:oblique#prefix = ""

Plug 'junegunn/vim-easy-align'
    nmap ga <Plug>(EasyAlign)
    xmap ga <Plug>(EasyAlign)
    let g:easy_align_delimiters = {
    \ '>': { 'pattern': '>>\|=>\|>' },
    \ '/': {
    \     'pattern':         '//\+\|/\*\|\*/',
    \     'delimiter_align': 'l',
    \     'ignore_groups':   ['!Comment'] },
    \ ']': {
    \     'pattern':       '[[\]]',
    \     'left_margin':   0,
    \     'right_margin':  0,
    \     'stick_to_left': 0
    \   },
    \ ')': {
    \     'pattern':       '[()]',
    \     'left_margin':   0,
    \     'right_margin':  0,
    \     'stick_to_left': 0
    \   },
    \ 'd': {
    \     'pattern':      ' \(\S\+\s*[;=]\)\@=',
    \     'left_margin':  0,
    \     'right_margin': 0
    \   },
    \ ';': {
    \     'pattern':      ';',
    \     'left_margin':  1,
    \     'right_margin': 0
    \   }
\ }

    " build checkers
Plug 'benekastah/neomake'
    let g:neomake_open_list = 1
    let g:neomake_place_signs = 1
    let g:neomake_error_sign = {
        \ 'text': 'E>',
        \ 'texthl': 'Error',
    \ }
    let g:neomake_warning_sign = {
        \ 'text': 'W>',
        \ 'texthl': 'TermCursorNC',
\ }

Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'Raimondi/delimitMate'
Plug 'danro/rename.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
"Plug 'itchyny/calendar.vim'
Plug 'vhdirk/vim-cmake'
Plug 'vim-scripts/listmaps.vim'
Plug 'scrooloose/syntastic'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" Plugins for writing
Plug 'junegunn/goyo.vim'
"Plug 'danielbmarques/vim-ditto'
Plug 'junegunn/limelight.vim'
"Plug 'reedes/vim-wordy'
autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif
call plug#end()

set nocompatible              " be iMproved, required
filetype off                  " required
set number
set noerrorbells
filetype plugin indent on
set list
set listchars=tab:\┊\ ,eol:¬,trail:·,extends:→,precedes:←
hi SpecialKey ctermbg=5 ctermfg=8

" Save cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" modify selected text using combining diacritics
" usage: select text and :{Over,Under,DoubleUnder}line or :Strikethrough.
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

" Settings for writing
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" YCM
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_tex_checkers=['']
let g:syntastic_check_on_open = 0

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

"ultisnips
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''


let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info


let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 0


let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-c>'

nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_python_exec = '/usr/bin/python2'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = "clang_check"

" vim-startify
let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG'
      \ ]

let g:tmux_navigator_save_on_switch = 1

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vim-gitgutter
set updatetime=250

let g:instant_markdown_autostart = 0

nmap <C-o> :NERDTreeToggle<cr>

map q: :q

augroup reload_vimrc
    autocmd!
    autocmd bufwritepost ~/.vimrc nested source ~/.vimrc
augroup END

" NERDTree
let NERDTreeShowHidden=0
let NERDChristmasTree=1
let NERDTreeShowBookmarks=0
let NERDTreeMinimalUI=0
let NERDTreeIgnore=['\.png$', '\.jpg$', '\.gif$', '\.tmp$', '\.swp$', '\.a$', '\.gls$', '\.glg$', '\.alg$', '\.acr$', '\.xdy$', '\.aux$', '\.pdf$', '\.glo$', '\.fls$', '\.acn$']
let NERDTreeStatusline= '-1'
let g:NERDTreeWinSize = '40'

" Close vim if the only window left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CTRLP
let g:ctrlp_custom_ignore = {
 \ 'dir':  '\v[\/]\.(git|hg|svn)$',
 \ 'file': '\v\.(png|jpg|gif|tmp|swp|a|gls|glg|alg|acr|xdy|aux|pdf|glo|fls|acn|toc|out|log|fdb_latexmk|latexmain|run.xml|blg|bbl|bcf)$',
 \ }

let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ 'component': {
    \   'readonly': '%{&readonly?"RO":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \ }
    \ }

let g:tex_flavor = 'latex'
let g:vimtex_fold_enabled = 1
let g:vimtex_view_method = 'zathura'
let g:vimtex_latexmk_options = '-shell-escape -xelatex -verbose -file-line-error -interaction=nonstopmode'

syntax enable
colorscheme sourcerer

set mouse=a
set modeline " Scary!

" General: {
    set exrc             " Source .vimrc from working directory
    set secure           " But don't let it execute system commands

    set autoread         " Reload file when changed externally
    set nobackup         " We have version control
    set noswapfile       " Text files don't use _that_ much memory

    set undofile         " Persistent undos?
    set undodir=~/.vim/undodir

    " Yes, good idea
    let mapleader   = " "
    let localleader = " "
    let g:mapleader = " "

    set history=1000
"}

" Formatting: {
    set expandtab        " Expand tab characters to space characters
    set shiftwidth=4     " One tab is 4 spaces

    " Round up to the nearest tab
    set shiftround
    set tabstop=4
    set softtabstop=4    " Easy removal of an indention level

    set autoindent       " Automatically copy the previous indent level
    set lazyredraw       " Good performance boost when executing macros
    set backspace=indent,eol,start
"}

" Searching: {
    set ignorecase       " Search is not case sensitive
    set smartcase        " Will override some ignorecase properties, when using caps it will do a special search.
    set incsearch        " Search hits stepping
    set hlsearch         " Clear current seatch highlight upon another search
"}

" UI: {
    set ffs=unix,dos,mac " Prioritize Unix as the standard file type
    "set encoding=utf-8
    set scrolloff=7      " The screen will only scroll when the cursor is 7 characters from the top/bottom
    set wildmenu         " Enable autocomplete menu when in command mode (':')
    set hidden           " Abandon buffer when closed

    set ruler            " Always show current cursor position
    set cursorline       " Easier cursor spotting


    set showmatch        " Will highlight matching brackets
    set mat=2            " How long the the highlight will last

    "set ttyfast          " For faster computers?

    " Folding: {
        set foldmethod=syntax   " fold based on indent
        set foldnestmax=10      " deepest fold is 10 levels
        set nofoldenable        " don't fold by default
        set foldlevel=1
    "}
"}

" Mapping: {
    let mapleader      = " "
    let maplocalleader = " "
    nmap j gj
    nmap k gk

    nnoremap  <Leader>w :w<CR>
    nnoremap  <Leader>q :q<CR>
    nnoremap  <Leader>Q :wq<CR>
    nnoremap  <silent> <leader><cr> :noh<cr>

    " Window resizing
    nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
    nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

    " Easier window navigation
    map <C-M-j> <C-W>j<C-W>_
    map <C-M-k> <C-W>k<C-W>_

    nmap <C-j> <C-w>j
    nmap <C-k> <C-w>k
    nmap <C-l> <C-w>l
    nmap <C-h> <C-w>h

    " CMake and Make compilation
    map <Leader>c :CMake<CR>
    map <Leader>C :CMakeClean<CR>
    map <Leader>mm :make <Bar> copen<CR>
"}

" NERDTree git plugin symbols
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" always show statusline
set laststatus=2

" CTRLP
let g:ctrlp_follow_symlinks = 1 " Follow, but ignore dupes

" LaTeX-Box
"let g:LatexBox_latexmk_async = 1
"let g:LatexBox_latexmk_preview_continuously = 1
"let g:LatexBox_quickfix = 2
"let g:LatexBox_viewer   = "zathura"
"let g:LatexBox_latexmk_options = "--xelatex --shell-escape"

"LaTeX-Box folding
"let g:LatexBox_Folding       = 1
"let g:LatexBox_fold_preamble = 0

" Copy & Paste to system clipboard with <Space>p and <Space>y
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d

" paste from the clipboard
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" same as above, but for normal mode
nnoremap <Leader>d "+d
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" .NFO specific
au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
au BufReadPost *.nfo call RestoreFileEncodings()

" Always start at 1:1 when writing git commits
autocmd BufEnter *
    \ if &filetype == 'gitcommit' |
    \   call setpos('.', [0, 1, 1]) |
    \ endif

" Traverse lines when wrapped; very comfy!

" 'set wrap lbr' in all .tex files
autocmd BufNewFile,BufReadPost *.tex set wrap lbr
set wrap lbr

" Open new slip panes to right and bottom, which feels more natural
set splitbelow
set splitright

" gvim options - remove the toolbar(s)
set guioptions-=L
set guioptions-=T
set guioptions-=r
set guioptions-=m
