"==============================================================================================================
"= File: s10DeoLc.vim TOPFd
"==============================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Lass Modified:      Mi 05 Feb 2020 09:45:33  CET
"==============================================================================================================
let g:vimrcversion= 10
au VimEnter * echo "VIMRC v"g:vimrcversion
"==============================================================================================================
" after I improved indenting, highlighting and autocompletion slightly.
" EditScope in NormalMode
set foldlevel=0
set foldclose=all
"==============================================================================================================
"==============================================================================================================

"++AAA0-Py+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        set path+=.,/home/red/Documents/
        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/.config/nvim/init.vim'
        " command! Vimrc :vs $MYVIMRC
        "----------------------------------------------------------------------------------
        let g:python_host_prog = '/usr/bin/python2'
        let g:python3_host_prog = '/usr/bin/python3'
        "let g:python3_host_prog=expand('~/anaconda3/bin/python')
        "----------------------------------------------------------------------------------
        " let g:loaded_clipboard_provider = empty(provider#clipboard#Executable()) ? 1 : 2
        "----------------------------------------------------------------------------------
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
"++AAA0++}}}
"++AAA1-set-Spell-Undo+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        filetype on
        filetype plugin on
        filetype indent on
        "----------------------------------------------------------------------------------
        let maplocalleader=','
        let mapleader=' '
        "----------------------------------------------------------------------------------
        set nocompatible
        set encoding=UTF-8
        scriptencoding utf-8
        set shell=/bin/zsh
        let generate_tags=1
        set tags=.tags;
        set tags+=tags;
        "==================================================================================
        ":set tags=./tags,tags,/home/user/commontags
        "----------------------------------------------------------------------------------
        " set spelllang=de,tech_speak
        " 'zg': add, 'zw': remove.
        "----------------------------------------------------------------------------------
        set spellsuggest=best
        set spelllang=de
        set spelllang=he
        set spelllang=en
        set spell
        set nospell
        "==================================================================================
        set makeprg=gcc\ -o\ %<\ %
        set grepprg=rg\ --vimgrep
        "set grepprg=/bin/grep\ -nH
        "==================================================================================
        " :MMake to perform a :make and to open any resulting quickfix window:
        " command -nargs=* MMake make <args>|cwindow 3
        "==================================================================================
        if executable('ag')
                set grepprg=ag\ --nogroup\ --nocolor\ --column\ --ignore-dir\ node_modules\ --ignore-dir\ bower_components
                set grepformat=%f:%l:%c:%m
        endif

        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
        "==================================================================================
        augroup vimrc
                autocmd!
        augroup END
        "----------------------------------------------------------------------------------
        let g:pymode_python = 'python3'
        "----------------------------------------------------------------------------------
        set background=dark
        "==================================================================================
        set noswapfile
        set backup                               " enable backups
        set undodir=~/.config/nvim/undoDir/      " undo files
        set backupdir=~/.config/nvim/backUpDir/  " backups
        set directory=~/.config/nvim/swapDir/    " swap files
       "============================================================================================
        set errorformat+=%f:%l.%c-%*[0-9]:\ %m
        set errorformat+=%f:%l.%c:\ %m
        set errorformat+=%f:\ %m
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
        set undoreload=12000
        "==================================================================================

"++AAA1++}}}
"++AAA2+MainSet+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        "======================================================================================================
        set nuw =4
        " show invisible
        set listchars=tab:▸\ ,eol:¬,trail:⋅
        hi NonText ctermfg=16 guifg=#Fa3a19
        hi SpecialKey ctermfg=16 guifg=#ff00af
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

        set modelines=0
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
        "------------------------------------------------------------------------------------------
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
        highlight MatchParen gui=bold  guifg=yellow guibg=blue
        set scrolloff=4
"++AAA2++}}}


"++AAAPlug++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"==HappyStart1==
call plug#begin('~/.config/nvim/plugged/')
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'gilligan/textobj-gitgutter'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'nixprime/cpsm'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/L9'
        " Plug 'vim-scripts/FuzzyFinder'
        "----------------------------------------------------------------------------------
        Plug 'prabirshrestha/async.vim'
        Plug 'skywind3000/asyncrun.vim'
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/genutils'
        Plug 'LucHermitte/lh-vim-lib'
        Plug 'inkarkat/vim-ingo-library'
        "----------------------------------------------------------------------------------
        " Plug 'airblade/vim-gitgutter'
        "         let g:gitgutter_signs = 1
        "         let g:gitgutter_max_signs = 2000
        "         let g:gitgutter_max_signs = 800
        "         highlight GitGutterAdd ctermfg=green          guibg=#aa2211  guifg=#8ae234
        "         highlight GitGutterChange ctermfg=yellow      guibg=#662211  guifg=#fce94f
        "         highlight GitGutterDelete ctermfg=red         guibg=#666666  guifg=#ef2929
        "         highlight GitGutterChangeDelete ctermfg=cyan  guibg=#aa8877  guifg=#fce94f
                " if exists("*gitgutter#highlight#define_highlights")
                "         " let vim-gitgutter know we changed the SignColumn colors!
                "         call gitgutter#highlight#define_highlights()
                " endif

        "----------------------------------------------------------------------------------
        "---DATABASE-CONSOLE---------------------------------------------------------------
        " Plug 'tpope/vim-dadbod'
        "----------------------------------------------------------------------------------
        Plug 'tpope/vim-fugitive'
        "==================================================================================
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        Plug 'vim-scripts/visualrepeat'
        Plug 'tpope/vim-eunuch'
        "----------------------------------------------------------------------------------
        " Extend abbreviation/substition.
        Plug 'tpope/vim-abolish'
        "----------------------------------------------------------------------------------
        "-Plug 'tpope/vim-rake'
        "-Plug 'tpope/vim-rails'
        " Plug 'vim-ruby/vim-ruby'
        "-----------------------------------------------------------------------------------
        Plug 'wesQ3/vim-windowswap'

        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======================StartTO======================================================

        "===================================================================================
        Plug 'kana/vim-textobj-user'
        "===================================================================================
        Plug 'adriaanzon/vim-textobj-matchit'
        "`am` and `im` :if-ifend , for-endfore ..

        "==!!!==============================================================================
        " great text objects for selecting/changing parameters
        " Plug 'wellle/targets.vim'
        "==================================================================================
        Plug 'kana/vim-textobj-diff'
        Plug 'reedes/vim-textobj-sentence'
                let g:textobj#sentence#select = 's'
                let g:textobj#sentence#move_p = '('
                let g:textobj#sentence#move_n = ')'
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
        Plug 'mhinz/vim-signify'
        Plug 'killphi/vim-textobj-signify-hunk'
        "--------------------------------------------------------------------------
        Plug 'terryma/vim-expand-region'
                 let g:expand_region_text_objects = {
                                         \ 'iw'  :0,
                                         \ 'iW'  :0,
                                         \ 'i"'  :0,
                                         \ 'i''' :1,
                                         \ 'ib'  :1,
                                         \ 'iB'  :1,
                                         \ 'if'  :1,
                                         \ 'io'  :1,
                                         \ 'ip'  :1,
                                         \ 'ih'  :1
                                         \ }
        "--------------------------------------------------------------------------
        "======TheBest======
        vmap v <Plug>(expand_region_expand)
        vmap <c-v> <Plug>(expand_region_shrink)
        "----------------------------------------------------------------------------------
        Plug 'machakann/vim-sandwich'
                nmap s <Nop>
                xmap s <Nop>
        "-------------------------------------------------------------
                let g:textobj_sandwich_no_default_key_mappings = 1
                omap ia <Plug>(textobj-sandwich-auto-i)
                xmap ia <Plug>(textobj-sandwich-auto-i)
                omap aa <Plug>(textobj-sandwich-auto-a)
                xmap aa <Plug>(textobj-sandwich-auto-a)
        "--------------------------------------------------------------
        " [ {(hello) ( noch ) ('Mal') ("tomos") } tormos]

        "---------------MySANDWICH--BREXIT-------------------------------------------------
                vmap ss "zdi sympy.pprint(<c-r>z)<esc>
                vmap sp "zdi print(<c-r>z)<esc>
                vmap st "zdi<b><c-r>z</b><esc>
                vmap sh "zdi<?= <c-r>z ?><esc>

        "===!!!=================================
        " The plugin defines a mapping to delete a surrounding function call (or
        " Plug 'AndrewRadev/dsf.vim'
        "--------------------------------------------------------------
        Plug 'lifepillar/vim-cheat40'
        Plug 'dalance/vseq.vim'
        Plug 'sk1418/HowMuch'
        Plug 'sk1418/Join'
        Plug 'salsifis/vim-transpose'
        " Plug 'vim-scripts/a.vim'
        "--- ah - bh ---
        Plug 'machakann/vim-swap'
        "=======================================
        Plug 'sk1418/QFGrep'
        "===!!!=================================
        "Python text objects
        "Plug 'jeetsukumaran/vim-pythonsense'
        "Plug 'voldikss/vim-hello-word'

        "-----------------------------------------------------------------------------------
        "-----StopTO------------------------------------------------------------------------
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
        "======================EndTO=======================================================
        "==================================================================================
        Plug 'aghareza/vim-gitgrep'
        "----------------------------------------------------------------------------------
        Plug 'romainl/vim-qf'
        Plug 'yssl/QFEnter'
        "----------------------------------------------------------------------------------
        Plug 'brooth/far.vim'
        "--111-----------------------------------------------------------------------------
        Plug 'osyo-manga/vim-brightest'
                let g:brightest#highlight = { "group" : "Define" }
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
        " " If you want pydoc to switch to an already open tab with pydoc page,
        " let g:pydoc_use_drop=1
        " let g:pydoc_window_lines=15
        " " let g:pydoc_window_lines=0.5
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        " " let g:pydoc_highlight=0
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
        "------------------------------PreCursor----------------------------------------------------
        " set guicursor=a:block-blinkon100-Cursor/Cursor
        " hi Cursor guifg=black guibg=green gui=reverse
        set gcr=a:block
        set gcr+=o:hor50-Cursor
        set gcr+=n:Cursor
        set gcr+=i-ci-sm:InsertCursor
        set gcr+=r-cr:ReplaceCursor-hor20
        set gcr+=c:CommandCursor
        set gcr+=v-ve:VisualCursor
        set gcr+=a:blinkon0
        "----------------------------------------
        hi InsertCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=37  guibg=#cc00aa
        hi VisualCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=125 guibg=#ee4422
        hi ReplaceCursor ctermfg=15 guifg=#fdf6e3 ctermbg=65  guibg=#00ff00
        hi CommandCursor ctermfg=15 guifg=#fdf6e3 ctermbg=166 guibg=#FF0000
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
        Plug 'dyng/ctrlsf.vim'
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
        "--------------------------------------
"++AAAClap++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
"++AAAClap++}}}

        "==================================================================================
        Plug 'exvim/ex-matchit'
        "----------------------------------------------------------------------------------
        Plug 'ervandew/supertab'
        "----------------------------------------------------------------------------------
        Plug 'MarcWeber/vim-addon-mw-utils'
        Plug 'garbas/vim-snipmate'
        Plug 'honza/vim-snippets'
        Plug 'SirVer/ultisnips'
        Plug 'Shougo/neosnippet.vim'
        Plug 'Shougo/neosnippet-snippets'
        "------------------------------------------------------------------------------------------
        ":Tmux
        Plug 'tmux-plugins/vim-tmux'
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
                let g:bling_time = 42
                let g:bling_color_fg = 'green'
                let g:bling_color_cterm = 'reverse'
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
        Plug 'flazz/vim-colorschemes'
        "------------------CAR--------------------------------------------------------------
        Plug 'lilydjwg/colorizer'
        "------------------TODO------------------------------------------------------------
        Plug 'morhetz/gruvbox'
        "----------------------------------------------------------------------------------
        Plug 'haya14busa/incsearch.vim'
        Plug 'vim-scripts/SearchComplete'
        "----------------------------------------------------------------------------------
        Plug 'zgpio/tree.nvim/'
        "----------------------------------------------------------------------------------
        Plug 'scrooloose/nerdtree'
        "----------------------------------------------------------------------------------
        Plug 'Xuyuanp/nerdtree-git-plugin'
        let g:NERDTreeIndicatorMapCustom = {
                                \ "Modified"  : "✹",
                                \ "Staged"    : "✚",
                                \ "Untracked" : "✭",
                                \ "Renamed"   : "➜",
                                \ "Unmerged"  : "═",
                                \ "Deleted"   : "✖",
                                \ "Dirty"     : "✗",
                                \ "Clean"     : "✔︎",
                                \ 'Ignored'   : '☒',
                                \ "Unknown"   : "?"
                                \ }
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
                 " NERDCommenter
                 let g:NERDDefaultAlign = 'left'
                 " let g:NERDCommentEmptyLines = 1
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
                let g:EasyMotion_do_mapping = 0 "-Disable default mappings
                nmap <LocalLeader><LocalLeader> <Plug>(easymotion-overwin-w)
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
                let g:table_mode_corner_corner='+'
                let g:table_mode_header_fillchar='='
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
                let g:bookmark_sign = '♥'
                let g:bookmark_highlight_lines = 1
                let g:bookmark_save_per_working_dir = 1
                let g:bookmark_auto_save = 1
                let g:bookmark_save_per_working_dir = 1
                "------------------------------------------------------
                "let g:bookmark_manage_per_buffer = 1`
                "let g:bookmark_auto_save_file = '/bookmarks'`

        "==================================================================================
        Plug 'blueyed/vim-diminactive'
        "==================================================================================
        Plug 'runfalk/vim-fzf-extended'
        Plug 'ryanoasis/vim-devicons'
        Plug 'mhinz/vim-startify'
        Plug 'vim-scripts/timestamp.vim'
        "----------------------------------------------------------------------------------
        Plug 'metakirby5/codi.vim'
        "----------------------------------------------------------------------------------
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
        "" HTML / CSS / XML Bundle
        " Plug 'tpope/vim-haml', {'for': ['haml', 'sass', 'scss']}
        " Plug 'mattn/emmet-vim'
        " Plug 'ap/vim-css-color'
        " Plug 'amadeus/vim-xml'
        "----------------------------------------------------------------------------------

        " div>p#foo
        " div>p#foo$*2
        " div>p#foo$*2>div.baran
        "---------------------------------------------------------------------------------
        "------------------------ START --REPL--------------------------------------------
        "---------------------------------------------------------------------------------
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
        "----------------------------------------------------------------------------------
        "------------------------ END --REPL-----------------------------------------------
        "---------------------------------------------------------------------------------
        Plug 'Shougo/echodoc.vim'
                set cmdheight=2
                " set noshowmode
                let g:echodoc_enable_at_startup = 1
                let g:echodoc#type = 'virtual'
                let g:echodoc#type = 'echo'
        "       let g:echodoc#type = 'floating'
        "       " change Pmenu to your highlight group
        "       highlight link EchoDocFloat Pmenu
        "---------------------------------------------------------------------------------
        Plug 'KabbAmine/zeavim.vim'
        "------Advanced:------------------------------------------------------------------
        " Plug 'junegunn/vim-pseudocl'
        "---------------------------------------------------------------------------------
        "---FUZZY-SEARCH------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        Plug 'junegunn/vim-easy-align'
                " Start interactive EasyAlign in visual mode (e.g. vipga)
                xmap ga <Plug>(EasyAlign)
                " Start interactive EasyAlign for a motion/text object (e.g. gaip)
                nmap ga <Plug>(EasyAlign)
        "----------------------------------------------------------------------------------
        "---TODO---------------------------------------------------------------------------
        " Plug 'SkyLeach/pudb.vim'
        " if has('nvim')
        "         let g:python_host_prog='~/.virtualenvs/neovim2/bin/python'
        "         let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python'
        "         " set the virtual env python used to launch the debugger
        "         let g:pudb_python='~/.virtualenvs/poweruser_tools/bin/python'
        "         " set the entry point (script) to use for pudb
        "         let g:pudb_entry_point='~/src/poweruser_tools/test/test_templates.py'
        "         " Unicode symbols work fine (nvim, iterm, tmux, nyovim tested)
        "         let g:pudb_breakpoint_symbol='☠'
        " endif
        "--------------------TODO---------------------------------------------------------
        " Plug 'google/vim-coverage'
        "----------------------------------------------------------------------------------
        " Plug 'junegunn/vader.vim'
        Plug 'janko-m/vim-test'
                let test#strategy='neoterm'
                let test#strategy = "dispatch"
        " let test#python#runner = 'pytest'
        " Runners available are 'pytest', 'nose', 'nose2', 'djangotest', 'djangonose'
        " and Python's built-in 'unittest'
        "----------------------------------------------------------------------------------
        Plug 'alfredodeza/pytest.vim'
        "---------------------------------------------------------------------------------
        Plug 'voldikss/vim-translate-me'
        Plug 'iamcco/dict.vim'
                let g:api_key = "1932136763"
                let g:keyfrom = "aioiyuuko"
        "---------------------------------------------------------------------------------
        Plug 'ron89/thesaurus_query.vim'
        let g:tq_mthesaur_file="/home/red/git/bTest/sPot/DYCT/mthesaurGu.txt"
        "------------------------------
        "---TRANSPORTER-----------666------------------------------------------------------
        Plug 'matze/vim-move'
                let g:move_key_modifier = 'C'
        "--NewNew---TODO------------------------------------------
        " Plug 'haya14busa/vim-easyoperator-line'
        "---------------------------------------------------------------------------------
        Plug 'unblevable/quick-scope'
        "--------------------Nice----------------------------------------------------------
        Plug 'moll/vim-bbye'
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        Plug 'brookhong/cscope.vim'
        "----------------------------TESTING-----------------------------------------------
        "- Plug 'vim-scripts/CRefVim'
        "----------------------------------------------------------------------------------
        Plug 'vifm/neovim-vifm'
                let $MYVIFMRC='~/.config/vifm/vifmrc'
                let g:vifmSplitWidth = 88

        "===================================================================================
        "-Plug 'mhartington/nvim-typescript'
        " Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
        "-autocmd BufWrite *.ts,*.tsx TSGetDiagnostics
        "===================================================================================
        " Plug 'moll/vim-node'
        " Plug 'sareyko/neat.vim'
        " Plug 'pangloss/vim-javascript'
        " Plug 'jparise/vim-graphql'
        " Plug 'MaxMEllon/vim-jsx-pretty'
        " Plug 'HerringtonDarkholme/yats.vim'
        " Plug 'leafgarland/typescript-vim', { 'for': [ 'typescript', 'vue' ] }
        " Plug 'peitalin/vim-jsx-typescript'
        "         autocmd BufNewFile,BufRead *.tsx,*.jsx,*.ts,*.js set filetype=typescript.tsx
        "         " dark red
        "         hi tsxTagName guifg=#E06C75
        "         " orange
        "         hi tsxCloseString guifg=#F99575
        "         hi tsxCloseTag guifg=#F99575
        "         hi tsxAttributeBraces guifg=#F99575
        "         hi tsxEqual guifg=#F99575
        "         " yellow
        "         hi tsxAttrib guifg=#F8BD7F cterm=italic
        "" Javascript Bundle
        " Plug 'pangloss/vim-javascript', {'for': 'javascript'}
        " Plug 'othree/yajs.vim', {'for': 'javascript'}
        "Plug 'posva/vim-vue', {'for': 'vue'}
        "===================================================================================
        "===================================================================================
        "----!!!---LGHistory--------------------------------------
        Plug 'm42e/vim-lgh'
        "------------------TODO------------------------------------------------------------
        Plug 'sheerun/vim-polyglot'
        "------------------Nice------------------------------------------------------------
        Plug 'vim-scripts/underlinetag'
        "---------------------------------------------------------------------------------
        Plug 'vim-scripts/TagHighlight'
        " TagHighlight highlight names of class, variable, types in code.
        " Usage: :UpdateTypesFile
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

        "===================================================================================
        "---Perfection - Continuity------
        Plug 'terryma/vim-smooth-scroll'
        "======================================777=================================================
        " smart <c-a> and <c-x> to toggle true/false, on/off, increment dates or weekday names, etc.
        Plug 'nishigori/increment-activator'
        "------------------------------------------------------------------------------------------
        Plug 'elzr/vim-json'
        Plug 'mrk21/yaml-vim'
        "---TASTY----
        Plug 'styled-components/vim-styled-components'
        "==================================================================================
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

        "==================================================================================
        let g:LanguageClient_diagnosticsDisplay=diagnosticsDisplaySettings
        Plug 'skywind3000/quickmenu.vim'
        "========SPACE==========================================================================
        Plug 'hecal3/vim-leader-guide'
        "==================================================================================
        "---SSTRACH------------------------------------------------------------------------
        " Plug 'justincampbell/vim-eighties'
        " let g:eighties_enabled = 1
        " let g:eighties_minimum_width = 70
        " let g:eighties_extra_width = 0
        " let g:eighties_compute = 1
        " let g:eighties_bufname_additional_patterns = ['fugitiveblame']

        "--Gail-:StmSrch-------------------------------------------------------------------
        Plug 'msbmsb/stem-search.vim'
        Plug 'bronson/vim-trailing-whitespace'
        Plug 'mivok/vimtodo'
        "----------------------------------------------------------------------------------
        Plug 'dominikduda/vim_timebox'
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'vlmarek/DiffGoFile'

"++AAALspAltDeo2+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
"++AAALsp++}}}

"++AAAdeo-Jedi++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        source ~/git/bTest/sPot/s9PlugDeo.vim
        Plug 'davidhalter/jedi-vim'
        Plug 'zchee/deoplete-jedi'
"++AAAdeo-Jedi++}}}

        "----------------------------------------------------------------------------------
        " Plug 'amiorin/vim-project'
        " Plug 'dmonllao/vim-IDE'
        Plug 'tpope/vim-projectionist'
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
        Plug 'edkolev/tmuxline.vim' " Keep tmux theme and vim theme in sync
        Plug 'rhysd/conflict-marker.vim' " Jump to merge conflict markers
        "----------------------------------------------------------------------------------
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

        Plug 'mhinz/vim-grepper'
        Plug 'haya14busa/is.vim'

        "------------82Vim-------------------------------------------------------------------------
        " Plug 'vim/killersheep'

        "------------GALORE------------------------------------------------------------------------
        Plug 'AndrewRadev/splitjoin.vim'
        Plug 'justinmk/vim-dirvish'
        " Plug 'rhysd/committia.vim'
        Plug 'mhinz/vim-halo'
        " Plug 'mhinz/vim-lookup'
        " autocmd FileType vim nnoremap <buffer><silent> <c-]>  :call lookup#lookup()<cr>
        " autocmd FileType vim nnoremap <buffer><silent> <c-t>  :call lookup#pop()<cr>
        Plug 'chrisbra/unicode.vim', {'on': ['UnicodeName', 'UnicodeTable']}
        " Plug 'godlygeek/csapprox', {'for': 'fugitiveblame' }
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        "SSS sillybun/vim-repl
        "KKK khorser/vim-repl
        " Plug 'tpope/vim-endwise'
        Plug 'kovisoft/slimv'
        Plug 'baruchel/vim-notebook'

        "----------------------------------------------------------------------------------

        " Plug 'easymotion/vim-easymotion', {'on': '<plug>(easymotion-s2)'}
        " Plug 'junegunn/fzf', has('win32') ? {} : {'on': 'FZF', 'dir': '~/local/fzf', 'do': './install --bin'}
        " Plug 'junegunn/gv.vim', {'on': 'GV'}
        " Plug 'junegunn/vader.vim'
        " Plug 'junegunn/vim-easy-align', {'on': '<plug>(LiveEasyAlign)'}
        " Plug 'junegunn/vim-plug'
        " Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
        " Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
        " Plug 'tpope/vim-commentary'
        " Plug 'tpope/vim-fugitive'
        " Plug 'tpope/vim-rhubarb'
        " Plug 'tpope/vim-rsi'
        " Plug 'tpope/vim-scriptease'
        " Plug 'tpope/vim-surround'
        " Plug 'tweekmonster/helpful.vim', {'on': 'MANUALLY'}

        " Plug 'rust-lang/rust.vim', {'for': 'rust'}
        " Plug 'rhysd/rust-doc.vim', {'for': 'rust'}
        " Plug 'lifepillar/pgsql.vim', {'for': 'sql'}
        " Plug 'mattn/emmet-vim', {'for': 'html'}
        " Plug 'AndrewRadev/tagalong.vim', {'for': 'html'}
        " Plug 'pangloss/vim-javascript'
        " Plug 'HerringtonDarkholme/yats.vim'
        " Plug 'elixir-lang/vim-elixir'
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------

        " Plug 'mhinz/vim-crates'
        " Plug 'mhinz/vim-grepper'
        " Plug 'mhinz/vim-mix-format'
        " Plug 'mhinz/vim-rfc'
        " Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}
        " Plug 'mhinz/vim-signify'
        " Plug 'mhinz/vim-startify'
        " Plug 'mhinz/vim-tree'

        "----------------------------------------------------------------------------------

        " let g:plug_url_format = 'git@github.com:%s.git'
        " Plug 'mhinz/nvim-panacea', {'for': 'elixir'}
        " Plug 'mhinz/nvim-langserver'
        "----------------------------------------------------------------------------------

        Plug 'sickill/vim-pasta'
        Plug 'sjl/gundo.vim'
        Plug 'scrooloose/nerdcommenter'
        Plug 'airblade/vim-gitgutter'
        Plug 'kana/vim-textobj-user'
        Plug 'ntpeters/vim-better-whitespace'
        Plug 'tpope/vim-surround'
        Plug 'nathanaelkane/vim-indent-guides'
        Plug 'qpkorr/vim-bufkill'
        Plug 'editorconfig/editorconfig-vim'
        Plug 'rking/ag.vim'
        Plug 'heavenshell/vim-jsdoc'
        Plug 'dyng/ctrlsf.vim'
        Plug 'junegunn/vim-easy-align'
        Plug 'cohama/lexima.vim'
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'danro/rename.vim'
        Plug 'tpope/vim-rhubarb'

        " Ruby
        Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
        Plug 'tpope/vim-endwise', {'for': 'ruby'}
        Plug 'nelstrom/vim-textobj-rubyblock', {'for': 'ruby'}

        " Javascript
        Plug 'pangloss/vim-javascript', {'for': 'javascript'}
        Plug 'styled-components/vim-styled-components', {'for': ['javascript', 'typescript', 'typescript.tsx']}

        " Typescript
        Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

        " Golang
        Plug 'fatih/vim-go', {'for': 'go'}

        " CSS
        Plug 'JulesWang/css.vim', {'for': 'css'}
        Plug 'othree/csscomplete.vim', {'for': 'css'}
        Plug 'ap/vim-css-color', {'for': 'css'}

        " Python
        Plug 'psf/black', {'for': 'python'}

        " Other
        Plug 'tomlion/vim-solidity', {'for': 'solidity'}
        Plug 'hashivim/vim-terraform', {'for': 'terraform'}
        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'markdown' }
        Plug 'jparise/vim-graphql', {'for': ['graphql', 'javascript', 'typescript']}

        Plug 'vim-scripts/mru.vim'
        Plug 'scrooloose/nerdcommenter'

        Plug 'ntpeters/vim-better-whitespace'
        Plug 'junegunn/vim-easy-align'
        Plug 'pangloss/vim-javascript'
        Plug 'mxw/vim-jsx'
        Plug 'hashivim/vim-terraform'
        Plug 'dense-analysis/ale'
        " Plug 'xavierchow/vim-sequence-diagram'
        Plug 'wannesm/wmgraphviz.vim'
        Plug 'SirVer/ultisnips'
        Plug 'airblade/vim-rooter'
        Plug 'jparise/vim-graphql'
        Plug 'schickling/vim-bufonly'
        Plug 'amadeus/vim-mjml'
        Plug 'leafgarland/typescript-vim'
        Plug 'dart-lang/dart-vim-plugin'
        Plug 'kana/vim-textobj-user'
        Plug 'nelstrom/vim-textobj-rubyblock'
        Plug 'danchoi/ri.vim'

        Plug 'BurntSushi/erd'
        Plug 'uarun/vim-protobuf'
        Plug 'mustache/vim-mustache-handlebars'
        Plug 'rhysd/vim-grammarous'
        Plug 'cespare/vim-toml'

        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-bundler'
        Plug 'tpope/vim-projectionist'
        Plug 'tpope/vim-rake'
        Plug 'tpope/vim-rails'
        Plug 'tpope/vim-endwise'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-haml'
        Plug 'tpope/vim-eunuch'
        Plug 'tpope/vim-markdown'
        Plug 'tpope/vim-abolish'
        Plug 'tpope/vim-dadbod'
        Plug 'tpope/vim-rhubarb'
        Plug 'tpope/vim-cucumber'
        Plug 'tpope/vim-dispatch'
        "err Plug 'raimondi/delimitmate'

        " Plug 'unblevable/quick-scope' SUPER SLOW!+!!!! https://github.com/unblevable/quick-scope/issues/8
        Plug 'dyng/ctrlsf.vim'
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/vim-after-object'
        Plug 'junegunn/vim-slash'

        " Peekaboo extends " and @ in normal mode and <CTRL-R> in insert mode so you
        " can see the contents of the registers.
        Plug 'junegunn/vim-peekaboo'

        Plug 'farmergreg/vim-lastplace'
        Plug 'matze/vim-move'
        Plug 'uarun/vim-protobuf'
        Plug 'alfredodeza/pytest.vim'
        Plug 'abaldwin88/roamer.vim'
        Plug 'jreybert/vimagit'
        Plug 'sbdchd/neoformat'

call plug#end()
"==HappyEnd1====
"++AAAPlug++}}}

                "==================================================================
                "----------------ERR--NoWo-----------------------------------------
                " vmap ih <Plug>(textobj-gitgutter-i)
                "==================================================================
                let g:signify_disable_by_default = 0
                let g:signify_vcs_list = [ 'git' ]
                let g:signify_realtime = 0
                "let g:signify_update_on_bufenter = 1
                "let g:signify_update_on_focusgained = 1
                let g:signify_sign_change = '~'

                nmap ]0 <plug>(signify-next-hunk)
                nmap [9 <plug>(signify-prev-hunk)

                omap ih <plug>(signify-motion-inner-pending)
                xmap ih <plug>(signify-motion-inner-visual)
                omap ah <plug>(signify-motion-outer-pending)
                xmap ah <plug>(signify-motion-outer-visual)

        "==================================================================================
        autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
        let g:lightline#bufferline#show_number  = 1
        let g:lightline#bufferline#shorten_path = 0
        let g:lightline#bufferline#unnamed      = '[No Name]'
        let g:lightline                  = {}
        let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
        let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
        let g:lightline.component_type   = {'buffers': 'tabsel'}
        "==================================================================================
        let g:lightline = {
                \ 'colorscheme': 'tender',
                \ 'enable': {
                \   'statusline': 1,
                \   'tabline': 0,
                \ },
                \ 'active': {
                \   'left': [
                \       [ 'mode', 'paste' ],
                \       [ 'filename', 'readonly', 'modified' ],
                \       [ 'fugitive', ],
                \   ]
                \ },
                \ 'inactive': {
                \   'left': [
                \       [ 'filename', 'readonly', 'modified' ],
                \       [ ],
                \   ]
                \ },
                \ 'component': {
                \   'readonly': '%{&readonly?"x":""}',
                \   'fugitive': '%{winwidth(0) > 70 ? (exists("*fugitive#head") ? "⎇  " . fugitive#head() : "") : ""}',
                \   'filetype': '%{winwidth(0) > 70 ? (&filetype !=# "" ? &filetype : "no ft") : ""}',
                \   'fileencoding': '%{winwidth(0) > 70 ? (&fenc !=# "" ? &fenc : &enc) : ""}',
                \   'fileformat': '%{winwidth(0) > 70 ? &fileformat : ""}',
                \ },
                \ 'component_visible_condition': {
                \   'fugitive': '(exists("*fugitive#head") && winwidth(0) > 70 && ""!=fugitive#head())',
                \   'filetype': '(winwidth(0) > 70)',
                \   'fileencoding': '(winwidth(0) > 70)',
                \   'fileformat': '(winwidth(0) > 70)',
                \ },
                \ 'separator': { 'left': 'L', 'right': 'R' },
                \ 'subseparator': { 'left': '|', 'right': '|' }
                \ }
"++AAACtrlP+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:ctrlp_cmd = 'CtrlPMRU'
        let g:ctrlp_extensions = ['tag']
        let g:ctrlp_match_window_bottom = 0
        let g:ctrlp_match_window_reversed = 0
        let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
        let g:ctrlp_dotfiles = 0
        let g:ctrlp_switch_buffer = 0
        let g:ctrlp_working_path_mode = 0
        let g:ctrlp_map='<c-p>'
        let g:ctrlp_open_new_file = 'R'
        " let g:ctrlp_mruf_max = 150
"++AAACtrlP++}}}
"++AAA6Source+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"
        "==========================================================================================
        if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
                let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
        else
                let entry_format .= '. entry_path'
        endif
        "==444======================================================================================
        ":DimInactiveSyntaxOn
        let g:diminactive_use_syntax = 1
        let g:diminactive_enable_focus = 1
        let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help', 'tagbar']
        "==444======================================================================================
        set termguicolors
        syntax enable
        syntax on
        colorscheme dracula
        colorscheme badwolf
        source ~/git/bTest/sPot/s9legoABB.vim
        source ~/git/bTest/sPot/s9legoFunc.vim
        source ~/git/bTest/sPot/SYPLUG/fliplr.vim
        source ~/git/bTest/sPot/SYPLUG/increment.vim
        source ~/git/bTest/sPot/s9legoCyan.vim
        "==============================================
"++AAA6Source++}}}
"++AAA7CYAN++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "source MYX/n-badwolf.vim
        "colorscheme desert
        silent! set complete& completeopt=menu infercase noshowfulltag
        "suppress intro message
        "set shortmess+=c
        set shortmess+=I
        "==================================================================================
        " guifg=#ff0ad8
        " guifg=#0fdad8
        " guifg=#ffda00
        "==================================================================================
        highlight DiffAdd           cterm=bold ctermbg=22  guibg=#0fDA95
        highlight DiffDelete        cterm=bold ctermbg=3   guibg=#ff0a78
        highlight DiffChange        cterm=bold ctermbg=52  guibg=#ff8a00
        "==================================================================================
        "::::::CYAN::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "----------------------------------------------------------------------------------
        set wildmenu
        "black-List
        set wildmode=list:longest
        "blackGreen-List
        set wildmode=list:full
        "------------------------------------------------------------------------------------------
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

"++AAA7CYAN++}}}
"++AAA8NAVI++++++++++++++++++++++++++++=TOPF=++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        "--------------------------------------------------------------------------
        nnoremap  <Esc><Esc> :<C-u>set nopaste<CR>:nohlsearch<CR>
        "------------------------
        nmap  n nzz
        nmap  N Nzz
        nmap  g* g*zz
        nmap  g# g#zz
        "------------------------
        nmap <tab>     :bn<cr>
        nmap <s-tab>   :bp<cr>
        "------------------------
        "###Accordion############
        "------------------------
        map <C-M-j> <C-W>j<C-W>_
        map <C-M-k> <C-W>k<C-W>_
        map <C-M-=> <C-W>=
        "------------------------
        nnoremap <M-right> :vertical resize +3<cr>
        nnoremap <M-left>  :vertical resize -3<cr>
        nnoremap <M-up>    :resize +3<cr>
        nnoremap <M-down>  :resize -3<cr>
        "------------------SCROLL----------------------------------------------------------
        noremap <silent> <S-up> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <S-down> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        "----------------------------------------------------------------------------------
        noremap <C-9> :PreviewScroll -1<cr>
        noremap <C-0> :PreviewScroll +1<cr>
        "----------------------------------------------------------------------------------
        fun! ScrollOtherWindow(dir)
                if a:dir == "down"
                        let move = "\<C-E>"
                elseif a:dir == "up"
                        let move = "\<C-Y>"
                endif
                exec "normal \<C-W>p" . move . "\<C-W>p"
        endfun
        nmap <silent> <C-Down> :call ScrollOtherWindow("down")<CR>
        nmap <silent> <C-Up> :call ScrollOtherWindow("up")<CR>

"++AAA8NAVI++}}}
"++AAA-EX-EXEC+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        "Transport Down Ex:
        nnoremap ,w :<C-r>=expand("<cword>")<CR>
        nnoremap ;w :<C-r>=getline(".")<CR>
        "==========================================================================================
        function Inci(...)
                let result = g:i
                let g:i += a:0 > 0 ? a:1 : 1
                return result
        endfunction
        " Suppose you want to replace each occurrence of abc with xyz_N
        " where N is an ascending number (xyz_1, xyz_2, xyz_3, and so on).
        " let i = 1 | %s/AAA/\='BBB-' . Inci() .'CCC'/g

"++AAAx++}}}
"++AAA9Win+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        nnoremap <Leader>q :Bdelete<CR>
        "---XA-------------------------------------------------------------------------------------
        nnoremap ;e :ls<cr>:b<space>
        nnoremap qw <C-w>q<CR>
        nnoremap wq <C-w>q<CR>
        nnoremap ww <C-w>o<CR>
        "------------------------------------------------------------------------------------------
        nnoremap ZZ <Nop>
        nnoremap ZZ mzzt1<c-u>`z
        nnoremap zs mzzt2<c-u>`z
        nnoremap zx mzzt35<c-u>`z
        nnoremap EE :source $MYVIMRC<CR>
        nnoremap BB ggVG
        "==========================================================================================
        nnoremap ;s :ls<cr>:b<space>
        "==========================================================================================
        nnoremap ee <c-w>w
        nnoremap hh <c-w>w
        nnoremap ll :execute "leftabove vsplit" bufname('#')<cr>
        " nnoremap vv <c-w>v<c-w>l<cr><c-w>w<cr>
        nnoremap ;v <c-w>v<c-w>l
        nnoremap VV :execute "vsplit" bufname('#')<cr>
        nnoremap vv <S-v>
        "==========================================================================================
        command! CD cd %:p:h
        nnoremap <M-w> :write!<CR>
        inoremap <silent> <M-w> <C-o>:write!<CR>
        "==========================================================================================
        ":::::::::::::::FORMAT-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        vmap <M-h> =
        nmap cc  gcl
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
        nnoremap <Leader>d <Plug>DictSearch
        nnoremap <Leader>t :!goldendict <C-r><C-w><CR>
        nnoremap <Leader>s <Plug>(textobj-diff-hunk-n)
        nnoremap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
        "==========================================================================================
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>
        "==================================================================================
        nmap ;; <Plug>(easymotion-overwin-w)
        let g:EasyOperator_line_do_mapping = 0
        "==================================================================================
        let g:rainbow_active = 1
        let g:rainbow_guifgs = ['cyan', 'DarkOrange1', 'RoyalBlue1', 'FireBrick', 'DarkOrchid1']
        "----------------------------------------------------------------------------------
        "---------------HULK--hulk--hunk--HUNK--SMA--888-----------------------------------
        "----------------------------------------------------------------------------------
        nmap [c <Plug>(GitGutterPrevHunk)
        nmap ]c <Plug>(GitGutterNextHunk)
        "-------------------------------------
        nmap ]h <Plug>(GitGutterPreviewHunk)
        nmap ]u <Plug>(GitGutterUndoHunk)
        nmap ]s <Plug>(GitGutterStageHunk)
        "------------------------------------------------------------------
        vmap     dg  :diffget<CR>
        vmap     dp  :diffput<CR>
        nnoremap do  :diffoff!<cr>
        "==================================================================================

        "------------------------------------------------------------------
        nmap ah <Plug>(swap-prev)
        nmap bh <Plug>(swap-next)
        "==========================================================================================
        "::::::::::::::::::::::::::::::-2MAGIC2-:::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        vmap <M-c> :w !cat >> ./zbuf<CR>
                "================================================================================
                " Pressing ,ss will toggle and untoggle spell checking
                map <leader>ss :setlocal spell!<cr>
                map <leader>sn ]s
                map <leader>sp [s
                map <leader>sa zg
                map <leader>s? z=
                "================================================================================

                "================================================================================
                hi StatusLine                  ctermfg=8     ctermbg=2     cterm=NONE
                hi StatusLineNC                ctermfg=2     ctermbg=8     cterm=NONE
                if has('statusline')
                        set laststatus=2
                        set statusline=%<%f\                     " Filename
                        set statusline+=%w%h%m%r                 " Options
                        set statusline+=\ [%{&ff}/%Y]            " Filetype
                        set statusline+=\ [%{getcwd()}]          " Current dir
                        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
                endif
                "================================================================================

        "==========================================================================================
        "---PlusMinus------------------------------------------------------------------------------
        "==========================================================================================
        nnoremap z8 :call <SID>SynStack()<CR>
        "------------------------------------------------------------------
        nnoremap ( <c-x>:y x\|@x<cr>
        nnoremap ) <c-a>:y x\|@x<cr>

        "------------------------------------------------------------------------------------------
        "===Control-] pop open a window and show the tag there.====================================
        "------------------------------------------------------------------------------------------
        nnoremap <M-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
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
        "---TODO------------------------------------------------------------
        imap <C-b>    <Plug>(neosnippet_expand_or_jump)
        smap <C-b>    <Plug>(neosnippet_expand_or_jump)
        xmap <C-b>    <Plug>(neosnippet_expand_target)
        "==========================================================================================
        let g:UltiSnipsExpandTrigger="<C-b>"
        let g:UltiSnipsJumpForwardTrigger="<C-b>"
        let g:UltiSnipsJumpBackwardTrigger="<C-z>"

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

"++AAA9Win++}}}

" Command-T {{{
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
" }}}

"++AAA10F2+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:asyncrun_open = 15
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        "==========================================================================================
        nmap <M-h> <Esc>:helpgrep <C-r><C-w><CR>
        nmap <C-M-h> "zyw:exe  "h ".@z.""<CR>
        nmap <F2> <Esc>:help <C-r><C-w><CR>
        "==========================================================================================
        nnoremap <M-t> :CommandTJump<cr>
        nnoremap <C-t> :CommandTHelp<cr>
        "==MMM====================================================================================
        " au! FileType vim,help nnoremap M :exec "helpgrep" expand("<cword>")<CR>
        "==========================================================================================
        nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
        inoremap <F3> <esc>:NERDTreeToggle<cr>
        "==========================================================================================
        source ~/git/bTest/sPot/s9legoStartify.vim
        nnoremap <F4> <esc>:Startify<cr>
        "==========================================================================================
        nnoremap <F5> :w<CR>:!python %<CR>
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
        "==========================================================================================
        nnoremap <F6> :FFLines <C-r><C-w><CR> | wincmd p
        "==========================================================================================
        nnoremap <F7> :FFBLines <C-r><C-w><CR> | wincmd p
        "==========================================================================================
        nnoremap <F8> :LocationToggle<cr>
        nnoremap <LocalLeader>n :lnext<cr>zvzz
        nnoremap <LocalLeader>b :lprev<cr>zvzz
        "==========================================================================================
        nnoremap <F9> :call ToggleQuickFix()<CR>
        nnoremap <Leader>b :cprev<cr>zvzz
        nnoremap <Leader>n :cnext<cr>zvzz
        "==========================================================================================
        nnoremap TT :TagbarToggle<CR>
        "==========================================================================================
        source ~/git/bTest/sPot/s9legoQuickMenu.vim
        noremap <F12> :call quickmenu#toggle(0)<CR>
        "==========================================================================================
"++AAA10F2++}}}
"++AAA11Serch+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        "==========================================================================================
        " www.web.de
        " nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        " nnoremap ;o :Utl<CR>
        "==========================================================================================
        " call BoxMyC("Gold Stuck.chen")
        nnoremap <leader>c :<c-u>call BoxC()<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>0 :set number!<return>
        "---------------------------------------------------------------
        nnoremap <Leader>1 :PymodeDoc <cword> .<cr>
        "---------------------------------------------------------------
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
        "---------------------------------------------------------------
        nmap ;z <Plug>Zeavim
        "---------------------------------------------------------------
        nmap ,z <Plug>ZVKeyDocset
        "---------------------------------------------------------------------------------
        " :Pydoc foo.bar.baz (e.g. :Pydoc re.compile)
        " Or search a word (uses pydoc -k) in the documentation by typing:
        " :PydocSearch foobar (e.g. :PydocSearch socket)
        "------------------
        "==================================================================
        nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        nnoremap ff :NV <C-r><C-w><CR> | wincmd p
        nnoremap FF :FFRg <C-r><C-w><CR> | wincmd p
        nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
        nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
        nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        nnoremap OO :call CscopeFindInteractive(expand('<cword>'))<CR>
        " nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
        "==================================================================
        "==================================================================
"++AAA11Serch++}}}
"++AAA12inoremap+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        inoremap <silent> <C-o> <C-x><C-o>
        "inoremap <silent> <C-k> <C-x><C-k>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-l> <C-x><C-l>
        inoremap <silent> <C-]> <C-x><C-]>
        "inoremap <silent> <C-u> <C-x><C-u>
        "------------------------------------------------------------------------------------------
        inoremap <silent> <C-a> <C-o>^
        inoremap <silent> <C-e> <End>
        "------------------------------InsertMode Scroll-------------------------------------------
        inoremap <M-j> <C-X><C-E>
        inoremap <M-k> <C-X><C-Y>
        "------------------------------------------
        inoremap <M-;> <C-R>=InsertAtEnd(';')<CR>
        inoremap <M-,> <C-R>=InsertAtEnd(',')<CR>
        inoremap <M-d> <C-o>cb<Esc><Right>
        inoremap <C-d> <C-o>cw<Esc><Right>
        inoremap <C-U> <C-G>u<C-U>
        "------------------------------------------
        "========================================================
        imap <expr><M-0> fzf#vim#complete#word({'left': '20%'})
        imap <M-9> <plug>(fzf-complete-line)
        "========================================================
        imap <expr> <M-8> fzf#vim#complete(fzf#wrap({
                                \ 'prefix': '^.*$',
                                \ 'source': 'rg -n ^ --color always',
                                \ 'options': '--ansi --delimiter : --nth 3..',
                                \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))
       "========================================================

"++AAA12imap++}}}
"++AAA13Unfuc+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        "=============================================
        vnoremap <Tab> >gv
        vnoremap <Backspace> <gv
        "=============================================
        nnoremap zf :call FocusLine()<cr>
        nmap <M-a> za
        nmap <M-z> zM
        "=============================================
        nmap zp <Plug>yankstack_substitute_older_paste
        nmap zn <Plug>yankstack_substitute_newer_paste

"++AAA13Unfuc++}}}
"++AAA14Func+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        function! FocusLine()
                let oldscrolloff = &scrolloff
                set scrolloff=0
                execute "keepjumps normal! mzzMzvzt25\<c-y>\<cr>"
                let &scrolloff = oldscrolloff
        endfunction

        "==================================================================================
        function! <SID>SynStack()
                if !exists("*synstack")
                        return
                endif
                echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
        endfunc

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
"++AAA14Func++}}}
"++AAA15Fzf++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:fzf_command_prefix = 'FF'
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
        "-[[B]Commits] Customize the options used by 'git log':
        let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
        "-iotag - hier in, in s9 out
        "-[Tags] Command to generate tags file
        let g:fzf_tags_command = 'ctags -R'
        "-[Commands] --expect expression for directly executing the command
        let g:fzf_commands_expect = 'alt-enter,ctrl-x'

        "======================================================================================================
        function! FzfSpellSink(word)
                exe 'normal! "_ciw'.a:word
        endfunction
        function! FzfSpell()
                let suggestions = spellsuggest(expand("<cword>"))
                return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'left': 30 })
        endfunction

        "======================================================================================================
        command! ZTag if !empty(tagfiles()) | call fzf#run({
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
        command! -bang -nargs=? -complete=dir ZFiles
                                \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
        "============================================================================================
        command! -bang -nargs=?  ZAg
                                \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)
        "============================================================================================
        command! -bang -nargs=?  ZGit
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
        command! ZLibList call fzf#run({'source': 'find ~/git/ ~/Documents/ -type f', 'sink':  'edit'})

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

        command! ZPlugHelp call fzf#run(fzf#wrap({
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
        cabbrev BoxM  call BoxMyC("")
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
        "---------------------------------
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

"++AAA15Fzf++}}}
"++AAA16Leader+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
"++AAA17Coc+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
"++AAA17Coc++}}}
"++AAA18-DEO-jedi-LSP++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        source ~/git/bTest/sPot/s9legoDeo.vim
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
        " nnoremap <F12> :call LanguageClient_contextMenu()<CR>

"++AAA18++}}}
"++AAA19Auto-Check+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        autocmd! FileType typescript setlocal completeopt+=menu,preview
        autocmd! FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd! FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd! FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd! FileType java setlocal omnifunc=javacomplete#Complete
        autocmd! FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd! FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd! FileType haskell setlocal omnifunc=necoghc#omnifunc
        set completeopt+=menu
        set completeopt+=preview
        "==========================================================================================
        "-CHECK-It-TODO
        autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        "==========================================================================================
        "-Always open read-only when a swap file is found
        autocmd! vimrc SwapExists * let v:swapchoice = 'o'
        "==========================================================================================
        "-Move to the directory each buffer
        autocmd! vimrc BufEnter * silent! lcd %:p:h
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

        let g:underlinetag_syntax = 'syntax keyword UnderlineTag %s containedin=ALLBUT,.*String.*,.*Comment.*,cIncluded,.*Function.*'
        let g:underlinetag_highlight = 'highlight UnderlineTag gui=underline cterm=underline term=underline'
        " highlight UnderlineTag  cterm=underline  gui=underline guifg=#555555
        "==========================================================================================
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "::::::

                " function! NearestMethodOrFunction() abort
                " return get(b:, 'vista_nearest_method_or_function', '')
                " endfunction

                " set statusline+=%{NearestMethodOrFunction()}

                " By default vista.vim never run if you don't call it explicitly.
                " If you want to show the nearest function in your statusline automatically,
                " autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

                "==================================================================================
                " let g:lightline = {
                "                 \ 'colorscheme': 'monokai_tasty',
                "                 \ 'active': {
                "                 \   'left': [ [ 'mode', 'paste' ],
                "                 \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
                "                 \ },
                "                 \ 'component_function': {
                "                 \   'cocstatus': 'coc#status',
                "                 \   'currentfunction': 'CocCurrentFunction',
                "                 \   'method': 'NearestMethodOrFunction'
                "                 \ },
                "                 \ }

        "::::::
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        "---Open-Quickfix-window-automatically-----------------------------------------------------
        "==========================================================================================
        autocmd QuickFixCmdPost grep cwindow
        autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
        autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p
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
        "- go to last edit position when opening files -
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
        "==========================================================================================
"++AAA19Auto++}}}



        "----------------------------------------------------------------------------------
        let g:splitjoin_split_mapping = ''
        let g:splitjoin_join_mapping = ''

        nmap <Leader>j :SplitjoinJoin<cr>
        nmap <Leader>s :SplitjoinSplit<cr>

        " foo 1, 2, { :bar => :baz }, { :baz => :qux }
        "----------------------------------------------------------------------------------

        autocmd BufEnter * call halo#run()

        highlight link Halo Search
        highlight Halo guifg=white guibg=#F92672 ctermfg=white ctermbg=197

