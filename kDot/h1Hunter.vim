"==================================================================================================
" File: h1Hunter.vim
"==================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Last Modified:      Fr 04 Okt 2019 08:05:27  CEST
"==================================================================================================
"==================================================================================================

        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        "----------------------------------------------------------------------------------
        " set runtimepath+=~/vim-amake

        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/.config/nvim/init.vim'
        "----------------------------------------------------------------------------------
        let g:python_host_prog = '/usr/bin/python2'
        let g:python3_host_prog = '/usr/bin/python3'
        "let g:deoplete#sources#jedi#extra_path = $PYTHONPATH
        "let g:python_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim2/bin/python'
        "let g:python3_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim3/bin/python'
        "let g:python3_host_prog=expand('~/anaconda3/bin/python')
        "------------------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        filetype on
        filetype plugin on
        filetype indent on
        "----------------------------------------------------------------------------------
        let maplocalleader=','
        let mapleader=' '
        "----------------------------------------------------------------------------------
        set nocompatible
        set helplang=en,de
        set encoding=UTF-8
        set shell=/bin/bash
        set shell=/bin/zsh
        set tags=.tags;
        set tags+=tags;
        ":set tags=./tags,tags,/home/user/commontags

        "==================================================================================
        "====
                " Set tags option
                set tags=./javascript_tags;/
                set tags+=./python_tags;/
                set tags+=./ruby_tags;/
                set tags+=./go_tags;/
                set tags+=./java_tags;/
                set tags+=./c_tags;/

        "====
        "==================================================================================

       "============================================================================================
        " I want this tip to inspire you. Perhaps you never thought of running a web
        " server from inside your text editor. Does this give you ideas for other
        " processes that you could control remotely?

        " snippet si2nce
        " @since ${0:#:version}

       "============================================================================================
        " The GNU bison parser generator (similar to YACC) generates a couple of
        " different types of errors. They start with the file name, then a colon. If
        " available, the linenumber comes next, followed by a dot (period) and the
        " column number. If appropriate, a dash and then another column number (giving a
        " column range) follows, and then a colon, space, and the error message.

        set errorformat+=%f:%l.%c-%*[0-9]:\ %m
        set errorformat+=%f:%l.%c:\ %m
        set errorformat+=%f:\ %m

        "----------------------------------------------------------------------------------
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
        " set spellfile=~/.config/nvim/spell/en.utf-8.add
        " set spelllang=de,tech_speak
        " 'zg': add, 'zw': remove.
        "----------------------------------------------------------------------------------
        set spelllang=en
        set spelllang=fr
        set spelllang=de
        set spellsuggest=best
        set spelllang=he
        set spelllang=en
        set spell
        set nospell
        "----------------------------------------------------------------------------------
        set makeprg=gcc\ -o\ %<\ % 
        set grepprg=rg\ --vimgrep

        "==================================================================================
        if executable('ag')
                set grepprg=ag\ --nogroup\ --nocolor\ --column\ --ignore-dir\ node_modules\ --ignore-dir\ bower_components
                set grepformat=%f:%l:%c:%m
        endif

        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
        "----------------------------------------------------------------------------------
        augroup vimrc
                autocmd!
        augroup END
        "----------------------------------------------------------------------------------
        "###-Pymode-???
        let g:pymode_python = 'python3'
        "----------------------------------------------------------------------------------
        set background=dark
        syntax on
        syntax enable
        "==================================================================================

"-AAA4-undo-------------------------------------------------------------------------------------------------{{{
        set noswapfile
        set backup                               " enable backups
        set undodir=~/.config/nvim/undoDir/      " undo files
        set backupdir=~/.config/nvim/backUpDir/  " backups
        set directory=~/.config/nvim/swapDir/    " swap files
        "----------------------------------------------------------------------------------
        if !isdirectory(expand(&undodir))
                call mkdir(expand(&undodir), "p")
        endif
        if !isdirectory(expand(&backupdir))
                call mkdir(expand(&backupdir), "p")
        endif
        if !isdirectory(expand(&directory))
                call mkdir(expand(&directory), "p")
        endif
        "----------------------------------------------------------------------------------
        set undofile
        set undoreload=10000
"-4undo-}}}

"-AAA5--PreSetUp-Appearance--Edit--Clipboard--Bell--ExpandTab-Hist--SmartEnter------------------------------{{{
        "-magic--------    
        silent! set wrapscan ignorecase smartcase incsearch hlsearch magic
        "-Appearance--- 
        silent! display=lastline,uhex nowrap wrapmargin=0 guioptions=ce key=
        silent! set noshowmatch  noshowmode cmdheight=1 cmdwinheight=10 
        silent! set noshowcmd ruler rulerformat= laststatus=2 statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c
        silent! set title titlelen=100 titleold= titlestring=%f noicon norightleft showtabline=1
        silent! set cursorline nocursorcolumn colorcolumn= concealcursor=nvc conceallevel=0 norelativenumber
        silent! set list listchars=tab:>\ ,nbsp:_ synmaxcol=800 ambiwidth=double breakindent breakindentopt=
        silent! set nosplitbelow nosplitleft startofline linespace=0 whichwrap=b,s scrolloff=1 sidescroll=0
        silent! set equalalways nowinfixwidth nowinfixheight winminwidth=3 winminheight=3 nowarn noconfirm
        silent! set fillchars=vert:\|,fold:\  eventignore= helplang=en viewoptions=options,cursor virtualedit=
        set nowrap
        "set whichwrap=b,s,h,l,<,>,[,]
        set splitbelow splitright
        set viminfo='20,\"80
        " read/write a .viminfo file...
        "---Editing---------------------------------------------------------------------------------
        silent! set iminsert=0 imsearch=0 nopaste pastetoggle= nogdefault comments& commentstring=#\ %s
        silent! set smartindent autoindent shiftround shiftwidth=8 expandtab tabstop=4 smarttab softtabstop=8
        silent! set foldclose=all foldcolumn=1 nofoldenable foldlevel=0 foldmarker={{{,}}} foldmethod=marker foldminlines=6
        silent! set textwidth=0 backspace=indent,eol,start nrformats=hex formatoptions=cmMj nojoinspaces
        silent! set nohidden autoread noautowrite noautowriteall nolinebreak mouse=a modeline& modelines&
        silent! set noautochdir write nowriteany writedelay=0 verbose=0 verbosefile= notildeop noinsertmode
        set modelines=0
        "------------------------------------------------------------------------------------------
        set switchbuf=useopen
        " do not auto insert comment chars on newline
        autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        set hidden

        "------------------------------------------------------------------------------------------
        silent! set clipboard=unnamed
        silent! set clipboard+=unnamedplus
        "------------------------------------------------------------------------------------------
        "-Performance
        silent! set updatetime=300 timeout timeoutlen=300 ttimeout ttimeoutlen=50 ttyfast lazyredraw
        silent! set noerrorbells visualbell t_vb=
        "------------------------------------------------------------------------------------------
        "-Always open read-only when a swap file is found
        autocmd! vimrc SwapExists * let v:swapchoice = 'o'
        "-Setting lazyredraw causes a problem on startup
        autocmd! vimrc VimEnter * redraw
        "-Enter-I-never-use the default behavior of <cr> and this saves me a keystroke...
        nnoremap <cr> o<esc>
        "-Smart Enter 
        inoremap <silent><expr> <CR> (pumvisible() && bufname('%') !=# '[Command Line]' ? "\<C-e>\<CR>" : "\<C-g>u\<CR>")
        "-Go to the first non-blank character of the line after paragraph motions
        noremap } }^
        set history=7024
        nnoremap > v>
        nnoremap < v<
        vnoremap < <gv
        vnoremap > >gv
        "-Allow using the repeat operator with a visual selection (!)
        vnoremap . :normal .<CR>
        "-For when you forget to sudo.. Really Write the file.
        cmap w!! w !sudo tee % >/dev/null
        "-Move to the directory each buffer
        autocmd! vimrc BufEnter * silent! lcd %:p:h
        "-SWITCH TO THE DIRECTORY OF THE OPEN BUFFER
        map cd :cd %:p:h<cr>
        "------------------------------------------------------------------------------------------
        set nosm
        set wmh=0
        "------------------------------------------------------------------------------------------
        set report=0 " always report changed lines
        "------------------------------------------------------------------------------------------
"-5SetUp-}}}

"-AAA2------------------------------------------------------------------------------------------------------{{{
        function! ScriptExecute()
                :!chmod u+x %
                :w
        endfunction
        "------------------------------------------------------------------------------------------
        augroup ScriptExecutePermission
                autocmd!
                autocmd BufWritePost *.sh :call ScriptExecute()
        augroup END
        "------------------------------------------------------------------------------------------
        augroup SourceVimrc
               autocmd!
                autocmd bufwritepost .vimrc source $MYVIMRC
        augroup END
        "------------------------------------------------------------------------------------------
        set diffopt+=vertical 
        "------------------------------------------------------------------------------------------
        "char = can be removed from the list of valid filename char. JAVA_HOME=/opt/java/jdk1.4
        set isfname-==
        "- go to last edit position when opening files -
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
        set autowrite  " Writes on make/shell commands
        set cf         " Enable error files & error jumping.
        set nu
        "---------------------------------------------------------------------------------- 

"-2Remap-}}}

call plug#begin('~/.config/nvim/plugged/')
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'nixprime/cpsm'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'       
        "---------------------------------------------------------------------------------- 
        Plug 'sjl/gundo.vim'
        "---------------------------------------------------------------------------------- 
        Plug 'kana/vim-textobj-user'
        "----------------------------------------------------------------------------------
        Plug 'adriaanzon/vim-textobj-matchit'
        "`am` and `im` :if-ifend , for-endfore ..
        "----------------------------------------------------------------------------------
        Plug 'gilligan/textobj-gitgutter'
                vmap ih <Plug>(textobj-gitgutter-i)

        "---------------------------------------------------------------------------------- 
        Plug 'coderifous/textobj-word-column.vim'
        "----------------------------------------------------------------------------------
        Plug 'airblade/vim-gitgutter'
                nmap ]c <Plug>GitGutterNextHunk
                nmap [c <Plug>GitGutterPrevHunk
        "------------------------------------------------------
                nmap hp <Plug>GitGutterPreviewHunk
                nmap hs <Plug>GitGutterStageHunk
                nmap hu <Plug>GitGutterUndoHunk
        "------------------------------------------------------
                let g:gitgutter_signs = 1
                let g:gitgutter_max_signs = 2000
        "--------------------------------------------------------------------------
                highlight GitGutterAdd ctermfg=green   guifg=#00ffff 
                highlight GitGutterChange ctermfg=yellow
                highlight GitGutterDelete ctermfg=red
                highlight GitGutterChangeDelete ctermfg=cyan
        "--------------------------------------------------------------------------

        "---------------------------------------------------------------------------------- 
        Plug 'brooth/far.vim'
        "---------------------------------------------------------------------------------- 
        Plug 'osyo-manga/vim-brightest'
                let g:brightest#highlight = { "group" : "Define" }
                " JAPAN
        "---------------------------------------------------------------------------------- 
        Plug 'roxma/python-support.nvim'
                let g:python_support_python2_require = 0
                let g:python_support_python3_require = 1
        "--------------------------------------------------------------------------------- 
        Plug 'romainl/vim-qf'
        Plug 'yssl/QFEnter'
        "--------------------------------------------------------------------------
        Plug 'kana/vim-textobj-diff'
        "---------------------------------------------------------------------------------- 
        Plug 'fs111/pydoc.vim', {'external_commands': ['pydoc']}
        let g:ref_pydoc_cmd = 'pydoc'
        let g:ref_pydoc_complete_head = 1
        " let g:pydoc_cmd = 'python -m pydoc'
        " let g:pydoc_open_cmd = 'vsplit'
        " " If you want pydoc to switch to an already open tab with pydoc page,
        " let g:pydoc_use_drop=1
        " let g:pydoc_window_lines=15
        " " let g:pydoc_window_lines=0.5
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        " " let g:pydoc_highlight=0
        "---------------------------------------------------------------------------------- 
        Plug 'tyru/capture.vim'
        Plug 'thinca/vim-quickrun'

        "---------------------------------------------------------------------------------- 
        Plug 'skywind3000/vim-preview'
                "VSSplit
        "---------------------------------------------------------------------------------- 
        Plug 'flazz/vim-colorschemes'
        " Plug 'rafi/awesome-vim-colorschemes'
        "---------------------------------------------------------------------------------- 
        Plug 'kshenoy/vim-signature'
        " :SignatureListMarkers         : List all markers
        " :SignatureListMarkers 1       : List only the '!' marker
        " :SignatureListMarkers @       : List only the '@' marker
        " :SignatureListMarkers 0, 2    : List only ) marker with 2 lines of context
        " :SignatureListMarkers '', 2   : List all markers with 2 lines of context
        " :SignatureListMarkers '!@', 2 : List only the '!' and '@' markers and show
        "---------------------------------------------------------------------------------- 
        Plug 'machakann/vim-highlightedyank'
                let g:highlightedyank_highlight_duration = -1
        "---------------------------------------------------------------------------------- 
        Plug 'Yggdroot/indentLine'
                let g:indentLine_enabled = 1
                let g:indentLine_noConcealCursor='nc'
                let g:indentLine_color_term = 10
                let g:indentLine_color_gui = '#A4E57E'
                let g:indentLine_color_gui = '#ffFF00'
                let g:indentLine_color_gui = '#ff5f00'
                "let g:indentLine_setConceal = 0
                let g:indentLine_bgcolor_term = 202
                    let g:indentLine_faster = 1
                    let g:indentLine_char = '.'
                    let g:indentLine_char = '|'
                    let g:indentLine_first_char='.'
                    let g:indentLine_first_char='|'
                        "let g:indentLine_first_char='¦'
                        "let g:indentLine_leadingSpaceEnabled = 1
                        "let g:indentLine_leadingSpaceChar = '·'
                    let g:indentLine_showFirstIndentLevel=1
                    let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']
        "--------------------------------------------------------------------------
        Plug 'editorconfig/editorconfig-vim'
        Plug 'itchyny/lightline.vim'
        Plug 'junegunn/fzf'
        Plug 'junegunn/fzf.vim'
        Plug 'mattn/emmet-vim'
        Plug 'scrooloose/nerdtree'
        Plug 'tpope/vim-eunuch'
        Plug 'tpope/vim-surround'
        Plug 'w0rp/ale'


call plug#end()
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
         source ~/git/bTest/kDot/logoABB.vim
         source ~/git/bTest/kDot/legoHFunc.vim
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "source ~/git/bTest/kDot/myPlug/logoCyan.vim
        " source ~/git/bTest/kDot/myPlug/nHydra.vim
        "------------------------------------------------------
        "source ~/git/bTest/kDot/myPlug/NNV.vim
        "let g:nnv_search_paths = ['~/git/bTest/']
        "let g:nnv_search_paths = ['/media/red/124Black/']
        "----------------------------------------------------------------------------------
        "-------------------------------Gold Stuck.chen------------------------------------
        "::::::CYAN::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        set termguicolors
        "source mix/n-badwolf.vim 
        "source ~/git/bTest/kDot/mix/n-badwolf.vim
        "colorscheme molokai
        "colorscheme candycode
        colorscheme desert
        colorscheme badwolf
        " colorscheme ayu
        " let ayucolor="dark"   " for dark version of theme
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme

        "-TOP------------------------------------------------------------------------------
        highlight DiffAdd           cterm=bold ctermbg=22
        highlight DiffDelete        cterm=bold ctermbg=3
        highlight DiffChange        cterm=bold ctermbg=11
        highlight DiffChange        cterm=bold ctermbg=52

        hi SpecialKey ctermfg=251 guifg=#999999

        highlight Class cterm=bold ctermbg=88
        highlight Function cterm=bold ctermbg=19
        highlight LocalVariable cterm=bold ctermbg=14
        highlight GlobalVariable cterm=bold ctermbg=207

        highlight UnderlineTag  cterm=underline  gui=underline guifg=#555555

        "----------------------------------------------------------------------------------
        " hi Enumerator guifg="c000c0"
        " Class           : Class
        " DefinedName     : Define
        " Enumerator      : Enumerator
        " Function        : Function or method
        " EnumerationName : Enumeration name
        " Member          : Member (of structure or class)
        " Structure       : Structure Name
        " Type            : Typedef
        " Union           : Union Name
        " GlobalConstant  : Global Constant
        " GlobalVariable  : Global Variable
        " LocalVariable   : Local Variable

        "---TOP---!!!----------------------------------------------------------------------
        hi pythonSelf  ctermfg=68 cterm=bold 
        hi Search         ctermbg=11 
        " hi Normal         ctermbg=235 guibg=#333333
        hi ColorColumn    ctermbg=22
        hi MatchParen     ctermbg=39 ctermfg=11  cterm=bold
        set signcolumn=yes
        hi signcolumn     ctermbg=23 guibg=14
        highlight SignColumn     ctermbg=230       guibg=#00ff00

        hi LineNr         ctermbg=17 ctermfg=15   guibg=#020202
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#10205f  guifg=#ffffff
        "--------------------------------------------------------------------------------- 
        "red let g:indentLine_color_term = 251
        "red let g:indentLine_newVersion = 0
        "--------------------------------------------------------------------------------- 

        "--------------------------------------------------------------------------------
        hi CursorLine     ctermbg=90  guibg=#870087
        set cursorcolumn
        hi CursorColumn   ctermbg=16 guibg=#870087 

        "--------------------------------------------------------------------------------
        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=240
        hi ColorColumn    ctermbg=14   guibg=#005500
        hi Visual cterm=bold ctermbg=2 ctermfg=NONE  guibg=#005500
        hi Comment        ctermfg=249 ctermfg=#aaAAaa  guibg=#770000

        set pumheight=12
        " Popup menu hightLight Group
        hi Pmenu          ctermfg=1  ctermbg=255
        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE
        hi PmenuSel       ctermbg=10 ctermfg=1
        let g:CommandTHighlightColor = 9

        "--------------------------------------------------------------------------------
        silent! set complete& completeopt=menu infercase noshowfulltag
        "suppress intro message because the above makes it look bad
        set shortmess+=I
        "set shortmess+=c
        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "------------------------------------------------------
        hi customPink     ctermbg=245 ctermfg=White  guifg=#ff5f00 guibg=#ccbbcc
        hi lightGray      ctermbg=12
        hi darkGray       ctermbg=211 guibg=#ffbbff  guifg=#8000f0

        "------------------------------------------------------
        hi Pmenue        ctermfg=11
        set nuw =4
        set list
        set listchars=tab:▸\

        "---???------------------------------------------------
        call matchadd('darkGray', 'NEXT')
        call matchadd('darkGray', 'TODO')
        call matchadd('darkGray', '!!!')
        call matchadd('darkGray', '???')
        call matchadd('darkGray', 'AAA')
        call matchadd('darkGray', 'KKK')
        call matchadd('darkGray', 'MMM')
        call matchadd('darkGray', 'TTT')
        call matchadd('darkGray', 'DDD')
        call matchadd('customPink', '===')
        call matchadd('customPink', '==')
        call matchadd('customPink', '=')
        call matchadd('customPink', '###')
        call matchadd('customPink', ':::')
        call matchadd('customPink', '::')
        call matchadd('customPink', '---')
        call matchadd('customPink', '--')
        call matchadd('customPink', '-')
        "------------------------------------------------------

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        autocmd! User Oblique       normal! zz
        autocmd! User ObliqueStar   normal! zz
        autocmd! User ObliqueRepeat normal! zz

        hi! def link ObliqueCurrentMatch Keyword
        hi! def link ObliquePrompt       Structure
        hi! def link ObliqueLine         String
        let g:oblique#clear_highlight =0

"-AAA16---Wildmenu------------------------------------------------------------------------------------------{{{
        " More useful command-line completion
        au! FocusLost * :silent! wall     "Save when losing focus
        set wildmenu
        "black-List
        set wildmode=list:longest
        "blackGreen-List
        set wildmode=list:full
        "------------------------------------------------------------------------------------------
        "set wildchar=9 nowildmenu wildmode=list:longest wildoptions= wildignorecase cedit=<C-k>
        "------------------------------------------------------------------------------------------
        set wildignore+=.hg,.git,.svn                    " Version control
        set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
        set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
        set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
        set wildignore+=*.spl                            " compiled spelling word lists
        set wildignore+=*.sw?                            " Vim swap files
        set wildignore+=*.DS_Store                       " OSX bullshit
        set wildignore+=*.luac                           " Lua byte code
        set wildignore+=migrations                       " Django migrations
        set wildignore+=*.pyc                            " Python byte code
        set wildignore+=*.orig                           " Merge resolution files
        set wildignore+=*.fasl                           " Lisp FASLs
        set wildignore+=*.dx64fsl                        " CCL
        set wildignore+=classes
        set wildignore+=lib
"-16-}}}

      " nmap <Leader>c <Plug>CRV_CRefVimNormal
      " vmap <Leader>r <Plug>CRV_CRefVimVisual
      " map  <Leader>cw <Plug>CRV_CRefVimAsk
      " map  <Leader>cc <Plug>CRV_CRefVimInvoke


"---------------------------------------------------------------------------------------------------
":::::::::::::::::::::::::::-START1-:::::::::-PreNAVI-::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------
        nnoremap <BS> X
        noremap j gj
        noremap k gk
        noremap gj j
        noremap gk k
        "------------------------------------------------------------------------------------------
        cnoremap <C-A> <Home>
        cnoremap <C-E> <End>
        cnoremap <C-d> <Del>
        "------------------------------------------------------------------------------------------
        nnoremap <c-o> <c-o>zz
        nnoremap <c-i> <c-i>zz
        "------------------------------------------------------------------------------------------
        "Yank to end of line
        nnoremap Y y$
        "------------------------------------------------------------------------------------------
        nnoremap H mzJ`z
        "------------------------------------------------------------------------------------------
        "---Reselect-last-pasted txt---------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        nnoremap gv `[v`]
        "------------------------------------------------------------------------------------------
        "noremap \\ #*
        "------------------------------------------------------------------------------------------
        "??? make it so that if I acidentally pres ^W or ^U in insert mode,
        " then <ESC>u wil undo just the ^W/^U, and not the whole insert
        " This is docmented in :help ins-special-special, a few pages down
        "------------------------------------------------------------------------------------------
        inoremap <C-W> <C-G>u<C-W>
        inoremap <C-U> <C-G>u<C-U>
        "--------------------------------------------------------------------------
        nnoremap  <Esc><Esc> :<C-u>set nopaste<CR>:nohlsearch<CR>
        "-------------------------------------------------------------------------------------------
        nmap  n nzz
        nmap  N Nzz
        nmap  g* g*zz
        nmap  g# g#zz
"---------------------------------------------------------------------------------------------------
"::::::::::::::::::::::::::::::-=NAVI2=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------

        "------------------------
        nmap <tab>     :bn<cr>
        nmap <s-tab>   :bp<cr>
        "------------------------

        "---------------------------------------------------
        nnoremap <S-right> :vertical resize +3<cr>
        nnoremap <S-left>  :vertical resize -3<cr>
        nnoremap <S-up>    :resize +3<cr>
        nnoremap <S-down>  :resize -3<cr>

        "--???-----------------------------------------------------------------------------
        noremap <silent> <S-up> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <S-down> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        "------------------SCROLL----------------------------------------------------------
        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        noremap <S-j> :PreviewScroll -1<cr>
        noremap <S-l> :PreviewScroll +1<cr>
        "------------------------------------------------------------------------------------------ 
        fun! ScrollOtherWindow(dir)
                if a:dir == "down"
                        let move = "\<C-E>"
                elseif a:dir == "up"
                        let move = "\<C-Y>"
                endif
                exec "normal \<C-W>p" . move . "\<C-W>p"
        endfun
        nmap <silent> <C-M-Down> :call ScrollOtherWindow("down")<CR>
        nmap <silent> <C-M-Up> :call ScrollOtherWindow("up")<CR>

"---------------------------------------------------------------------------------------------------
"::::::::::::::::::::::::::::::-WINDOWS-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------
        "macros even easier to remember: hit qq to record, q to stop recording, and Q to apply.
        nnoremap Q @q
        vnoremap Q :norm @q<cr>
        "------------------------------------------------------------------------------------------
        nmap q <Nop>
        nnoremap q <Nop>
        nnoremap ss :wa<cr>
        nnoremap qa :wa<cr> :bd<cr>
        nnoremap qq :bd<cr>
        nnoremap qs :wa<cr> :qa<cr>
        nnoremap ee :w<cr>:e #<cr>
        nnoremap qw <C-w>q<CR>
        nnoremap wq <C-w>q<CR>
        nnoremap ww <C-w>o<CR>
        "------------------------------------------------------------------------------------------
        nnoremap ZZ  <Nop> 
        nnoremap ZZ mzzt1<c-u>`z
        nnoremap zs mzzt2<c-u>`z
        nnoremap zx mzzt35<c-u>`z
        nnoremap zh mzzt10<c-u>`z
        nnoremap EE :source $MYVIMRC<CR>
        nnoremap BB ggVG
        nnoremap CC ggVG"+y
        "==========================================================================================
        nnoremap ;e :ls<cr>:b<space>
        "==========================================================================================
        nnoremap ;v <c-w>v<c-w>l
        nnoremap vv <c-w>v<c-w>l<cr><c-w>w<cr>
        nnoremap hh <c-w>w
        "==========================================================================================
        nnoremap ll :execute "leftabove vsplit" bufname('#')<cr>
        nnoremap VV :execute "leftabove vsplit" bufname('#')<cr>
        nnoremap ;r :execute "rightbelow vsplit" bufname('#')<cr>

        "------------------------------------------------------------------------------------------
        "===openFileWithSameBasenameDifferentExtension=============================================        
        "nnoremap <expr> ,R  ":e ".expand("%:r")."."

        "------------------------------------------------------------------------------------------
        ":::::::::::::::<FORMAT>::::::::::::::LINES::::::::::::::::::::::::::::::::::::::::::::::::
        "------------------------------------------------------------------------------------------

        nnoremap W gwip
        nnoremap ;t :set tw=70<cr>v<s-}>gq<end>
        noremap  ;a =ip

        "==========================================================================================
        "===copyLastChangedLineHE==================================================================
        "==========================================================================================
        nnoremap ;p :'.t.<cr>
        vnoremap ;p :'.t.<cr>
        "==========================================================================================
        "==Jump backwards to previous function, assumes code indented (useful when inside function)
        "==========================================================================================
        nnoremap ;f ?^func\\|^[a-zA-Z].*func<CR>,/
        "==========================================================================================
        nnoremap ;d mayiw`a:exe ":Capture !dict -P - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
        nnoremap ,d mayiw`a:exe ":Capture !dict -d fd-eng-deu - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
        "==========================================================================================
        "Transport Down Ex: Pull word under cursor into :Ex LHS of a subs ztitute (replace)
        nnoremap ,w :<C-r>=expand("<cword>")<CR>
        nnoremap ;w :<C-r>=getline(".")<CR>

        "==========================================================================================
        nmap ,, <Plug>(easymotion-overwin-w)
        nmap ;; <Plug>(easymotion-overwin-w)
        imap ;; <ESC>

        "------------------------------------------------------------------
        let g:EasyOperator_line_do_mapping = 0
        omap ;l  <Plug>(easyoperator-line-select)
        xmap ;l  <Plug>(easyoperator-line-select)
        nmap d;l <Plug>(easyoperator-line-delete)
        nmap p;l <Plug>(easyoperator-line-yank)

        "------------------------------------------------------------------
        "1y$  //yank current row to register 1
        "<C-r>a to paste from register a
        "------------------------------------------------------------------
        nmap ]c <Plug>GitGutterNextHunk
        nmap [c <Plug>GitGutterPrevHunk
        "------------------------------------------------------------------
        nmap hp <Plug>GitGutterPreviewHunk
        nmap hs <Plug>GitGutterStageHunk
        nmap hu <Plug>GitGutterUndoHunk
        "------------------------------------------------------------------
        vmap     dg  :diffget<CR>
        vmap     dp  :diffput<CR>
        nnoremap do  :diffoff!<cr>

        "==========================================================================================
        "::::::::::::::::::::::::::::::-2MAGIC2-:::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        vmap <A-c> :w !cat >> ./zbuf<CR>

        "==========================================================================================
        "==:Ex-TRIGER==MAGIC==Execute VIM colon command under cursor==:ls==========================
        "==========================================================================================
        " nnoremap <C-z> yy:<C-r>"<cr>
        " PUT to :ex
        nnoremap ;x yy:<C-r>"<cr>

        "==========================================================================================
        "---PlusMinusColor-------------------------------------------------------------------------
        "==========================================================================================
        nnoremap ( <c-x>:y x\|@x<cr>
        nnoremap ) <c-a>:y x\|@x<cr>
        "==========================================================================================
        "---FIREFOX----www.ewb.de------------------------------------------------------------------
        "==========================================================================================
        
        "==========================================================================================
        nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        nnoremap <localleader>o :Utl<CR>
        nnoremap ;o :Utl<CR>
        "------------------------------------------------------------------------------------------
        "===Control-] pop open a window and show the tag there.====================================
        "------------------------------------------------------------------------------------------
        nnoremap <A-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
        "------------------------------------------------------------------------------------------
        "==========================================================================================
        function! s:VSetSearch()
                let temp = @@
                norm! gvy
                let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                let @@ = temp
        endfunction
        vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
        vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>
        "==========================================================================================
        "------------------------------------------------------------------------------------------
        "==========================================================================================
        function! UltiSnipsCallUnite()
                Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
                return ''
        endfunction
        inoremap <F4> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
        "let g:UltiSnipsExpandTrigger="<C-k>"
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<C-b>"
        let g:UltiSnipsJumpForwardTrigger="<C-z>"

        "==========================================================================================
        "::::::::::::::::::::::::::::-REPL-::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        let cmdline_map_start          = '<LocalLeader>s'
        let cmdline_map_send           = '<Space>'
        let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
        let cmdline_map_source_fun     = '<LocalLeader>f'
        let cmdline_map_send_paragraph = '<LocalLeader>p'
        let cmdline_map_send_block     = '<LocalLeader>b'
        let cmdline_map_quit           = '<LocalLeader>q'


"==================================================================================================
":::::::::::::::::F2, F3, F4, F5, F6, F7 ,F8 , F9::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        "==========================================================================================
        "==HelpInHelpInHelp========================================================================
        "==========================================================================================
        nmap <F2> <Esc>:helpgrep <C-r><C-w><CR>
        nmap <F2> "zyw:exe  "h ".@z.""<CR>
        nmap <F2> <Esc>:help <C-r><C-w><CR>
        "==MMM====================================================================================
        au! FileType vim,help nnoremap M :exec "helpgrep" expand("<cword>")<CR>

        "==========================================================================================
        nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
        inoremap <F3> <esc>:NERDTreeToggle<cr>
        "==========================================================================================
        nnoremap <F4> <esc>:Startify<cr>
        "==========================================================================================
        nnoremap <F5> :w<CR>:!python %<CR>

        "==========================================================================================
        "autocmd! filetype python noremap <buffer> <F4> :w<CR>:!python %<CR>
        "autocmd! filetype python inoremap <buffer> <C-F4> <Esc>:w<CR>:!python %<CR>
        "autocmd! filetype python noremap <buffer> <S-F4> :w<CR>:!ipython %<CR>
        "autocmd! filetype python inoremap <buffer> <S-F4> <Esc>:w<CR>:!ipython %<CR>
        "noremap <buffer> <F4> :w<CR>:!python %<CR>
        "noremap <buffer> <C-F4> :w<CR>:!clear;python %<CR>
        "noremap <buffer> <S-F4> :w<CR>:exec '!python' shellescape(@%, 1)<CR>

        "==========================================================================================
        nnoremap <F5> :call <SID>compile_and_run()<CR>

        "==========================================================================================
        function! s:compile_and_run()
            exec 'w'
            if &filetype == 'c'
                exec "AsyncRun! gcc % -o %<; time ./%<"
            elseif &filetype == 'cpp'
               exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
            elseif &filetype == 'java'
               exec "AsyncRun! javac %; time java %<"
            elseif &filetype == 'sh'
               exec "AsyncRun! time bash %"
            elseif &filetype == 'python'
               exec "AsyncRun! time python %"
            endif
        endfunction

        let g:asyncrun_open = 15

"==================================================================================================
"::::::::::::::::--Leader:0,1,2,3,4,5,6,7,8,9--::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        nnoremap <Leader>0 :set number!<return>
        "------------------------------------------------------------------
        nnoremap <Leader>1 :SideSearch <C-r><C-w><CR> | wincmd p
        command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
        "------------------------------------------------------------------
        nnoremap <Leader>2 :PymodeDoc <cword> .<cr>
        "------------------------------------------------------------------
        nnoremap <Leader>3 :Pydoc <cword> .<cr>
        "------------------------------------------------------------------
        nnoremap <Leader>4 <Plug>AgRawSearch
        "------------------------------------------------------------------
        nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        "-------------------------------------------------
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        " :Pydoc foo.bar.baz (e.g. :Pydoc re.compile)
        " Or search a word (uses pydoc -k) in the documentation by typing:
        " :PydocSearch foobar (e.g. :PydocSearch socket)
        "------------------------------------------------------------------
        nnoremap ff :NV <C-r><C-w><CR> | wincmd p
        nnoremap FF :ZRg <C-r><C-w><CR> | wincmd p
        nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
        nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
        nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        "------------------------------------------------------------------

        "==========================================================================================
        "====
        nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>

        "---------------------------------------------------------------
        nnoremap <F6> :FFLines <C-r><C-w><CR> | wincmd p
        nnoremap <F7> :FFBLines <C-r><C-w><CR> | wincmd p

        "==========================================================================================
        nnoremap ,h :CommandTHelp<cr>
        nnoremap ;h :CommandTHelp<cr>
        "==========================================================================================
        nmap cc  gcl
        "==========================================================================================
        nnoremap <F8> :LocationToggle<cr>
        nnoremap <LocalLeader>n :lnext<cr>zvzz
        nnoremap <LocalLeader>b :lprev<cr>zvzz
        "==========================================================================================
        nnoremap <F9> :call ToggleQuickFix()<CR>
        nnoremap <Leader>n :cnext<cr>zvzz
        nnoremap <Leader>b :cprev<cr>zvzz
        "==========================================================================================
        nmap <F10> <c-w>w
        "==========================================================================================
        nnoremap <F12> :TagbarToggle<CR>
        nnoremap TT :TagbarToggle<CR>

        "===PLAY8=========(C-o)====================================================================
        inoremap <silent> <C-o> <C-x><C-o>
        "inoremap <silent> <C-k> <C-x><C-k>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-l> <C-x><C-l>
        inoremap <silent> <C-]> <C-x><C-]>
        "inoremap <silent> <C-u> <C-x><C-u>

        "------------------------------InsertMode Scroll-------------------------------""
        :inoremap <C-E> <C-X><C-E>

        "==========================================================================================
        "::::::::::::::::::::::::::::::-UNFUC-:::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        let g:undoquit_mapping = ';q' 
        nnoremap <Leader>q :Bdelete<CR> 
        "=============================================
        "===Make zO recursively open whatever fold====
        "=============================================
        nnoremap ,z :call FocusLine()<cr>
        nnoremap z0 zczO 

        "---------------------------------------------------------------------------------- 
        nnoremap z8 :call <SID>SynStack()<CR>

        "---------------------------------------------------------------------------------- 
        " abc,def,ghi
        " the, most , short , long , big , bigly 
        " a,b,c
        "---------------------------------------------------------------------------------- 
        nnoremap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>
        "---------------------------------------------------------------------------------- 
        "==================================================================================
        "---Open-Quickfix-window-automatically---------------------------------------------
        "==================================================================================
        autocmd QuickFixCmdPost grep cwindow
        autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
        autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p

"===============================================================================================================
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
        command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                                \ | wincmd p | diffthis
endif

"===============================================================================================================
nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
"===============================================================================================================

