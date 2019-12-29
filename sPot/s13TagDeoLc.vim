" File: s12SynDeoLc.vim syn N13SYN bimini
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Lass Modified:      So 29 Dez 2019 08:46:12  CET
"******************************************************************************************************************
"==DeoJedi=========================================================================================================
"==================================================================================================================
"==AAA==OK==FRAME==OnTOP==NICE===================[#TAG]=[#FZF]=========================================================
"====================================[10F2]===============[#EXEC]==================================================
"============================[#QMENU]========[#LeaderGuide]=======[#STARTIFY]======================================
"==========[#NAVI]=====[#NMODE]=======[#IMODE]=============[#CMODE]=========[#VMODE]=======[#WinCore]==============
"=[#BEST]========[#SMART]========[#NOWO]========[#NEXT]===========[#FRESH]========[#TODO]========[#ERROR]==========
"======[#ADVANCED]=================================================================================================
"******************************************************************************************************************
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | [#MainSet]        | [#Plugged]        | [#FZF]         | [SourceMe] | [#TOPF]       | [#SEARCH]    |    |
" +===================+===================+================+============+===============+==============+====+
" | [#Coc], [LSP]     | [TableModeToggle] | MPlugHelp      | fugitive   |               | NV           | 1  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | [#DEO], deoplete  | #Maping           | FZFDefinitions | Gwrite     |               | FFRg         | 2  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | snippet, [#ulti]  | [#FOLD]           | FFBLines F7,\\ |            | [DimInactive] | ZAg          | 3  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | #Templating       | [#SPELL]          | VSearchMe v*   |            | [#EX#EXEC]    | scope        | 4  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | [#FORMAT] #BLACK  | #leon, easy       | FZFMru         |            | [VimOmni]     | FindNonAscii | 5  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | [#TextObj]        | [#CYAN]           | FZFFreshMru    |            | [iInoremap]   |              | 6  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | #Linting          | [EasyAlign] [OK]  | :MRU           | [#FUNC]    |               |              | 7  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | [#BOX]            | [Pyy]             | MGit           | #RUN       | [LLine]       |              | 8  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | [#AutoCMD]        | [PDOC]            | MTag           | #REPL      | [Clap]        |              | 9  |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
" | [TableModeToggle] | [PyF3]            | MLibList       |            |               |              | 10 |
" +-------------------+-------------------+----------------+------------+---------------+--------------+----+
"******************************************************************************************************************

"++AAA+[PreSet]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
autocmd!
hi clear
set foldlevel=0
" syntax on
" set foldclose=all
"==================================================================================================================
set guicursor=a:block-blinkon100-Cursor/Cursor
set gcr=a:block
set gcr+=o:hor50-Cursor
set gcr+=n:CursorN
set gcr+=i-ci-sm:InsertCursor
set gcr+=r-cr:ReplaceCursor-hor20
set gcr+=c:CommandCursor
set gcr+=v-ve:VisualCursor
set gcr+=a:blinkon100
"================================================================================
" hi Cursor guifg=black guibg=green gui=reverse
"================================================================================
set confirm
set browsedir=buffer
set fileencoding=utf8
set fileformats=unix,mac,dos
set fileformat=unix
set encoding=UTF-8
scriptencoding utf-8
set shortmess+=Ic
set modelines=0
set winaltkeys=no
set guioptions=cMe
set helpheight=7
set showmode
set conceallevel=0
"++++++AAA++}}}
"++AAA+[PyySet]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " set path=.,,src/**,lib/**,docs/**
        set path+=.,/home/red/
        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/git/bTest/sPot/s11DeoLc.vim'
        "----------------------------------------------------------------------------------
        let g:python_host_prog = '/usr/bin/python2'
        let g:python3_host_prog = '/usr/bin/python3'
        "let g:python3_host_prog=expand('~/anaconda3/bin/python')
        "----------------------------------------------------------------------------------
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
"++++++AAA++}}}
"++AAA+[#UNDO]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        filetype on
        filetype plugin on
        filetype indent on
        "----------------------------------------------------------------------------------
        let maplocalleader=','
        let mapleader=' '
        "----------------------------------------------------------------------------------
        set nocompatible
        set shell=/bin/zsh

        "++Ctags++{{{
                let generate_tags=1
                set tags=.tags;
                set tags+=tags;
                "----------------------------------------------------------------------------------
                set tags=./tags;/,~/.vimtags
                " Make tags placed in .git/tags file available in all levels of a repository
                let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
                if gitroot != ''
                        let &tags = &tags . ',' . gitroot . '/.git/tags'
                endif
        "++}}}

        "==================================================================================
        "----------------------------------------------------------------------------------
        " set spelllang=de,tech_speak
        " 'zg': add, 'zw': remove.
        "----------------------------------------------------------------------------------
        set spellsuggest=best
        set spelllang=de
        set spelllang=en
        set spell
        set nospell
        "==================================================================================
        " :MMake to perform a :make and to open any result quickfix window:
        " command -nargs=* MMake make <args>|cwindow 3
        "==================================================================================
        set makeprg=gcc\ -o\ %<\ %
        "----------------------------------------------------------------------------------
        set errorformat+=%f:%l.%c-%*[0-9]:\ %m
        set errorformat+=%f:%l.%c:\ %m
        set errorformat+=%f:\ %m
        "==================================================================================
        "set grepprg=/bin/grep\ -nH
        set grepprg=rg\ --vimgrep
        "----------------------------------------------------------------------------------
        if executable('ag')
                set grepprg=ag\ --nogroup\ --nocolor\ --column\ --ignore-dir\ node_modules\ --ignore-dir\ bower_components
                set grepformat=%f:%l:%c:%m
        endif

        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'

        "==================================================================================
        " ----------------------------------------------------------------------------
        " ack.vim   [#FRESH]
        " ----------------------------------------------------------------------------
        if executable('ag')
        let &grepprg = 'ag --nogroup --nocolor --column'
        else
        let &grepprg = 'grep -rn $* *'
        endif
        command! -nargs=1 -bar Grepack execute 'silent! grep! <q-args>' | redraw! | copen
        " -----[END:#FRESH]------------------------------------------------------------------
        "==================================================================================

        "==================================================================================
        "----------------------------------------------------------------------------------
        let g:pymode_python = 'python3'
        "----------------------------------------------------------------------------------
        "==================================================================================
        set noswapfile
        set backup
        set undodir=~/.config/nvim/undoDir/
        set backupdir=~/.config/nvim/backUpDir/
        set directory=~/.config/nvim/swapDir/
        "==================================================================================
        if !isdirectory(expand(&undodir))
                call mkdir(expand(&undodir), "p")
        endif
        if !isdirectory(expand(&backupdir))
                call mkdir(expand(&backupdir), "p")
        endif
        if !isdirectory(expand(&directory))
                call mkdir(expand(&directory), "p")
        endif
        "==================================================================================
        set undofile
        set undoreload=2000
        "==================================================================================
        "==================================================================================

"++++++AAA++}}}
"++AAA+[#MainSet]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        set iskeyword-=.                    " '.' is an end of word.designator
        set iskeyword-=#                    " '#' is an end of word#designator
        set iskeyword-=-                    " '-' is an end of word=designator
        "-magic--------
        silent! set wrapscan ignorecase smartcase incsearch hlsearch magic
        "-Appearance---
        silent! display=lastline,uhex nowrap wrapmargin=0 guioptions=ce key=
        silent! set noshowmatch  noshowmode cmdheight=1 cmdwinheight=10
        silent! set noshowcmd ruler rulerformat= laststatus=2 statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c
        silent! set title titlelen=100 titleold= titlestring=%f noicon norightleft showtabline=1
        silent! set cursorline nocursorcolumn colorcolumn= concealcursor=nvc conceallevel=3 norelativenumber
        silent! set list listchars=tab:>\ ,nbsp:_ synmaxcol=800 ambiwidth=double breakindent breakindentopt=
        silent! set nosplitbelow nosplitleft startofline linespace=0 whichwrap=b, scrolloff=2 sidescroll=0
        silent! set equalalways nowinfixwidth nowinfixheight winminwidth=3 winminheight=3 nowarn noconfirm
        silent! set fillchars=vert:\|,fold:\  eventignore= helplang=en viewoptions=options,cursor virtualedit=
        "======================================================================================================
        set nuw =4
        "======================================================================================================
        set nowrap
        "---set whichwrap=b,s,h,l,<,>,[,]
        set splitbelow splitright
        set viminfo='20,\"80
        "---Editing---------------------------------------------------------------------------------
        silent! set iminsert=0 imsearch=0 nopaste pastetoggle= nogdefault comments& commentstring=#\ %s
        silent! set smartindent autoindent shiftround shiftwidth=8 expandtab tabstop=4 smarttab softtabstop=8
        silent! set textwidth=0 backspace=indent,eol,start nrformats=hex formatoptions=cmMj nojoinspaces
        silent! set nohidden autoread noautowrite noautowriteall nolinebreak mouse=a modeline& modelines&
        silent! set noautochdir write nowriteany writedelay=0 verbose=0 verbosefile= notildeop noinsertmode
        silent! set foldcolumn=1 nofoldenable foldlevel=0 foldmarker={{{,}}} foldmethod=marker foldminlines=6
        "------------------------------------------------------------------------------------------
        set linebreak
        set breakindentopt=sbr " showbreak will be handled correctly
        set virtualedit=block
        set formatoptions=cqj
        "TOP neovim specific
        set inccommand=split
        "------------------------------------------------------------------------------------------
        set switchbuf=useopen    " reveal already opened files from the
        set hidden               " Hide buffer instead of abandoning when unloading
        "------------------------------------------------------------------------------------------
        silent! set clipboard=unnamed
        silent! set clipboard+=unnamedplus
        "------------------------------------------------------------------------------------------
        "-Performance
        silent! set updatetime=300 timeout timeoutlen=300 ttimeout ttimeoutlen=50 ttyfast lazyredraw
        silent! set noerrorbells visualbell t_vb=
        set history=9024
        "------------------------------------------------------------------------------------------
        set nosm
        set wmh=0
        "------------------------------------------------------------------------------------------
        set report=0 " always report changed lines
        "------------------------------------------------------------------------------------------
        set diffopt+=vertical
        "------------------------------------------------------------------------------------------
        "char = can be removed from the list of valid filename char. JAVA_HOME=/opt/java/jdk1.4
        set isfname-==
        "------------------------------------------------------------------------------------------
        set autowrite  " Writes on make/shell commands
        set cf         " Enable error files & error jumping.
        set nonu
        set nu
        "----------------------------------------------------------------------------------
        set showmatch
        set matchpairs+=(:),{:},[:],<:>
        set matchpairs+=':'
        set matchtime=5
        set scrolloff=2
"++++++AAA++}}}
"++AAA[#Plugged]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"-=sHapyStart1=-
call plug#begin('~/.config/nvim/plugged/')
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/L9'
        " Plug 'vim-scripts/FuzzyFinder'
        "----------------------------------------------------------------------------------
        Plug 'prabirshrestha/async.vim'
        Plug 'skywind3000/asyncrun.vim'
                let g:asyncrun_open = 15
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/genutils'
        Plug 'LucHermitte/lh-vim-lib'
        Plug 'inkarkat/vim-ingo-library'
        "----------------------------------------------------------------------------------
        " Peekaboo extends  and @ in normal mode and <CTRL-R> in insert mode so you
        " can see the contents of the registers.
        " You can toggle fullscreen mode by pressing spacebar.
        " Plug 'junegunn/vim-peekaboo'
        "----------------------------------------------------------------------------------
        Plug 'bronson/vim-trailing-whitespace'
        " :FixWhitespace
        "--------------------------------------
        Plug 'ntpeters/vim-better-whitespace'
                " :StripWhitespace,
                " g:strip_whitespace_on_save (defaults to 0)
                let g:strip_whitespace_on_save = 1
        "----------------------------------------------------------------------------------
        Plug 'farmergreg/vim-lastplace'
                let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
                " let g:lastplace_ignore_buftype = "quickfix,nofile,help",
                let g:lastplace_open_folds = 0

        "----------------------------------------------------------------------------------
        "---DATABASE-CONSOLE---------------------------------------------------------------
        " Plug 'tpope/vim-dadbod'
        "----------------------------------------------------------------------------------
        Plug 'tpope/vim-fugitive'
        "----------------------------------------------------------------------------------
        " Plug 'godlygeek/csapprox', {'for': 'fugitiveblame' }
        "==================================================================================
        "----------------------------------------------------------------------------------
        " Plug 'scrooloose/nerdcommenter'
        " Plug 'tomtom/tcomment_vim'
        " Plug 'tpope/vim-speeddating'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        Plug 'vim-scripts/visualrepeat'
        Plug 'tpope/vim-eunuch'
        "----------------------------------------------------------------------------------
        " Extend abbreviation/substition.
        Plug 'tpope/vim-abolish'
        "-----------------------------------------------------------------------------------
        " Plug 'wesQ3/vim-windowswap'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======StartTO======[#TextObj]======================================================
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'kana/vim-textobj-user'

        "++AAA1-HULK-++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
                Plug 'airblade/vim-gitgutter'
                        let g:gitgutter_signs = 1
                        let g:gitgutter_max_signs = 800
                        " {{{
                                let g:gitgutter_map_keys = 0
                                let g:gitgutter_max_signs = 500
                                let g:gitgutter_realtime = 1
                                let g:gitgutter_eager = 1
                                let g:gitgutter_diff_args = '--ignore-space-at-eol'
                                "--------------------------------------------------------------
                                " nnoremap <silent> <Leader>gu :GitGutterRevertHunk<CR>
                                " nnoremap <silent> <Leader>gp :GitGutterPreviewHunk<CR><c-w>j
                                " nnoremap cog :GitGutterToggle<CR>
                                " nnoremap <Leader>gt :GitGutterAll<CR>
                        " }}}

                "-------------------------------------------------------------------
                Plug 'gilligan/textobj-gitgutter'
                        " vmap ih <Plug>(textobj-gitgutter-i)
                        " xmap ih <Plug>(textobj-gitgutter-i)
                        " omap ih <Plug>(textobj-gitgutter-i)

                "-------------------------------------------------------------------
                "---------HULK--hunk--HUNK--888-------------------------------------
                "-------------------------------------------------------------------
                nmap [c <Plug>(GitGutterPrevHunk)
                nmap ]c <Plug>(GitGutterNextHunk)
                nmap <silent> ]h :GitGutterNextHunk<CR>
                nmap <silent> [h :GitGutterPrevHunk<CR>
                "----------------------------------------
                nmap ]v <Plug>(GitGutterPreviewHunk)
                nmap ]s <Plug>(GitGutterStageHunk)
                nmap ]u <Plug>(GitGutterUndoHunk)
        "++AAA1-HULK-++}}}

        "===================================================================================
        Plug 'adriaanzon/vim-textobj-matchit'
        "am , im :if-ifend , for-endfore ..
        "==================================================================================
        Plug 'kana/vim-textobj-diff'
        "==================================================================================
        Plug 'reedes/vim-textobj-sentence'
                let g:textobj#sentence#select = 's'
                let g:textobj#sentence#move_p = '('
                let g:textobj#sentence#move_n = ')'
        "========================[#FRESH]==================================================
                Plug 'kana/vim-textobj-line'
                Plug 'Julian/vim-textobj-variable-segment'
                Plug 'kana/vim-textobj-entire'
                Plug 'deathlyfrantic/vim-textobj-blanklines'
                Plug 'whatyouhide/vim-textobj-xmlattr'

                "----------------[#TRY]------------------------------
                Plug 'paulhybryant/vim-textobj-path'
                Plug 'jceb/vim-textobj-uri'
                Plug 'mattn/vim-textobj-url'
                Plug 'vimtaku/vim-textobj-keyvalue'
                "---------------------------------------------------
                "-Plug 'kana/vim-textobj-lastpat'
                "-Plug 'whatyouhide/vim-textobj-erb'
                "-Plug 'rsrchboy/vim-textobj-heredocs'
                "---------------------------------------------------
        "==================================================================================
        Plug 'kana/vim-textobj-function'
        Plug 'Julian/vim-textobj-brace'
        Plug 'glts/vim-textobj-indblock'
        Plug 'kana/vim-textobj-indent'
        Plug 'kana/vim-textobj-fold'
        Plug 'beloglazov/vim-textobj-quotes'
        "----vac---
        Plug 'coderifous/textobj-word-column.vim'
        "----vax---
        Plug 'glts/vim-textobj-comment'
                let g:textobj_comment_no_default_key_mappings = 1
                xmap ax <Plug>(textobj-comment-a)
                omap ax <Plug>(textobj-comment-a)
                xmap ix <Plug>(textobj-comment-i)
                omap ix <Plug>(textobj-comment-i)
                xmap aX <Plug>(textobj-comment-big-a)
                omap aX <Plug>(textobj-comment-big-a)
                xmap iX <Plug>(textobj-comment-big-i)
                omap iX <Plug>(textobj-comment-big-i)

        "------------------------------------------------
        Plug 'nelstrom/vim-textobj-rubyblock'
                let g:textobj_rubyblock_no_default_key_mappings = 1
                xmap ar  <Plug>(textobj-rubyblock-a)
                omap ar  <Plug>(textobj-rubyblock-a)
                xmap ir  <Plug>(textobj-rubyblock-i)
                omap ir  <Plug>(textobj-rubyblock-i)

        "------------------------------------------------
        Plug 'junegunn/vim-after-object'
                autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
                " va=  visual after =
                " ca=  change after =
                " da=  delete after =
                " ya=  yank after =
                " apple = 'juice'
                " apple = 'juice'

        "==================================================================================
        "----------------------[#TextObj]--------------------------------------------------
        "==================================================================================
        Plug 'terryma/vim-expand-region'
                 let g:expand_region_text_objects = {
                                         \ 'iw'  :0,
                                         \ 'iW'  :0,
                                         \ 'iq'  :1,
                                         \ 'ib'  :1,
                                         \ 'iB'  :1,
                                         \ 'ij'  :1,
                                         \ 'il'  :1,
                                         \ 'io'  :1,
                                         \ 'ic'  :1,
                                         \ 'it'  :1,
                                         \ 'ii'  :1,
                                         \ 'im'  :1,
                                         \ 'ix'  :1,
                                         \ 'if'  :1,
                                         \ 'af'  :1,
                                         \ 'aF'  :1,
                                         \ 'is'  :1,
                                         \ 'ih'  :1,
                                         \ 'ip'  :1,
                                         \ 'iz'  :1,
                                         \ 'ie'  :1
                                         \ }
        "--------------------------------------------------------------------------
        "=======[#BEST]===[#TextObj]===[#SMART]=======
        vmap v <Plug>(expand_region_expand)
        vmap <c-v> <Plug>(expand_region_shrink)
        "==================================================================================
        Plug 'machakann/vim-sandwich'
                nmap s <Nop>
                xmap s <Nop>
        "-------------------------------------------------------------
                let g:textobj_sandwich_no_default_key_mappings = 1
                omap ia <Plug>(textobj-sandwich-auto-i)
                xmap ia <Plug>(textobj-sandwich-auto-i)
                omap aa <Plug>(textobj-sandwich-auto-a)
                xmap aa <Plug>(textobj-sandwich-auto-a)
                "-----------------------------------------------
                " [ {(hello) ( noch ) ('Mal') (tomos) } tormos]

        "---[#SMART]---------[MySANDWICH]--------------------------------------------------
                vmap ss "zdi sympy.pprint(<c-r>z)<esc>
                vmap sp "zdi print(<c-r>z)<esc>
                vmap st "zdi<b><c-r>z</b><esc>
                vmap sh "zdi<?= <c-r>z ?><esc>
        "==================================================================================
        "<-- ah - bh -->
        Plug 'machakann/vim-swap'

        "===!!!=================================
        "Python text objects
        "Plug 'jeetsukumaran/vim-pythonsense'

        "-----------------------------------------------------------------------------------
        "---NoAutoClose-YCM-----------------------------------------------------------------
        "-----------------------------------------------------------------------------------
        Plug 'jiangmiao/auto-pairs'
                "   <M-o> : neline with indentation
                "   <M-a> : jump to of line
                "   <M-n> : jump to next pairs
                "   <M-e> : jump to end of pairs.
                "   Ctrl-V ) : insert ) without trigger the plugin.
                let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
                let g:AutoPairsShortcutToggle = '<M-p>'
                let g:AutoPairsShortcutFastWrap = '<M-e>'
                let g:AutoPairsShortcutJump = '<M-n>'
                let g:AutoPairsShortcutBackInsert = '<M-b>'
                let g:AutoPairsShortcuts = 1
                let g:AutoPairsMapBS = 1
                " insert a new indented line if cursor in pairs.
                let g:AutoPairsMapCR = 0
                " error in vimwiki <CR> Enter. but use upper inoremap can solve.
                let g:AutoPairsMapSpace = 0
                " error in abbreviations <space> auto expand.
                let g:AutoPairsCenterLine = 1
                let g:AutoPairsFlyMode = 1
                let g:AutoPairsMapCR=0
                let g:AutoPairsMapCh=1
                let g:AutoPairsDelete = '<M-5>'
        "==================================================================================
        Plug 'alvan/vim-closetag'
        let g:closetag_close_shortcut = '<leader>>'
        let g:closetag_filetypes = 'html,xhtml,phtml'
        let g:closetag_xhtml_filetypes = 'xhtml,jsx'
        "==================================================================================
        "{ sin ( cosin ( <b>'x2'</b> ) ) }
        "==================================================================================
        "======[#TextObj]======EndTO=======================================================
        "==================================================================================

        Plug 'lifepillar/vim-cheat40'
        Plug 'dalance/vseq.vim'
        Plug 'sk1418/HowMuch'
        Plug 'sk1418/Join'
        Plug 'salsifis/vim-transpose'
        " Plug 'vim-scripts/a.vim'
        "Plug 'voldikss/vim-hello-word'
        "=======================================
        Plug 'sk1418/QFGrep'
        Plug 'aghareza/vim-gitgrep'
        "----------------------------------------------------------------------------------
        Plug 'romainl/vim-qf'
        Plug 'yssl/QFEnter'
        "----------------------------------------------------------------------------------
        Plug 'brooth/far.vim'
        "--111-----------------------------------------------------------------------------
        Plug 'osyo-manga/vim-brightest'
                " let g:brightest#highlight = { "group" : "Define" }
                " let g:brightest#highlight = { "group" : "vimNumber" }
                " let g:brightest#highlight = { "group" : "vimVar" }
                " let g:brightest#highlight = { "group" : "op_lv0" }
                 let g:brightest#highlight = { "group" : "GruveBoxRedBold" }
                 let g:brightest#highlight = { "group" : "XboxGruen" }


        "-JAPAN-
        "----------------------------------------------------------------------------------
        Plug 'roxma/python-support.nvim'
                let g:python_support_python2_require = 0
                let g:python_support_python3_require = 0
        "----------------------------------------------------------------------------------
        "-222------------------------------------------------------------------------------
        Plug 'gastonsimone/vim-dokumentary/'
                "-=KKK=-
                "let g:dokumentary_docprgs = {'c': 'cdoc {0}', 'python': ''}
                let g:dokumentary_docprgs = {'c': 'cdoc {0}'}

        " echo g:dokumentary_docprgs["c"]
        " echo g:dokumentary_docprgs["python"]
        " apt-get install dictd dict-gcide dict
        "----------------------------------------------------------------------------------
        Plug 'fs111/pydoc.vim', {'external_commands': ['pydoc']}
        let g:ref_pydoc_cmd = 'pydoc'
        let g:ref_pydoc_complete_head = 1
        " let g:pydoc_cmd = 'python -m pydoc'
        " let g:pydoc_open_cmd = 'vsplit'
        " - If you want pydoc to switch to an already open tab with pydoc page,
        " let g:pydoc_use_drop=1
        " let g:pydoc_window_lines=15
        " - let g:pydoc_window_lines=0.5
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        " - let g:pydoc_highlight=0
        "----------------------------------------------------------------------------------
        " Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
        "----------------------------------------------------------------------------------
        Plug 'tyru/capture.vim'
        Plug 'thinca/vim-quickrun'

        "---light--COX---------------------------------------------------------------------
        Plug 'itchyny/lightline.vim'
        Plug 'sainnhe/lightline_foobar.vim'
        Plug 'mengelbrecht/lightline-bufferline'
        Plug 'jacoborus/tender.vim'
        "----------------------------------------
        Plug 'zefei/vim-wintabs'
        " Plug 'zefei/vim-wintabs-powerline'
        "----------------------------------------------------------------------------------
        Plug 'skywind3000/vim-preview'
        "VSSplit
        "----------------------------------------------------------------------------------
        Plug 'kshenoy/vim-signature'
        " :SignatureListMarkers         : List all markers
        "----------------------------------------------------------------------------------
        Plug 'machakann/vim-highlightedyank'
                let g:highlightedyank_highlight_duration = -1

        "----------------------------------------------------------------------------------
        Plug 'nathanaelkane/vim-indent-guides'
                let g:indent_guides_enable_on_vim_startup = v:true
                let g:indent_guides_exclude_filetypes = ['help', 'man']
                let g:indent_guides_auto_colors = 0
                autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   guibg=#331144
                autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=#331159
        "----------------------------------------------------------------------------------
        Plug 'sukima/xmledit/'
        "----------------------------------------------------------------------------------
        Plug 'sjl/gundo.vim'
        "----------------------------------------------------------------------------------
        Plug 'aperezdc/vim-template'
        "----------------------------------------------------------------------------------
        "-TODO Plug 'neomake/neomake'
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/Lynx-Offline-Documentation-Browser'
        "----------------------------------------------------------------------------------
        Plug 'mileszs/ack.vim'
        Plug 'jremmen/vim-ripgrep'
        "----------------------------------------------------------------------------------
        Plug 'Chun-Yang/vim-action-ag'
        Plug 'rking/ag.vim'
        Plug 'gabesoft/vim-ags'
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
        "----------------------------------------------------------------------------------
        Plug 'junegunn/fzf', { 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'pbogut/fzf-mru.vim'
           let g:fzf_mru_relative = 1
        "------------------------------------------------------------------------------------------
        Plug 'ddrscott/vim-side-search'
        "--heading and --stats are required!
        let g:side_search_prg = 'ag --word-regexp'
                                \. " --ignore='*.js.map'"
                                \. " --heading --stats -B 1 -A 4"
        "---------------------------------------------------------
        " Can use vnew or new
        let g:side_search_splitter = 'vnew'
        let g:side_search_split_pct = 0.4
        "------------------------------------------------------------------------------------------
        Plug 'alok/notational-fzf-vim'
                let g:nv_search_paths = ['~/' ]
                let g:nv_search_paths = ['/media/red/']
                let g:nv_search_paths = ['~/git/bTest/pyLabGitPdbPythonMode27']
                let g:nv_search_paths = ['~/git/']
        "--------------------------------------
        Plug 'kien/ctrlp.vim'
        Plug 'wincent/command-t'
"++AAA=Clap++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        Plug 'liuchengxu/vim-clap'
        let g:clap_provider_alias = {'hist:': 'command_history'}
        " let g:clap_open_action: Dict, { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit'}
        "========================================================
        hi default link ClapInput   Visual
        hi default link ClapDisplay Pmenu
        hi default link ClapPreview PmenuSel
        hi default link ClapMatches Search
        "========================================================
        "=ClapQuery will use the bold fg of Normal and the same bg of ClapInput
        hi ClapDefaultPreview          ctermbg=237 guibg=#3E4452
        hi ClapDefaultSelected         cterm=bold,underline gui=bold,underline ctermfg=80 guifg=#5fd7d7
        hi ClapDefaultCurrentSelection cterm=bold gui=bold ctermfg=224 guifg=#ffd7d7
        "========================================================
        hi default link ClapPreview          ClapDefaultPreview
        hi default link ClapSelected         ClapDefaultSelected
        hi default link ClapCurrentSelection ClapDefaultCurrentSelection
        "==================================================================================
"++AAA=Clap++}}}

        "==================================================================================
        Plug 'exvim/ex-matchit'
        "----------------------------------------------------------------------------------
        Plug 'ervandew/supertab'
        "----------------------------------------------------------------------------------
        Plug 'MarcWeber/vim-addon-mw-utils'
        Plug 'honza/vim-snippets'
        Plug 'SirVer/ultisnips'
        "------------------------------------------------------------------------------------------
        ":Tmux
        Plug 'tmux-plugins/vim-tmux'
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'edkolev/tmuxline.vim' " Keep tmux theme and vim theme in sync
        "------------------------------------------------------------------------------------------
        Plug 'xolox/vim-misc'
        "--------------------------------------------------------------------------
        Plug 'jreybert/vimagit'
        "===========================================================================
        Plug 'junegunn/gv.vim'
        "   - o or <cr> on a commit to display the content of it
        "   - o or <cr> on commits to display the diff in the range
        "   - O opens a new tab instead
        "   - gb for :Gbrowse
        "   - ]] and [[ to move between commits
        "   - q to close
        "--------------------------------------------------------------------------
        Plug 'ivyl/vim-bling'
                " let g:bling_time = 42
                let g:bling_time = 82
                let g:bling_color_fg = 'red'
                let g:bling_color_bg = 'green'
                " let g:bling_color_cterm = 'reverse'
                let g:bling_color_gui_fg = 'cyan'
                let g:bling_color_gui_bg = 'green'
        "------------------------------------------------------------------------------------------
        Plug 'majutsushi/tagbar'
                highlight TagbarHighlight   ctermfg=051 ctermbg=9 cterm=bold
                highlight TagListTagName    ctermfg=250
                highlight TagbarFoldIcon    ctermfg=051 ctermbg=9
                highlight TagbarHelp        ctermfg=051 ctermbg=9
        "----------------------------------------------------------------------------------
        Plug 'ludovicchabant/vim-gutentags'
        "----------------------------------------------------------------------------------
        Plug 'guns/xterm-color-table.vim'
        "Plug 'gko/vim-coloresque'
        "----------------------------------------------------------------------------------
        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/seoul256.vim'
        Plug 'junegunn/limelight.vim'
        " Color scheme
        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'flrnprz/plastic.vim', { 'as': 'plastic' }
        Plug 'flrnprz/candid.vim', { 'as': 'candid' }
        Plug 'joshdick/onedark.vim'
        "----------------------------------------------------------------------------------
        " Plug 'flazz/vim-colorschemes'
        " Plug 'morhetz/gruvbox'
        "------------------CAR--------------------------------------------------------------
        Plug 'lilydjwg/colorizer'
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/SearchComplete'
        "----------------------------------------------------------------------------------
        Plug 'zgpio/tree.nvim/'
        "----------------------------------------------------------------------------------
        Plug 'scrooloose/nerdtree'
        "----------------------------------------------------------------------------------
        Plug 'Xuyuanp/nerdtree-git-plugin'
                "-----------------------------------
                 let NERDTreeShowBookmarks=1
                 let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
                 let NERDTreeChDirMode=0
                 let NERDTreeMinimalUI = 1
                 let NERDTreeDirArrows = 1
                 let NERDTreeQuitOnOpen=1
                 let NERDTreeMouseMode=2
                 let NERDTreeShowHidden=1
                 let NERDTreeKeepTreeInNewTab=1
                 " always open NERDTree in the appropriate directory.

                 function! NERDTreeToggleInCurDir()

                         if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
                                 exe ":NERDTreeClose"
                         else
                                 if (expand("%:t") != '')
                                         exe ":NERDTreeFind"
                                 else
                                         exe ":NERDTreeToggle"
                                 endif
                         endif
                 endfunction

                 let g:NERDDefaultAlign = 'left'
                 let g:NERDTrimTrailingWhitespace = 1

                 " NERDTrees File highlighting
                 function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
                         exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
                         exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
                 endfunction

        "----------------------------------------------------------------------------------
        Plug 'ivalkeen/nerdtree-execute'
        Plug 'Linfee/nerdtree-open'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
         Plug 'mtth/scratch.vim'
        "----------------------------------------------------------------------------------
        " Plug 'francoiscabrol/ranger.vim'
        "----------------------------------------------------------------------------------
         Plug 'henrik/vim-qargs'
         "-----------------------------------------------------------
         Plug 'AndrewRadev/undoquit.vim'
        "---c-w+u------
         Plug 'maxbrunsfeld/vim-yankstack'
        "----------------------------------------------------------------------------------
        Plug 'easymotion/vim-easymotion'
                let g:EasyMotion_smartcase = 1
                "-Disable default mappings
                let g:EasyMotion_do_mapping = 0
        Plug 'wellle/visual-split.vim'
                " :VSSplit, :VSSplitAbove or :VSSplitBelow to create the split
                " :VSResize to execute the VSResize ex command on the selected range
                " nmap <C-W>r  <Plug>(Visual-Split-Resize)
                " nmap <C-W>s <Plug>(Visual-Split-Split)
        "==================================================================================
        Plug 'nvie/vim-flake8'
        "==================================================================================
        "----------------------------------------------------------------------------------
        Plug 'google/vim-maktaba'
        "-configuration of maktaba plugins.
        Plug 'google/vim-glaive'
                let g:myplugin_enablefeature = 1
                let g:myplugin_defaultdir = $HOME
                let g:myplugin_weirdmode = 'm'
        Plug 'google/vim-syncopate'
        "----------------------------------------------------------------------------------
        "==================================================================================
        Plug 'google/vim-codefmt'
        "--------------------------------555-----------------------------------------------
        Plug 'godlygeek/tabular'
        "----------------------------------------------------------------------------------
                " abc,def,ghi , some , shrt
                " a,b,c
        "----------------------------------------------------------------------------------
        Plug 'dhruvasagar/vim-table-mode'
                " Use this option to disable the plugin: 1
                " let g:loaded_table_mode = 0
                let g:table_mode_auto_align = 1
                let g:table_mode_corner_corner='+'
                let g:table_mode_header_fillchar='='
                let g:table_mode_align_char = ':'
                let g:table_mode_delete_row_map = '<M-d>'
                let g:table_mode_delete_column_map = '<M-c>'
                let g:table_mode_add_formula_map = '<M-f>'
                let g:table_mode_eval_formula_map = '<M-e>'
                let g:table_mode_cell_text_object_i_map = '<M-i>'
                let g:table_mode_sort_map = '<M-s>'
                " :TableModeToggle
                " +-------+---------+--------+
                " | hallo | albert  | montag |
                " +=======+=========+========+
                " | isr   | student | id     |
                " +-------+---------+--------+

        "===BOOKMARK=======================================================================
        Plug 'MattesGroeger/vim-bookmarks'
                let g:bookmark_no_default_key_mappings = 1
                function! BookmarkMapKeys()
                        nmap mm :BookmarkToggle<CR>
                        nmap ma :BookmarkShowAll<CR>
                        nmap mi :BookmarkAnnotate<CR>
                        nmap mn :BookmarkNext<CR>
                        nmap mp :BookmarkPrev<CR>
                        nmap mc :BookmarkClear<CR>
                        nmap mx :BookmarkClearAll<CR>
                        nmap mkk :BookmarkMoveUp
                        nmap mjj :BookmarkMoveDown
                endfunction
                "------------------------------------------------------
                highlight BookmarkSign ctermbg=10 ctermfg=1 guifg=#cc1122 guibg=#FF5F00
                highlight BookmarkLine ctermbg=10 ctermfg=1 guibg=#ff5f00 guifg=#000088
                highlight BookmarkAnnotationLine ctermbg=9 ctermfg=1
                highlight BookmarkAnnotationSign ctermbg=9 ctermfg=1
                "------------------------------------------------------
                let g:bookmark_auto_close = 1
                let g:bookmark_highlight_lines = 1
                let g:bookmark_show_warning = 0
                let g:bookmark_show_toggle_warning = 0
                let g:bookmark_sign ='BM'
                let g:bookmark_highlight_lines = 1
                let g:bookmark_save_per_working_dir = 1
                let g:bookmark_auto_save = 1
                let g:bookmark_save_per_working_dir = 1
                "------------------------------------------------------
                "let g:bookmark_manage_per_buffer = 1`
                "let g:bookmark_auto_save_file = '/bookmarks'`

        "==================================================================================
        "==444==================[FRAME]====================================================================
        "==================================================================================
        Plug 'blueyed/vim-diminactive'
        ":DimInactiveSyntaxOn
        let g:diminactive_use_syntax = 1
        let g:diminactive_enable_focus = 1
        let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help', 'tagbar']
        "==================================================================================
        "===================[#FZF]==[OK]===================================================
        "==================================================================================
        Plug 'runfalk/vim-fzf-extended'
                "-FZFBuffers
                "-FZFFiles
                "-FZFDefinitions
        "==========================[OnTOP]=================================================
        Plug 'mhinz/vim-startify'
        "==================================================================================
        Plug 'ryanoasis/vim-devicons'
        "==================================================================================
        Plug 'vim-scripts/timestamp.vim'
        "===========================[Pyy]==================================================
        Plug 'metakirby5/codi.vim'
        "==================================================================================
        "----------------------[#SMART]---------------------------------------------------
        "==================================================================================
        Plug 'tylerhunt/vim-spark'
        Plug 'vim-scripts/Emmet.vim'
        let g:user_emmet_settings = {
                                \  'indentation' : '  ',
                                \  'perl' : {
                                \    'aliases' : {
                                \      'req' : 'require '
                                \    },
                                \    'snippets' : {
                                \      'use' : "use strict\nuse warnings\n\n",
                                \      'warn' : "warn \"|\";",
                                \    }
                                \  }
                                \}

        let g:user_emmet_expandabbr_key = '<c-\>'
        let g:use_emmet_complete_tag = 1
        "----------------------------------------------------------------------------------
        " div>p#foo
        " div>p#foo$*2
        " div>p#foo$*2>div.baran
        "----------------------------------------------------------------------------------
        " HTML / CSS / XML Bundle
        " Plug 'tpope/vim-haml', {'for': ['haml', 'sass', 'scss']}
        " Plug 'mattn/emmet-vim'
        " Plug 'ap/vim-css-color'
        " Plug 'amadeus/vim-xml'
        "----------------------------------------------------------------------------------

        "==================================================================================
        "========================START==[#REPL]============================================
        "==================================================================================
        Plug 'jalvesaq/vimcmdline'
                let cmdline_vsplit      = 1      " Split the window vertically
                let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
                let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
                let cmdline_term_height = 15     " Initial height of interpreter window or pane
                let cmdline_term_width  = 80     " Initial width of interpreter window or pane
                let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
                let cmdline_outhl       = 1      " Syntax highlight the output
                let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)
                let cmdline_app         = {}
                " let cmdline_app['python'] = 'ptipython3'
                " let cmdline_app['ruby']   = 'pry'
                " let cmdline_app['sh']     = 'bash'
                if has('gui_running') || &termguicolors
                        let cmdline_color_input    = '#9e9e9e'
                        let cmdline_color_normal   = '#00afff'
                elseif &t_Co == 256
                        let cmdline_color_input    = 247
                        let cmdline_color_normal   =  39
                        let cmdline_color_number   =  51
                        let cmdline_color_integer  =  51
                        let cmdline_color_float    =  51
                        let cmdline_color_complex  =  51
                        let cmdline_color_negnum   = 183
                        let cmdline_color_negfloat = 183
                        let cmdline_color_date     =  43
                        let cmdline_color_true     =  78
                        let cmdline_color_false    = 203
                        let cmdline_color_inf      =  39
                        let cmdline_color_constant =  75
                        let cmdline_color_string   =  79
                        let cmdline_color_stderr   =  33
                        let cmdline_color_error    =  15
                        let cmdline_color_warn     =   1
                        let cmdline_color_index    = 186
                endif
        "==================================================================================
        "=========================END:=[#REPL]=============================================
        "==================================================================================
        Plug 'Shougo/echodoc.vim'
                set cmdheight=2
                " set noshowmode
                let g:echodoc_enable_at_startup = 1
                let g:echodoc#type = 'virtual'
                let g:echodoc#type = 'echo'
        "       let g:echodoc#type = 'floating'
        "       - change Pmenu to your highlight group
        "       highlight link EchoDocFloat Pmenu
        "==================================================================================
        Plug 'KabbAmine/zeavim.vim'
        "======[#ADVANCED]=================================================================
        " Plug 'junegunn/vim-pseudocl'

        "=================================================================================
        "===[OK]======[EasyAlign]====[SMART]==============================================
        "=================================================================================
        Plug 'junegunn/vim-easy-align'
        " Start interactive EasyAlign for a motion/text object (e.g. gaip)
        " nmap ga <Plug>(EasyAlign)
        "=================================================================================

        "=================================================================================
        Plug 'janko-m/vim-test'
                let test#strategy = 'neoterm'
                let test#strategy = "dispatch"
        " let test#python#runner = 'pytest'
        " Runners available are 'pytest', 'nose', 'nose2', 'djangotest', 'djangonose'
        " and Python's built-in 'unittest'
        "==================================================================================
        Plug 'alfredodeza/pytest.vim'
        "=================================================================================
        Plug 'voldikss/vim-translate-me'
        "=================================================================================
        Plug 'iamcco/dict.vim'
                let g:api_key = "1932136763"
                let g:keyfrom = "aioiyuuko"
        "=================================================================================
        Plug 'ron89/thesaurus_query.vim'
        let g:tq_mthesaur_file="/home/red/git/bTest/sPot/DYCT/mthesaurGu.txt"
        "=================================================================================
        Plug 'unblevable/quick-scope'
        "====================NICE==========================================================
        Plug 'moll/vim-bbye'
        ":bufdo :Bdelete
        ":Bwipeout
        "==================================================================================
        Plug 'brookhong/cscope.vim'
        "============================TESTING===============================================
        "- Plug 'vim-scripts/CRefVim'
        "----------------------------------------------------------------------------------
        Plug 'vifm/neovim-vifm'
                let $MYVIFMRC='~/.config/vifm/vifmrc'
                let g:vifmSplitWidth = 88

        "====!!!===LGHistory===[#FRESH]===================================
        Plug 'm42e/vim-lgh'
        "=================[#TODO]===========================================================
        Plug 'sheerun/vim-polyglot'
        "==========[#FRESH]===NICE==Pyy====================================================
        Plug 'vim-scripts/underlinetag'
        "----------------------------------------------------------------------------------
        "==========[#FRESH]===NICE==Pyy====================================================
        "----------------------------------------------------------------------------------
        " TagHighlight highlight names of class, variable, types in code.
        " Usage: :UpdateTypesFile
        Plug 'vim-scripts/TagHighlight'
                if !exists('g:TagHighlightSettings')
                        let g:TagHighlightSettings = {}
                endif
                let g:TagHighlightSettings['TagFileName'] = 'tags'
                let g:TagHighlightSettings['CtagsExecutable'] = 'ctags'
                let g:TagHighlightSettings['CtagsVariant'] = 'exuberant'
                let g:TagHighlightSettings['CtagsArguments'] = []
                let g:TagHighlightSettings['CtagsExtraArguments'] = []
                let g:TagHighlightSettings['ForcePythonVariant'] = 'if_pyth3'
                let g:TagHighlightSettings['PythonVariantPriority'] = [
                                        \ "if_pyth3", "if_pyth", "python", "compiled",
                                        \ ]
        "======================================777=================================================
        " [#SMART] <c-a> and <c-x> to toggle true/false, on/off, increment dates or weekday
        "==========================================================================================
        Plug 'nishigori/increment-activator'
        "==========================================================================================
        "----------------------------------------------------------------------------------
        " Plug 'jacobsimpson/nvim-example-python-plugin'
        "----------------------------------------------------------------------------------
        " Plug 'vigoux/LanguageTool.nvim'
        " let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'
        " hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        " hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none
        "----------------------------------------------------------------------------------
        " *vim-grammarous* is a powerful grammar checker for Vim.  Simply do
        " |:GrammarousCheck| to see the powerful checking. This plugin automatically
        " downloads LanguageTool, which requires Java 8+.
        " Plug 'rhysd/vim-grammarous'
        "----------------------------------------------------------------------------------
        " Plug 'xerron/wordbyword.vim'
        "==================================================================================
        Plug 'elzr/vim-json'
        Plug 'mrk21/yaml-vim'
        Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
        "==================================================================================
        " Plug 'w0rp/ale'
        " let g:ale_sign_column_always = 0
        " let g:ale_emit_conflict_warnings = 0
        " let g:ale_lint_on_text_changed = 'never'
        " let g:ale_set_loclist = 0
        " let g:ale_set_quickfix = 1
        " let g:ale_set_signs = 0
        "==================================================================================
        hi link ALEErrorSign    custRed
        hi link ALEWarningSign  custYellow
        hi link ALEInfoSign     custGreen
        "==================================================================================
        let diagnosticsDisplaySettings={
                                \       '1': {
                                \           'name': 'Error',
                                \           'texthl': 'ALEError',
                                \           'signText': 'cR',
                                \           'signTexthl': 'ALEErrorSign',
                                \           'virtualTexthl': 'custRed',
                                \       },
                                \       '2': {
                                \           'name': 'Warning',
                                \           'texthl': 'ALEWarning',
                                \           'signText': 'cW',
                                \           'signTexthl': 'ALEWarningSign',
                                \           'virtualTexthl': 'custYellow',
                                \       },
                                \       '3': {
                                \           'name': 'Information',
                                \           'texthl': 'ALEInfo',
                                \           'signText': 'cI',
                                \           'signTexthl': 'ALEInfoSign',
                                \           'virtualTexthl': 'custGreen',
                                \       },
                                \       '4': {
                                \           'name': 'Hint',
                                \           'texthl': 'ALEInfo',
                                \           'signText': 'cH',
                                \           'signTexthl': 'custGreen',
                                \       },
                                \  }

        let g:LanguageClient_diagnosticsDisplay=diagnosticsDisplaySettings
        "==[#BEST]======[#QMENU]=========================================================================
        Plug 'skywind3000/quickmenu.vim'
        "==[#BEST]======[#LeaderGuide]=====================================================
        Plug 'hecal3/vim-leader-guide'
        "==================================================================================
        "---SSTRACH--------OnTOP-----------------------------------------------------------
        " Plug 'justincampbell/vim-eighties'
        " let g:eighties_enabled = 1
        " let g:eighties_minimum_width = 72
        " let g:eighties_extra_width = 0
        " let g:eighties_compute = 1
        " let g:eighties_bufname_additional_patterns = ['fugitiveblame']

        "==================================================================================
        "--[#BEST]-:StmSrch-------------------------------------------------------------------
        Plug 'msbmsb/stem-search.vim'
        "==================================================================================
        Plug 'vlmarek/DiffGoFile'

"++AAALSP+AltDeo2Instead+DeoJedi+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "++Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'prabirshrestha/vim-lsp'
        "-333- Plug 'prabirshrestha/asyncomplete.vim'
        "-333- Plug 'prabirshrestha/asyncomplete-lsp.vim'
        if executable('pyls')
        " pip install python-language-server
        "==================================================
        au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'whitelist': ['python'],
                \ })
        endif
        "==================================================
        Plug 'autozimu/LanguageClient-neovim', {
                                \ 'branch': 'next',
                                \ 'do': 'bash install.sh',
                                \ }
        "==================================================
"++AAALSP++}}}

"++AAA+DeoJedi++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        source ~/git/bTest/sPot/s9PlugDeo.vim
        Plug 'davidhalter/jedi-vim'
        Plug 'zchee/deoplete-jedi'
"++AAA+DeoJedi++}}}

        "----------------------------------------------------------------------------------
        "========[#NEXT]========NextBigThig================================================
        "----------------------------------------------------------------------------------
        " Plug 'amiorin/vim-project'
        " Plug 'dmonllao/vim-IDE'
        Plug 'tpope/vim-projectionist'
        " Plug 'dyng/ctrlsf.vim'
        "----------------------------------------------------------------------------------
        "========[#NEXT]=======NextBigThig2================================================
        "----------------------------------------------------------------------------------
        " Plug 'tpope/vim-apathy'
        " Plug 'tpope/vim-scriptease'
        " Plug 'tpope/vim-classpath'
        "-------------------------------------------------
        Plug 'tpope/vim-dispatch'
        let g:dispatch_compilers = {
                                \ 'latex': 'tex',
                                \ 'bundle exec': ''}
        "==================================================================================
        Plug 'vim-scripts/repmo.vim'
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'frazrepo/vim-rainbow'
        "----------------------------------------------------------------------------------
        Plug 'mhinz/vim-grepper'
        "----------------------------------------------------------------------------------
        Plug 'justinmk/vim-dirvish'
        "----------------------------------------------------------------------------------
        Plug 'mhinz/vim-halo'
        "----------------------------------------------------------------------------------
        " Plug 'mhinz/vim-lookup'
        " autocmd FileType vim nnoremap <buffer><silent> <c-]>  :call lookup#lookup()<cr>
        " autocmd FileType vim nnoremap <buffer><silent> <c-t>  :call lookup#pop()<cr>
        "----------------------------------------------------------------------------------
        Plug 'chrisbra/unicode.vim', {'on': ['UnicodeName', 'UnicodeTable']}

        "==================================================================================
        "----------------------------------------------------------------------------------
        "-Maxima-
        "----------------------------------------------------------------------------------
        Plug 'kovisoft/slimv'
        Plug 'baruchel/vim-notebook'
        "----------------------------------------------------------------------------------
        " Plug 'jvirtanen/vim-octave'
        " Plug 'ekalinin/Dockerfile.vim'
        " Plug 'hynek/vim-python-pep8-indent'
        " Plug 'tpope/vim-characterize'
        " Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}

        " Plug 'twe4ked/vim-diff-toggle'
        " Plug 'tyru/caw.vim'
        " Plug 'nanotech/jellybeans.vim'
        " Plug 'Shougo/junkfile.vim'
        " Plug 'idanarye/vim-merginal'
        " Plug 'esneider/YUNOcommit.vim'
        " Plug 'notalex/vim-run-live'
        "----------------------------------------------------------------------------------
        " Plug 'tweekmonster/helpful.vim', {'on': 'MANUALLY'}
        " Plug 'voldikss/vim-search-me'
        " Plug 'rudrab/vimf90'
        " " Plug 'laurentgoudet/vim-howdoi.git'
        " Plug 'jtmkrueger/vim-c-cr'

        " Plug 'openuado/vimtips-fortune'
        " Plug 'szw/vim-dict'
        " Plug 'amdt/vim-niji'
        Plug 'vim-scripts/vis'
        "----------------------------------------------------------------------------------
        "-vis.vim ??
        "==================================================================================
        Plug 'vim-scripts/mru.vim'
                let MRU_Max_Entries = 1000
                let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix
                let MRU_Window_Height = 20
                highlight link MRUFileName GruvboxRedBold
                let MRU_Filename_Format={'formatter':'v:val', 'parser':'.*'}
        ":MRU
        "----------------------------------------------------------------------------------
        "---REST----------------------------------------------------------------------------
        "send css js to browser !!!
        ":BLReloadPage
        Plug 'jaxbot/browserlink.vim'
        "----------------------------------------------------------------------------------
        " Plug 'tyru/open-browser.vim'
                " let g:netrw_nogx = 1
                " vmap gx <Plug>(openbrowser-smart-search)
                " nmap gx <Plug>(openbrowser-search)
        "----------------------------------------------------------------------------------
        Plug 'waiting-for-dev/vim-www'
                let g:www_launch_browser_command = "firefox {{URL}} &"
                ":Wopen opens any given URL. E.g.:
                ":Wsearch google how to learn vim
                let g:www_urls = {
                                \ 'vim' : 'http://www.vim.org',
                                \ }
                let g:www_default_search_engine = 'google'
        "---------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        Plug 'sickill/vim-pasta'
                let g:pasta_disabled_filetypes = ['python', 'coffee', 'yaml']
                let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'sh']
                let g:pasta_paste_before_mapping = ',P'
                let g:pasta_paste_after_mapping = ',p'

        "----------------------------------------------------------------------------------
        Plug 'qpkorr/vim-bufkill'
                " :bun/:bd/:bw to close the window as well (vim command), or
                " :BUN/:BD/:BW to leave the window intact (this script).
                " :BB/:BF
                " :BA

        Plug 'schickling/vim-bufonly'
                "BufOnly :Bonly, :BOnly, :Bufonly
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        "--Python--
        "----------------------------------------------------------------------------------
        " Plug 'psf/black', {'for': 'python'}
                " autocmd BufWritePre *.py execute ':Black'
                " nnoremap <F9> :Black<CR>
        "----------------------------------------------------------------------------------
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        " Plug 'psf/black'

        Plug 'sbdchd/neoformat'
                " :Neoformat jsbeautify
                " :Neoformat! python yapf
                " augroup fmt
                " autocmd!
                " autocmd BufWritePre * undojoin | Neoformat
                " augroup END

        "---TODO---------------------------------------------------------------------------
        Plug 'SkyLeach/pudb.vim'
        " if has('nvim')
        "         let g:python_host_prog='~/.virtualenvs/neovim2/bin/python'
        "         let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python'
        "         - set the virtual env python used to launch the debugger
        "         let g:pudb_python='~/.virtualenvs/poweruser_tools/bin/python'
        "         - set the entry point (script) to use for pudb
        "         let g:pudb_entry_point='~/src/poweruser_tools/test/test_templates.py'
        "         - Unicode symbols work fine (nvim, iterm, tmux, nyovim tested)
        "         let g:pudb_breakpoint_symbol='BP'
        " endif
        "--------------------TODO----------------------------------------------------------
        " Plug 'google/vim-coverage'
        "----------------------------------------------------------------------------------
        " Plug 'junegunn/vader.vim'
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        Plug 'cespare/vim-toml'

call plug#end()
"=eHapyEnd1=
"++++++AAA++}}}
"++AAA[LLine]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        set laststatus=2
        set statusline=%{StatusWindowNr()}
        set statusline+=%([\%R%M]\ %)
        set statusline+=%<%f
        set statusline+=%(\ %y%)
        set statusline+=%=
        set statusline+=%([git:%{StatusGitBranch()}]%)
        set statusline+=%4(%p%%%)
        "==================================================================================
        autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
        "==================================================================================
        let g:lightline                  = {}
        let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
        "==================================================================================
                let g:lightline = {
                                        \ 'colorscheme': 'tender',
                                        \ 'enable': {
                                        \   'statusline': 1,
                                        \   'tabline': 0,
                                        \ },
                                        \ 'active': {
                                        \   'left': [ [ 'mode', 'paste' ],
                                        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                                        \ },
                                        \ 'inactive': {
                                        \   'left': [
                                        \       [ 'filename' ],
                                        \       [ ],
                                        \   ]
                                        \ },
                                        \ 'mode_map': {
                                        \ 'n' : 'N13SYN',
                                        \ 'i' : 'INSERT',
                                        \ 'R' : 'REPLACE',
                                        \ 'v' : 'VISUAL',
                                        \ 'V' : 'V-LINE',
                                        \ "\<C-v>": 'V-BLOCK',
                                        \ 'c' : 'COMMAND',
                                        \ 's' : 'SELECT',
                                        \ 'S' : 'S-LINE',
                                        \ "\<C-s>": 'S-BLOCK',
                                        \ 't': 'TERMINAL',
                                        \ },
                                        \ 'component_function': {
                                        \   'gitbranch': 'fugitive#head'
                                        \ },
                                        \ 'separator': { 'left': 'L', 'right': 'R' },
                                        \ 'subseparator': { 'left': '|', 'right': '|' }
                                \ }

"++++++AAA++}}}
"++AAA[SourceMe]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"
        "==========================================================================================
        if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
                let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
        else
                let entry_format .= '. entry_path'
        endif
        "==============================================
        source ~/git/bTest/sPot/s9legoABB.vim
        source ~/git/bTest/sPot/s9legoFunc.vim
        source ~/git/bTest/sPot/SYPLUG/fliplr.vim
        source ~/git/bTest/sPot/SYPLUG/increment.vim
        " source ~/git/bTest/sPot/s9legoCyan.vim
        "==============================================
"++++++AAA++}}}
"++AAA[#CYAN]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        set background=dark
        set termguicolors
        " source ~/git/bTest/sPot/sJellybeans.vim
        " source ~/git/bTest/sPot/gruvbox.vim
        source ~/git/bTest/sPot/sGruvbox.vim
        " source MYX/n-badwolf.vim
        " colorscheme desert
        " colorscheme badwolf
        " colorscheme molokai
        " colorscheme mopkai
        " colorscheme evokai
        " colorscheme inkpot
        " colorscheme jellybeans
        " colorscheme neonwave
        " colorscheme gruvbox
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "=================================================================================
        " source ~/git/bTest/sPot/s9legoCyan.vim
        set listchars=tab:▸\ ,eol:¬,trail:⋅
        hi NonText ctermfg=16 guifg=#Fa3a19
        hi SpecialKey ctermfg=16 guifg=#ff00af

        "==================================================================================
        hi MatchParen gui=bold  guifg=yellow guibg=#FF0000
        "==================================================================================
        hi CursorN ctermfg=15 guifg=#fdff63 ctermbg=166 guibg=#0df6e3
        hi CursorN ctermfg=15 guifg=#fdff63 ctermbg=166 guibg=#ffffff
        hi InsertCursor  ctermfg=15 guifg=#0e4411 ctermbg=37  guibg=#FF4020
        hi VisualCursor  ctermfg=15 guifg=#0df6e3 ctermbg=125 guibg=#cc09aa
        hi ReplaceCursor ctermfg=15 guifg=#fd56e3 ctermbg=65  guibg=#00ff00
        hi CommandCursor ctermfg=15 guifg=#fdff63 ctermbg=166 guibg=#FF0000
        "==================================================================================
        hi link Halo GruvboxRedBold
        hi Halo guifg=white guibg=#F92672 ctermfg=white ctermbg=197
        "==================================================================================
        let g:underlinetag_syntax = 'syntax keyword UnderlineTag %s containedin=ALLBUT,.*String.*,.*Comment.*,cIncluded,.*Function.*'
        let g:underlinetag_highlight = 'highlight UnderlineTag gui=underline cterm=underline term=underline'
        "==================================================================================
        set cursorcolumn
        set colorcolumn=84,92,100,108,116
        hi ColorColumn    ctermbg=14   guibg=#005500
        hi CursorLine    guibg=#600060   gui=underline cterm=underline  guisp=#FF0000
        hi CursorLine    guibg=#000099   gui=underline cterm=underline  guisp=#FF0000
        hi cursorcolumn   ctermbg=16 guibg=#000099
        ""==================================================================================
        hi LineNr        ctermbg=17 ctermfg=15   guibg=#5fafdf  guifg=#ffffff
        "==================================================================================
        "::::::[#CYAN]::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==================================================================================
        set wildmenu
        "black-List
        set wildmode=list:longest
        "blackGreen-List
        set wildmode=list:full
        "==================================================================================
        set wildignore+=*.pdf,*.swp,*.[ao],*~,*.db
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
"+++++++AAA++}}}
"++AAA+[#NMODE]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "=============================================
        nnoremap zp <Plug>yankstack_substitute_older_paste
        nnoremap zn <Plug>yankstack_substitute_newer_paste
        "------------------------------------------------------------------------------------------
        "Join-Line
        nnoremap H mzJ`z
        "--------------------------------------------------------------------------
        nnoremap  <Esc><Esc> :<C-u>set nopaste<CR>:nohlsearch<CR>
        "------------------------------------------------------------------------------------------
        "---Reselect-last-pasted txt---------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        nnoremap gv `[v`]
        nnoremap <M-w> viw
        nnoremap <M-v> viw
        nnoremap <M-\> vip
        "------------------------------------------------------------------------------------------
        "-Enter-New-Line
        nnoremap <cr> o<esc>
        "------------------------------------------------------------------------------------------
        "-Smart Enter
        inoremap <silent><expr> <CR> (pumvisible() && bufname('%') !=# '[Command Line]' ? "\<C-e>\<CR>" : "\<C-g>u\<CR>")
        "------------------------------------------------------------------------------------------
        "-Go to the first non-blank character of the line after paragraph motions
        noremap } }^
        nnoremap > v>
        nnoremap < v<
        vnoremap < <gv
        vnoremap > >gv
        "------------------------------------------------------------------------------------------
        "-Allow using the repeat operator with a visual selection (!)
        vnoremap . :normal .<CR>
        "------------------------------------------------------------------------------------------
        " gi already moves to :last place you exited insert mode!, so we'll map gI to
        nnoremap g' `.
        "------------------------------------------------------------------------------------------
        nnoremap <BS> X
        noremap j gj
        noremap k gk
        noremap gj j
        noremap gk k
        "------------------------------------------------------------------------------------------
        nnoremap Y y$
        "------------------------------------------------------------------------------------------
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
        nnoremap <Leader>d <Plug>DictSearch
        nnoremap <Leader>t :!goldendict <C-r><C-w><CR>
        nnoremap <Leader>s <Plug>(textobj-diff-hunk-n)
        nnoremap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
        "==========================================================================================
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>
        "==================================================================================
        let g:rainbow_active = 1
        let g:rainbow_guifgs = ['cyan', 'DarkOrange1', 'RoyalBlue1', 'FireBrick', 'DarkOrchid1']
        "==================================================================================
        "--------------------------FuncArgsSwap----------------------------------------------------
        nnoremap ah <Plug>(swap-prev)
        nnoremap bh <Plug>(swap-next)
        "==========================================================================================
        "---PlusMinus------------------------------------------------------------------------------
        "==========================================================================================
        nnoremap ( <c-x>:y x\|@x<cr>
        nnoremap ) <c-a>:y x\|@x<cr>
        "------------------------------------------------------------------------------------------
        "===Control-] pop open a window and show the tag there.====================================
        "------------------------------------------------------------------------------------------
        nnoremap <M-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
        " Pressing ,ss will toggle and untoggle spell checking
        nnoremap <leader>ss :setlocal spell!<cr>
        nnoremap <leader>sn ]s
        nnoremap <leader>sp [s
        nnoremap <leader>sa zg
        nnoremap <leader>s? z=
        "******************************************************************************************
        "================================[#ulti]===================================================
        "******************************************************************************************
        " let g:ulti_expand_or_jump_res = 0
        " let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/UltiSnips', $HOME.'/.config/smithers/UltiSnips']
        "---------------------------------------------------------------------------------
        let g:UltiSnipsSnippetDirectories = ['~/git/bTest/sPot/MUltiSnips']
        """""""""""""""""""""""""""""""""
        " hallo meine [#SMART] ulti-box "
        """""""""""""""""""""""""""""""""
        let g:UltiSnipsListSnippets ="<c-q>"
        let g:UltiSnipsExpandTrigger="<C-b>"
        let g:UltiSnipsJumpForwardTrigger="<C-b>"
        let g:UltiSnipsJumpBackwardTrigger="<C-k>"
        "---------------------------------------------
        nnoremap <leader>e :UltiSnipsEdit<CR>
        "=============================================

"+++++++++AAA++}}}


"++AAA++[#IMODE]+++[VimOmni]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        imap <expr><M-w> fzf#vim#complete#word({'left': '20%'})
        imap <M-l> <plug>(fzf-complete-line)
        "------------------------------------------------------------
        imap <expr> <M-0> fzf#vim#complete(fzf#wrap({
                                \ 'prefix': '^.*$',
                                \ 'source': 'rg -n ^ --color always',
                                \ 'options': '--ansi --delimiter : --nth 3..',
                                \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

        "**********************************************************************************

        silent! set complete& completeopt=menu infercase noshowfulltag
        "-----------------------------------------------------------------------------------
        " set completeopt+=menu
        " set completeopt+=preview
        " set completeopt=menuone,menu,longest,preview
        "-----------------------------------------------------------------------------------
        " ??? completefunc
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        set complete=.,w,b,t,i,u,kspell
        set complete+=k
        "==================================================================================
        "==================================================================================
        inoremap <silent> <C-o> <C-x><C-o>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-v> <C-x><C-v>
        inoremap <silent> <C-]> <C-x><C-]>
        inoremap <silent> <C-0> <C-x><C-k>
        "inoremap <silent> <C-l> <C-x><C-l>
        "inoremap <silent> <C-u> <C-x><C-u>
        "imap <C-j> <C-X><C-O>
        "set Ctrl+j in insert mode, like VS.Net
        "==================================================================================
        "----------------------------------------------------------------------------------
        inoremap <C-a> <C-o>^
        inoremap <C-e> <End>
        "------------------------------InsertMode Scroll-----------------------------------
        inoremap <M-j> <C-X><C-E>
        inoremap <M-k> <C-X><C-Y>
        "==================================================================================
        "------------------------------------------
        inoremap <M-;> <C-R>=InsertAtEnd(';')<CR>
        inoremap <M-,> <C-R>=InsertAtEnd(',')<CR>
        inoremap <M-d> <C-o>cb<Esc><Right>
        inoremap <C-d> <C-o>cw<Esc><Right>
        inoremap <C-U> <C-G>u<C-U>
        "------------------------------------------
        " Movement in insert mode
        inoremap <C-h> <C-o>h
        inoremap <C-l> <C-o>a
        inoremap <C-j> <C-o>j
        inoremap <C-k> <C-o>k
        inoremap <C-^> <C-o><C-^>
        "------------------------------------------


"++++++++++AAA++}}}
"++AAA+[#VMODE]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "=============================================
        vnoremap <Tab> >gv
        vnoremap <Backspace> <gv
        "=============================================
        vmap <M-c> :w !cat >> ./zbuf<CR>
        "=============================================
        vmap     dg  :diffget<CR>
        vmap     dp  :diffput<CR>
        nnoremap do  :diffoff!<cr>
        "=============================================
        " Start interactive EasyAlign in visual mode (e.g. vipga)
        xmap ga <Plug>(EasyAlign)
        "=============================================
        "=============================================
        "=============================================
        "=============================================
"+++++++++AAA++}}}
"++AAA++[#NAVI]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------------------------------------------------------------------------------
        nnoremap <c-o> <c-o>zz
        nnoremap <c-i> <c-i>zz
        "------------------------
        nmap  n nzz
        nmap  N Nzz
        nmap  g* g*zz
        nmap  g# g#zz
        "------------------------
        nnoremap <tab>     :bn<cr>
        nnoremap <s-tab>   :bp<cr>
        "------------------------
        nnoremap ZZ <Nop>
        nnoremap ZZ mzzt1<c-u>`z
        nnoremap MM <Nop>
        nnoremap MM mzzt36<c-u>`z
        "------------------------
        "###Accordion############
        "------------------------
        nnoremap <C-M-j> <C-W>j<C-W>_
        nnoremap <C-M-k> <C-W>k<C-W>_
        nnoremap <C-M-=> <C-W>=
        "------------------------
        nnoremap <M-right> :vertical resize +3<cr>
        nnoremap <M-left>  :vertical resize -3<cr>
        nnoremap <M-up>    :resize -3<cr>
        nnoremap <M-down>  :resize +3<cr>
        "==================================================================================
        "------------------SCROLL----------------------------------------------------------
        "==================================================================================
        nnoremap <S-Up> :PreviewScroll -1<cr>
        nnoremap <S-down> :PreviewScroll +1<cr>
        "==========================================================================================
        " fun! ScrollOtherWindow(dir)
        "         if a:dir == "down"
        "                 let move = "\<C-E>"
        "         elseif a:dir == "up"
        "                 let move = "\<C-Y>"
        "         endif
        "         exec "normal \<C-W>p" . move . "\<C-W>p"
        " endfun
        " nnoremap <silent> <C-Down> :call ScrollOtherWindow("down")<CR>
        " nnmapmap <silent> <C-Up> :call ScrollOtherWindow("up")<CR>
        "==================================================================================
"+++++++++++AAA++}}}
"++AAA++[#FORMAT]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        vmap <M-h> =
        nmap cc  gcl
        nnoremap W gwip
        nnoremap ;a =ip
"++++++++++AAA++}}}
"++AAA++[#EXEC]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------------------------------------------------------------------------------
        cnoremap <C-A> <Home>
        cnoremap <C-E> <End>
        cnoremap <C-d> <Del>
        "==========================================================================================
        " Transport Down Ex:
        "==========================================================================================
        nnoremap ,w :<C-r>=expand("<cword>")<CR>
        nnoremap ;w :<C-r>=getline(".")<CR>
        "==========================================================================================
        "-For when you forget to sudo.. Really Write the file.
        cmap w!! w !sudo tee % >/dev/null
        "==========================================================================================
        function Inci(...)
                let result = g:i
                let g:i += a:0 > 0 ? a:1 : 1
                return result
        endfunction

        " Suppose you want to replace each occurrence of abc with xyz_N
        " where N is an ascending number (xyz_1, xyz_2, xyz_3, and so on).
        " let i = 1 | %s/AAA/\='BBB-' . Inci() .'CCC'/g

        "==========================================================================================
        "::::::::::::::::::::::::::::-REPL-Space??:::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        let cmdline_map_start          = '<LocalLeader>s'
        let cmdline_map_send           = '<Space>'
        let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
        let cmdline_map_source_fun     = '<LocalLeader>f'
        let cmdline_map_send_paragraph = '<LocalLeader>p'
        let cmdline_map_send_block     = '<LocalLeader>b'
        let cmdline_map_quit           = '<LocalLeader>q'

"+++++++++++AAA++}}}
"++AAA++[#WinCORE]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "macros even easier to remember: hit qq to record, q to stop recording, and Q to apply.
        nnoremap Q @q
        vnoremap Q :norm @q<cr>
        "==========================================================================================
        imap ;; <ESC>
        nmap q <Nop>
        nnoremap q <Nop>
        nnoremap ss :wa<cr>
        nnoremap sx :xa<cr>
        nnoremap xa :xa<cr>
        nnoremap qa :wa<cr> :bd<cr>
        nnoremap qq :bd<cr>
        nnoremap qs :wa<cr> :qa<cr>
        "==========================================================================================
        let g:undoquit_mapping = ';q'
        "==========================================================================================
        " nnoremap <Leader>q :Bdelete<CR>
        "==========================================================================================
        "------------------------------------------------------------------------------------------
        nnoremap ee :ls<cr>:b<space>
        "------------------------------------------------------------------------------------------
        nnoremap qw <C-w>q<CR>
        nnoremap wq <C-w>q<CR>
        nnoremap ww <C-w>o<CR>
        "------------------------------------------------------------------------------------------
        nnoremap EE :source $MYVIMRC<CR>
        nnoremap BB ggVG
        "==========================================================================================
        nnoremap  \  <C-^>
        nnoremap hh <c-w>w
        "==================================================================================
        " nnoremap vv <c-w>v<c-w>l<cr><c-w>w<cr>
        nnoremap ;v <c-w>v<c-w>l
        nnoremap ll :execute "leftabove vsplit" bufname('#')<cr>
        nnoremap VV :execute "vsplit" bufname('#')<cr>
        nnoremap vv <S-v>
        "==========================================================================================
        command! CD cd %:p:h

        " nnoremap <leader>j :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
        " autocmd filetype java nnoremap <F4> :w <bar> !javac % && java -enableassertions %:p <CR>
        "==================================================================================
        nmap ;; <Plug>(easymotion-overwin-w)
        let g:EasyOperator_line_do_mapping = 0
        "==========================================================================================
        nnoremap ;o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        nnoremap ,o :Wopen <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        "==========================================================================================

"++++++++++AAA++}}}
"++AAA++[CommandT]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:CommandTMaxFiles = 10000 " maximum number of files scan.
        let g:CommandTMaxDepth = 15
        let g:CommandTMaxCacheDirectories = 1 " 0: no limit.
        let g:CommandTMaxHeight = 15 " 0: as much as available space.
        let g:CommandTMinHeight = 0 " 0: single line.
        let g:CommandTAlwaysShowDotFiles = 0 " only if entered string contains a dot
        let g:CommandTNeverShowDotFiles = 0
        let g:CommandTScanDotDirectories = 0
        let g:CommandTMatchWindowAtTop = 0 " match window appear at bottom.
        let g:CommandTMatchWindowReverse = 1 " let the best match at bottom.
        let g:CommandTTageIncludeFilenames = 1 " include filenames when matches
        let g:CommandTCancelMap=['<C-x>', '<C-c>'] " multiple alternative mapping.
"++++++AAA++}}}
"++AAA++[CtrlP]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:ctrlp_cmd = 'CtrlPMRU'
        let g:ctrlp_map='<c-p>'
        let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
        let g:ctrlp_extensions = ['tag']
        let g:ctrlp_match_window_bottom = 0
        let g:ctrlp_match_window_reversed = 0
        let g:ctrlp_dotfiles = 0
        let g:ctrlp_switch_buffer = 1
        let g:ctrlp_working_path_mode = 0
        let g:ctrlp_open_new_file = 'R'
        let g:ctrlp_mruf_max = 250
"+++++++++AAA++}}}
"++AAA++[10F2]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        "==========================================================================================
        " Help in help in help
        nnoremap <F2> "zyw:exe  "h ".@z.""<CR>
        nnoremap <M-h> <Esc>:helpgrep <C-r><C-w><CR>
        nnoremap <C-h> :CommandTHelp<cr>
        "------------------------------------------------------------------------------------------
        nnoremap <C-t> :CommandTJump<cr>
        "==========================================================================================
        nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
        inoremap <F3> <esc>:NERDTreeToggle<cr>
        "==========================================================================================
        source ~/git/bTest/sPot/s9legoStartify.vim
        nnoremap <F4> <esc>:Startify<cr>
        "==========================================================================================
        nnoremap <F5> :w<CR>:!python %<CR>
        "==========================================================================================
        nnoremap <F6> :FFLines <C-r><C-w><CR> | wincmd p
        "==========================================================================================
        nnoremap <F7> :FFBLines <C-r><C-w><CR> | wincmd p
        nnoremap \\ #* :FFBLines <C-r><C-w><CR> | wincmd p
        "==========================================================================================
        nnoremap <F8> :LocationToggle<cr>
        "==========================================================================================
        nnoremap <F9> :call ToggleQuickFix()<CR>
        "==========================================================================================
        " How to tell what syntax highlighting group *that* is!
        nnoremap  <F10>  :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
        "==========================================================================================
        nnoremap TT :TagbarToggle<CR>
        "==========================================================================================
        source ~/git/bTest/sPot/s9legoQuickMenu.vim
        nnoremap <F12> :call quickmenu#toggle(0)<CR>
        "==========================================================================================
"+++++++++++AAA++}}}
"++AAA++[#SEARCH]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        function! s:VSetSearch()
                let temp = @@
                norm! gvy
                let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                let @@ = temp
        endfunction
        vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
        vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>
        " find visually selected text
        "==========================================================================================
        vnoremap # :<C-u>FFBLines <C-r>=expand("<cword>")<CR>
        vnoremap * :<C-u>FFRg <C-r>=expand("<cword>")<CR>
        vnoremap % :<C-u>FFAg <C-r>=expand("<cword>")<CR>
        function! s:VSearchMe()
                let temp = @@
                norm! gvy
                let xx ='\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                call fzf#vim#ag(xx, fzf#vim#with_preview())
        endfunction
        vnoremap * :<C-u>call <SID>VSearchMe()<CR>
        "===========================================================================================
        " return: Any command that lists files can be used as the source
        " call fzf#run(fzf#wrap({'source': 'git ls-files'}))
        "===========================================================================================

        "====================[#BOX]==================================================================
        " call BoxMyC(q Gold Stuck.chen q)
        nnoremap <leader>c :<c-u>call BoxC()<cr>
        "------------------------------------------------------------------
        nnoremap <Leader>0 :set number!<return>
        "====================[PDOC]=================================================================
        nnoremap <Leader>1 :PymodeDoc <cword> .<cr>
        "------------------------------------------------------------------
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nmap ;z <Plug>Zeavim
        "------------------------------------------------------------------
        nmap ,z <Plug>ZVKeyDocset
        "------------------------------------------------------------------
        " :Pydoc foo.bar.baz (e.g. :Pydoc re.compile)
        " Or search a word (uses pydoc -k) in the documentation by typing:
        " :PydocSearch foobar (e.g. :PydocSearch socket)
        "====================[#SEARCH]=============================================
        nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        nnoremap ff :NV <C-r><C-w><CR> | wincmd p
        nnoremap FF :FFRg <C-r><C-w><CR> | wincmd p
        nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
        nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
        nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nnoremap OO :call CscopeFindInteractive(expand('<cword>'))<CR>
        "------------------------------------------------------------------
        " nnoremap oo :call CscopeFind('f', expand('<cword>'))<CR>
        "==================================================================
"+++++++++AAA++}}}
"++AAA++[#FOLD]++++++++++++++++++Unfuc++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        set foldlevelstart=0
        "-FoldToggle
        nnoremap <M-space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
        "=============================================
        " Make zO recursively open whatever fold
        nnoremap zO zczO
        "==================================================================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
"+++++++++++AAA++}}}
"++AAA++[#FUNC]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================

        "==========================================================================================
        command! LocationToggle call LocationToggle()
        function! LocationToggle()
                if exists("w:is_location_window")
                        unlet w:is_location_window
                        exec "q"
                else
                        lopen
                        let w:is_location_window = 1
                endif
        endfunction
        "==========================================================================================
        command! ToggleQuickFix call ToggleQuickFix()
        function! ToggleQuickFix()
                if exists("g:qwindow")
                        cclose
                        execute "wincmd p"
                        unlet g:qwindow
                else
                        try
                                copen
                                execute "wincmd J"
                                let g:qwindow = 1
                        catch
                                echo "Error!"
                        endtry
                endif
        endfunction
        "==================================================================================
        command! ShowFuncKeys call ShowFuncKeys(<q-bang>)
        function! ShowFuncKeys(bang)
                for i in range(1,12)
                        redir! => map
                        exe "silent " . (a:bang == "!" ? 'verbose' : '') . " map<F" . i . ">"
                        redir end
                        if map !~ 'No mapping found'
                                echomsg map
                        endif
                endfor
        endfunction

        fun Inkk()
                let result = 3
                echo result
                return result
        endf

        "==================================================================================
        command! ShowFunc call ShowFunc()
        function! ShowFunc()
                let gf_s = &grepformat
                let gp_s = &grepprg
                let &grepformat = '%*\k%*\sfunction%*\s%l%*\s%f %*\s%m'
                let &grepprg = 'ctags -x --c-types=f --sort=no -o -'
                write
                silent! grep %
                cwindow
                let &grepformat = gf_s
                let &grepprg = gp_s
        endfunc
        "==================================================================================
        "===================[TableModeToggle]===============================================================
        function! s:isAtStartOfLine(mapping)
                let text_before_cursor = getline('.')[0 : col('.')-1]
                let mapping_pattern = '\V' . escape(a:mapping, '\')
                let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
                return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
        endfunction

        inoreabbrev <expr> <bar><bar>
                                \ <SID>isAtStartOfLine('\|\|') ?
                                \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
        inoreabbrev <expr> __
                                \ <SID>isAtStartOfLine('__') ?
                                \ '<c-o>:silent! TableModeDisable<cr>' : '__'
        "==================================================================================

"+++++++++AAA++}}}
"++AAA++[#FZF]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:fzf_command_prefix = 'MM'
        let g:fzf_layout = { 'window': 'enew' }
        let g:fzf_layout = { 'window': '-tabnew' }
        let g:fzf_layout = { 'down': '~20%' }
        let g:fzf_layout = { 'window': '10split enew' }
        "let g:fzf_history_dir = '~/.local/share/fzf-history'
        "==========================================================================================
        let g:fzf_action = {
                                \ 'ctrl-t': 'tab split',
                                \ 'ctrl-s': 'split',
                                \ 'ctrl-x': ':Lynx',
                                \ 'ctrl-v': 'vsplit' }

        "======================================================================================================
        "-[Buffers] Jump to the existing window if possible
        let g:fzf_buffers_jump = 1
        let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
        let g:fzf_tags_command = 'ctags -R'
        let g:fzf_commands_expect = 'alt-enter,ctrl-x'
        "======================================================================================================
        function! FzfSpellSink(word)
                exe 'normal! "_ciw'.a:word
        endfunction
        "--------------------------------------------------------------------------
        function! FzfSpell()
                let suggestions = spellsuggest(expand("<cword>"))
                return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'left': 30 })
        endfunction
        "======================================================================================================
        command! MTag if !empty(tagfiles()) | call fzf#run({
                                \ 'source': "cat " . join(tagfiles()) . ' | grep -P "' . expand('%:t') . '"',
                                \ 'sink': function('<sid>tag_handler'),
                                \ 'options': '+m --with-nth=1',
                                \ 'right': '25%'
                                \ }) | else | echo 'No tags' | endif
        "===============================================================
        function! s:tag_handler(tag)
                if !empty(a:tag)
                        let token = split(split(a:tag, '\t')[2],';"')[0]
                        let m = &magic
                        setlocal nomagic
                        execute token
                        if m
                                setlocal magic
                        endif
                endif
        endfunction
        "======================================================================================================
        nmap <leader><tab> <plug>(fzf-maps-n)
        xmap <leader><tab> <plug>(fzf-maps-x)
        omap <leader><tab> <plug>(fzf-maps-o)
        "============================================================================================
        command! -bang -nargs=? -complete=dir MFiles
                                \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
        "============================================================================================
        command! -bang -nargs=?  MAg
                                \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)
        "============================================================================================
        command! -bang -nargs=?  MGit
                                \ call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})
        "========================================================================================================
        let g:pathToTemplates='~/bakBuk/'

        function! PutSink(file)
                execute ':r '.g:pathToTemplates.a:file
        endfunction

        command! ZPut call fzf#run({
                                \  'source': 'ls '.g:pathToTemplates,
                                \  'sink':    function('PutSink')})
        "========================================================================================================
        command! MLibList call fzf#run({'source': 'find ~/git/ ~/Documents/ -type f', 'sink':  'edit'})

        "========================================================================================================
        function! s:plug_help_sink(line)
                let dir = g:plugs[a:line].dir
                for pat in ['doc/*.txt', 'README.md']
                        let match = get(split(globpath(dir, pat), "\n"), 0, '')
                        if len(match)
                                execute 'tabedit' match
                                return
                        endif
                endfor
                tabnew
                execute 'Explore' dir
        endfunction

        command! MPlugHelp call fzf#run(fzf#wrap({
                                \ 'source': sort(keys(g:plugs)),
                                \ 'sink':   function('s:plug_help_sink'),
                                \'right': '30%'
                                \}))

        "==========================================================================================
        if !exists(":DiffOrig")
                command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                                        \ | wincmd p | diffthis
        endif

        "==========================================================================================
        cabbrev h vertical help
        cabbrev Box  call BoxMyC()
        cabbrev SS  SideSearch
        cabbrev ZA  FFMarks
        cabbrev ZL  FFLines
        cabbrev ZBL FFBLines
        cabbrev ZM  FZFMru
        cabbrev ZT  ZTag
        cabbrev ZF  ZFiles
        cabbrev ZS  FFSnippets
        cabbrev ZD  FZFDefinitions
        "---------------------------------
        cabbrev ZH  FFHelptags
        "---------[#SPELL]----------------
        nmap == :call FzfSpell()<CR>
        "---------------------------------
        if has('autocmd')
                function! s:fzf_status()
                        let l:laststatus = &laststatus
                        let l:ruler = &ruler
                        let l:showmode = &showmode
                        autocmd FileType fzf set laststatus=0 noshowmode noruler
                        execute 'autocmd BufLeave <buffer> set ' .
                                                \ 'laststatus=' . l:laststatus ' ' .
                                                \ (l:ruler ? '' : 'no') . 'ruler ' .
                                                \ (l:showmode ? '' : 'no') . 'showmode'
                endfunction
                augroup jnrowe_fzf
                        autocmd FileType fzf call s:fzf_status()
                augroup END
        endif

        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        " inoremap <expr> <c-x><c-t> fzf#complete('tmuxwords.rb --all-but-current --scroll 500 --min 5')
        imap <c-x><c-k> <plug>(fzf-complete-word)
        imap <c-x><c-f> <plug>(fzf-complete-path)
        inoremap <expr> <c-x><c-d> fzf#vim#complete#path('blsd')
        imap <c-x><c-j> <plug>(fzf-complete-file-ag)
        imap <c-x><c-l> <plug>(fzf-complete-line)


"++AAA15Fzf++}}}
"++AAA16[#LeaderGuide]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "============================================
        source ~/git/bTest/sPot/s9legoLeaderGuide.vim
        "============================================
        call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
        "============================================
        nnoremap <leader> :<c-u>LeaderGuide '<Space>'<CR>
        vnoremap <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
        "============================================
        nnoremap <localleader> :<c-u>LeaderGuide  ','<CR>
        vnoremap <localleader> :<c-u>LeaderGuideVisual  ','<CR>
        "============================================
        nnoremap ; :<c-u>LeaderGuide  ';'<CR>
        vnoremap ; :<c-u>LeaderGuideVisual  ';'<CR>
        "============================================
"++AAA16Leader++}}}
"++AAA17[#Coc]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
"++AAA17Coc++}}}
"++AAA18-[#DEO]-jedi-LSP-CORE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        source ~/git/bTest/sPot/s9legoDeo.vim
        "----------------------------------------------------------------------------------
        let g:SuperTabContextDefaultCompletionType = '<c-n>'
        let g:SuperTabDefaultCompletionType = '<C-n>'
        "----------------------------------------------------------------------------------
        let g:jedi#force_py_version=3
        let g:jedi#documentation_command = "gj"
        let g:jedi#completions_enabled = 1
        let g:jedi#popup_on_dot = 1
        let g:jedi#auto_close_doc = 1
        "----------------------------------------------------------------------------------
        inoremap <expr><C-g>     deoplete#undo_completion()
        inoremap <expr><C-l>     deoplete#refresh()
        inoremap <expr><C-k>     deoplete#smart_close_popup()
        "--------------------------------------------------------------------------------
        imap <expr> <C-Space>  deoplete#manual_complete()
        inoremap <C-space>     <Esc>a
        "--------------------------------------------------------------------------------
        " imap <expr> <C-j>  deoplete#manual_complete()
        " imap <expr> <M-j>  deoplete#manual_complete() <C-n>
        "--------------------------------------------------------------------------------

        let g:LanguageClient_autoStart = 1
        " let g:LanguageClient_hoverPreview="Never"
        let g:LanguageClient_hoverPreview="Always"
        let g:LanguageClient_useFloatingHover=1
        let g:LanguageClient_serverCommands = {
                                \ 'python': ['/usr/local/bin/pyls'],
                                \ }
        " let g:LanguageClient_autoStop=1
        " nnoremap <LspF12> :call LanguageClient_contextMenu()<CR>

"+++++++++AAA+}}}
"++AAA+[#AutoCMD]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        autocmd! FileType typescript setlocal completeopt+=menu,preview
        autocmd! FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd! FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd! FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd! FileType java setlocal omnifunc=javacomplete#Complete
        autocmd! FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd! FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd! FileType haskell setlocal omnifunc=necoghc#omnifunc
        "==========================================================================================
        "-CHECK-It-TODO-recheck
        autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        "==========================================================================================
        function! ScriptExecute()
                :!chmod u+x %
                :w
        endfunction
        "====================================Change================================================
        augroup ScriptExecutePermission
                autocmd!
                autocmd BufWritePost *.sh :call ScriptExecute()
        augroup END
        "==========================================================================================
        augroup SourceVimrc
                autocmd!
                autocmd bufwritepost .vimrc source $MYVIMRC
        augroup END
        "==========================================================================================
        autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
        "==========================================================================================
        "codefmt
        augroup autoformat_settings
                autocmd!
                autocmd FileType bzl AutoFormatBuffer buildifier
                autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
                autocmd FileType dart AutoFormatBuffer dartfmt
                autocmd FileType go AutoFormatBuffer gofmt
                autocmd FileType gn AutoFormatBuffer gn
                " autocmd FileType html,css,json AutoFormatBuffer js-beautify
                autocmd FileType java AutoFormatBuffer google-java-format
                autocmd FileType python AutoFormatBuffer yapf
                " Alternative: autocmd FileType python AutoFormatBuffer autopep8
        augroup END
        "==========================================================================================
        autocmd! BufEnter * :call BookmarkMapKeys()
        " autocmd! BufEnter *.vim :TableModeToggle
        "==========================================================================================
        augroup qs_colors
                autocmd!
                autocmd ColorScheme * highlight QuickScopePrimary  ctermfg=81 cterm=underline
                autocmd ColorScheme * highlight QuickScopeSecondary  ctermfg=93 cterm=underline
        augroup END
        "==========================================================================================
        augroup UnderlineTag
                autocmd!
                autocmd BufEnter *.py UnderlineTagOn
        augroup END

        " highlight UnderlineTag  cterm=underline  gui=underline guifg=#555555
        "==========================================================================================
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        function! s:fzf_statusline()
                highlight fzf1 ctermfg=11 ctermbg=9
                highlight fzf2 ctermfg=11 ctermbg=9
                highlight fzf3 ctermfg=11 ctermbg=9
                setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
        endfunction
        autocmd! User FzfStatusLine call <SID>fzf_statusline()
        "==========================================================================================
        au! FocusLost * :silent! wall
        "==========================================================================================
        autocmd BufEnter * call halo#run({'intervals': [100, 300, 600, 300, 100]})
        "==========================================================================================
        " Most prefer to automatically switch to the current file directory when
        " let g:spf13_no_autochdir = 1
        if !exists('g:spf13_no_autochdir')
                autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
                " Always switch to the current file directory

        endif
        "==========================================================================================

"++AAA++}}}

        "==================================================================================
        hi customAAA     ctermbg=245 ctermfg=White  guibg=#ffFFB5 guifg=#ff0000 gui=bold
        hi customBBB     ctermbg=245 ctermfg=White  guibg=#ffFFB5 guifg=#0000ee gui=bold
        hi customGGG     ctermbg=245 ctermfg=White  guibg=#ffFFB5 guifg=#008900 gui=bold
        call matchadd('customAAA', 'AAA')
        call matchadd('customBBB', 'OK')
        call matchadd('customGGG', 'FRAME')
        call matchadd('customGGG', 'OnTOP')
        call matchadd('customGGG', 'NICE')
        call matchadd('customAAA', 'Pyy')
        "==================================================================================
        hi customGray1     ctermbg=245 ctermfg=White  guibg=#000000 guifg=#fff500 gui=bold
        hi customGray2     ctermbg=245 ctermfg=White  guibg=#111111 guifg=#00ff00 gui=bold
        hi customGray3     ctermbg=245 ctermfg=White  guibg=#222222 guifg=#FF480e gui=bold
        hi customGray4     ctermbg=245 ctermfg=White  guibg=#800080 guifg=#fff900 gui=bold
        hi customGray5     ctermbg=245 ctermfg=White  guibg=#008020 guifg=#ff5500 gui=bold
        "==================================================================================
        call matchadd('customGray1', '#LeaderGuide')
        call matchadd('customGray1', '#STARTIFY')
        call matchadd('customGray1', '#QMENU')
        call matchadd('customGray1', '#CYAN')
        "=================================================
        call matchadd('customGray2', '#FRESH')
        call matchadd('customGray2', '#NOWO')
        call matchadd('customGray2', '#TODO')
        call matchadd('customGray2', '#ERROR')
        call matchadd('customGray2', '#SMART')
        call matchadd('customGray2', '#BEST')
        call matchadd('customGray2', '#NEXT')
        call matchadd('customGray2', '#ADVANCED')
        "==================================================================================
        call matchadd('customGray3', '#NAVI')
        call matchadd('customGray3', '#NMODE')
        call matchadd('customGray3', '#IMODE')
        call matchadd('customGray3', '#CMODE')
        call matchadd('customGray3', '#VMODE')
        call matchadd('customGray3', '#WinCore')
        call matchadd('customGray3', '#EXEC')
        call matchadd('customGray3', '10F2')
        "==================================================================================
        call matchadd('customGray4', '#TOPF')
        call matchadd('customGray4', '#BOX')
        call matchadd('customGray4', '#ulti')
        call matchadd('customGray4', 'VimOmni')
        call matchadd('customGray4', 'iInoremap')
        call matchadd('customGray4', 'PDOC')
        call matchadd('customGray4', '#Plugged')
        call matchadd('customGray4', '#SEARCH')
        call matchadd('customGray4', '#MainSet')
        call matchadd('customGray4', '#TextObj')
        call matchadd('customGray4', '#FZF')
        call matchadd('customGray4', '#FORMAT')
        call matchadd('customGray4', '#DEO')
        call matchadd('customGray4', '#AutoCMD')
        call matchadd('customGray4', '#FOLD')
        call matchadd('customGray4', '#FUNC')
        call matchadd('customGray4', 'TableModeToggle')
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        hi customGleich     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#00f5f5
        hi customHash     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#6045f5
        hi customDP     ctermbg=245 ctermfg=White  guibg=#444444 guifg=#ff3f00
        hi customGrayD     ctermbg=245 ctermfg=White  guibg=#444444 guifg=#ddDDdd
        hi customBar     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#ff15ee
        hi customStar     ctermbg=245 ctermfg=White  guibg=#880055 guifg=#ffff00
        hi customPlus      ctermbg=245 ctermfg=White  guibg=#70FF70 guifg=#FF1133
        hi customMinus     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#70FF70
        "==================================================================================
        call matchadd('customHash', '#')
        call matchadd('customDP', ':')
        call matchadd('customMinus', '-')
        call matchadd('customBar', '|')
        call matchadd('customGleich', '=')
        call matchadd('customPlus', '+')
        call matchadd('customStar', '*')
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" ----------------------------------------------------------------------------
silent! if has_key(g:plugs, 'vim-after-object')
        autocmd VimEnter * silent! call after_object#enable('=', ':', '#', ' ', '|')
endif

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>gd :Gdiff<CR>

