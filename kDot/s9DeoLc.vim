"==================================================================================================
"= File: s8DeoLc.vim
"==================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Lass Modified:      Mo 02 Dez 2019 01:32:54  CET
"==================================================================================================
let g:vimrcversion= 8
au VimEnter * echo "VIMRC v"g:vimrcversion
"==================================================================================================

"++AAA0+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/.config/nvim/init.vim'
        command! Vimrc :vs $MYVIMRC
        "----------------------------------------------------------------------------------
        let g:python_host_prog = '/usr/bin/python2'
        let g:python3_host_prog = '/usr/bin/python3'
        "let g:deoplete#sources#jedi#extra_path = $PYTHONPATH
        "let g:python3_host_prog=expand('~/anaconda3/bin/python')
        "----------------------------------------------------------------------------------
        " let g:loaded_clipboard_provider = empty(provider#clipboard#Executable()) ? 1 : 2
        "----------------------------------------------------------------------------------
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
"++AAA0++}}}

"++++AAA1+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        set shell=/bin/zsh
        let generate_tags=1
        set tags=.tags;
        set tags+=tags;
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
        "==========================================================================================
        ":set tags=./tags,tags,/home/user/commontags
        "----------------------------------------------------------------------------------
        " set dictionary=/usr/share/dict/words
        " set dictionary="/usr/dict/words"
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
        "===============================================================================
        if executable('ag')
                set grepprg=ag\ --nogroup\ --nocolor\ --column\ --ignore-dir\ node_modules\ --ignore-dir\ bower_components
                set grepformat=%f:%l:%c:%m
        endif

        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
        "----------------------------------------------------------------------------------
        "set grepprg=/bin/grep\ -nH
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
        set noswapfile
        set backup                               " enable backups
        set undodir=~/.config/nvim/undoDir/      " undo files
        set backupdir=~/.config/nvim/backUpDir/  " backups
        set directory=~/.config/nvim/swapDir/    " swap files


       "============================================================================================
        " The GNU bison parser generator (similar to YACC) generates a couple of
        " different types of errors. They start with the file name, then a colon. If
        " available, the linenumber comes next, followed by a dot (period) and the
        " column number. If appropriate, a dash and then another column number (giving a
        " column range) follows, and then a colon, space, and the error message.

        set errorformat+=%f:%l.%c-%*[0-9]:\ %m
        set errorformat+=%f:%l.%c:\ %m
        set errorformat+=%f:\ %m

        "---------------------------------------------------------------------------------
        " :MMake to perform a :make and to open any resulting quickfix window:
        " command -nargs=* MMake make <args>|cwindow 3

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
        "----------------------------------------------------------------------------------

"++AAA1++}}}

"++++AAA2+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "-magic--------
        silent! set wrapscan ignorecase smartcase incsearch hlsearch magic
        " \v: 'very magic', make every character except a-zA-Z0-9 and '_' have special meaning
        " use \v and \V to switch 'very magic' on or off.
        " \m, \M: 'magic' mode.
        " use \m and \M to switch 'magic' on or off.
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
        "---set whichwrap=b,s,h,l,<,>,[,]
        set splitbelow splitright
        set viminfo='20,\"80
        " read/write a .viminfo file, don't store more
        " means that the current buffer can be put
        " to background without being written; and
        " that marks and undo history are preserved
        "---Editing---------------------------------------------------------------------------------
        silent! set iminsert=0 imsearch=0 nopaste pastetoggle= nogdefault comments& commentstring=#\ %s
        silent! set smartindent autoindent shiftround shiftwidth=8 expandtab tabstop=4 smarttab softtabstop=8
        silent! set textwidth=0 backspace=indent,eol,start nrformats=hex formatoptions=cmMj nojoinspaces
        silent! set nohidden autoread noautowrite noautowriteall nolinebreak mouse=a modeline& modelines&
        silent! set noautochdir write nowriteany writedelay=0 verbose=0 verbosefile= notildeop noinsertmode
        silent! set foldcolumn=1 nofoldenable foldlevel=0 foldmarker={{{,}}} foldmethod=marker foldminlines=6
        " set foldclose=all

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
        "-SWITCH TO THE DIRECTORY OF THE OPEN BUFFER
        map cd :cd %:p:h<cr>
        "------------------------------------------------------------------------------------------
        set nosm
        set wmh=0
        "------------------------------------------------------------------------------------------
        set report=0 " always report changed lines
        "------------------------------------------------------------------------------------------
"+AAA2+}}}

"++AAA3+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------------------------------------------------------------------------------
        set diffopt+=vertical
        "???2019
        "------------------------------------------------------------------------------------------
        "char = can be removed from the list of valid filename char. JAVA_HOME=/opt/java/jdk1.4
        set isfname-==
        set autowrite  " Writes on make/shell commands
        set cf         " Enable error files & error jumping.
        set nu
        "----------------------------------------------------------------------------------
"++AAA3++}}}

"""""""""""""""""
""" HappyStart1""
"""""""""""""""""
call plug#begin('~/.config/nvim/plugged/')
"++AAAPlug++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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

        "---------NOVA---------------------------------------------------------------------
        Plug 'wesQ3/vim-windowswap'
        "Plug 'google/vim-searchindex'
        " let g:searchindex_improved_star=1
        "----------------------------------------------------------------------------------
        Plug 'kana/vim-textobj-user'
        "----------------------------------------------------------------------------------
        Plug 'adriaanzon/vim-textobj-matchit'
        "`am` and `im` :if-ifend , for-endfore ..
        "----------------------------------------------------------------------------------
        Plug 'gilligan/textobj-gitgutter'
                vmap ih <Plug>(textobj-gitgutter-i)
        "----------------------------------------------------------------------------------
        Plug 'kana/vim-textobj-diff'
        "----vac----
        Plug 'coderifous/textobj-word-column.vim'
        "----------------------------------------------------------------------------------
        Plug 'airblade/vim-gitgutter'
                let g:gitgutter_signs = 1
                let g:gitgutter_max_signs = 2000
        "--------------------------------------------------------------------------
                highlight GitGutterAdd ctermfg=green   guifg=#00ffff
                highlight GitGutterChange ctermfg=yellow
                highlight GitGutterDelete ctermfg=red
                highlight GitGutterChangeDelete ctermfg=cyan
        "--------------------------------------------------------------------------
                if exists("*gitgutter#highlight#define_highlights")
                        " let vim-gitgutter know we changed the SignColumn colors!
                        call gitgutter#highlight#define_highlights()
                endif
        "----------------------------------------------------------------------------------
        Plug 'aghareza/vim-gitgrep'
        "----------------------------------------------------------------------------------
        Plug 'romainl/vim-qf'
        Plug 'yssl/QFEnter'
        "----------------------------------------------------------------------------------
        Plug 'brooth/far.vim'
        "----------------------------------------------------------------------------------
        Plug 'osyo-manga/vim-brightest'
                let g:brightest#highlight = { "group" : "Define" }
        "-JAPAN-
        "----------------------------------------------------------------------------------
        Plug 'roxma/python-support.nvim'
                let g:python_support_python2_require = 0
                let g:python_support_python3_require = 0
        "---------------------------------------------------------------------------------
        Plug 'gastonsimone/vim-dokumentary/'
                "-=KKK=-
                "??? apt-get install dictd dict-gcide dict
                "let g:dokumentary_docprgs = {'c': 'cdoc {0}', 'python': ''}
                let g:dokumentary_docprgs = {'c': 'cdoc {0}'}
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
         Plug 'yarisgutierrez/ayu-lightline'
         let g:lightline = {
                         \ 'colorscheme': 'monokai_tasty',
                         \ 'active': {
                         \   'left': [ [ 'mode', 'paste' ],
                         \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
                         \ },
                         \ 'component_function': {
                         \   'cocstatus': 'coc#status',
                         \   'currentfunction': 'CocCurrentFunction',
                         \   'method': 'NearestMethodOrFunction'
                         \ },
                         \ }

        "----------------------------------------
        Plug 'zefei/vim-wintabs'
        " Plug 'zefei/vim-wintabs-powerline'
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
                let g:indentLine_color_gui = '#ffFF00'
                let g:indentLine_color_gui = '#ff5f00'
                "let g:indentLine_setConceal = 0
                let g:indentLine_bgcolor_term = 202
                let g:indentLine_faster = 1
                let g:indentLine_char = '|'
                let g:indentLine_first_char='|'
                let g:indentLine_showFirstIndentLevel=1
                let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']

        " Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        "----------------------------------------------------------------------------------
        "----DEO-1--------------------------------------------------------------------------
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        "---GLEB---------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        Plug 'sukima/xmledit/'
        "----------------------------------------------------------------------------------
        Plug 'sjl/gundo.vim'
        "----------------------------------------------------------------------------------
        Plug 'aperezdc/vim-template'
        "----------------------------------------------------------------------------------
        "-Plug 'devjoe/vim-codequery'
        "-TODO Plug 'neomake/neomake'
        "----------------------------------------------------------------------------------
        Plug 'tpope/vim-dispatch'
        let g:dispatch_compilers = {
                                \ 'latex': 'tex',
                                \ 'bundle exec': ''}
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/Lynx-Offline-Documentation-Browser'
        "----------------------------------------------------------------------------------
        " Plug 'jesseleite/vim-agriculture'
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
        " But if you want to install fzf as well using vim-plug:
        Plug 'junegunn/fzf', { 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'pbogut/fzf-mru.vim'
           let g:fzf_mru_relative = 1
        " FZFMru --prompt "Sup? " -q "notmuch"
        "------------------------------------------------------------------------------------------
        Plug 'cskeeters/unite-fzf'
        "------------------------------------------------------------------------------------------
        Plug 'ddrscott/vim-side-search'
        " --heading and --stats are required!
        let g:side_search_prg = 'ag --word-regexp'
                                \. " --ignore='*.js.map'"
                                \. " --heading --stats -B 1 -A 4"
        "---------------------------------------------------------
        " Can use `vnew` or `new`
        let g:side_search_splitter = 'vnew'
        let g:side_search_split_pct = 0.4
        "------------------------------------------------------------------------------------------
        Plug 'alok/notational-fzf-vim'
                let g:nv_search_paths = ['~/' ]
                let g:nv_search_paths = ['/media/red/']
                let g:nv_search_paths = ['~/git/bTest/pyLabGitPdbPythonMode27']
                let g:nv_search_paths = ['~/git/']
        "----------------------------------------------------------------------
        Plug 'Shougo/neomru.vim'
        "--------------------------------------
        Plug 'kien/ctrlp.vim'
        Plug 'wincent/command-t'
        "==================================================================================
                let g:CommandTMaxFiles = 10000 " maximum number of files scan.
                let g:CommandTMaxDepth = 15
                let g:CommandTMaxCacheDirectories = 1 " 0: no limit.
                let g:CommandTMaxHeight = 15 " 0: as much as available space.
                let g:CommandTMinHeight = 0 " 0: single line.
                let g:CommandTAlwaysShowDotFiles = 0 " only if entered string contains a dot
                let g:CommandTNeverShowDotFiles  = 0
                let g:CommandTScanDotDirectories = 0
                let g:CommandTMatchWindowAtTop   = 0 " match window appear at bottom.
                let g:CommandTMatchWindowReverse = 1 " let the best match at bottom.
                let g:CommandTTageIncludeFilenames = 1 " include filenames when matches
        "--------------------------------------
        Plug 'Shougo/unite.vim'
        Plug 'tsukkee/unite-tag'
        Plug 'SpaceVim/unite-ctags'
        Plug 'Shougo/unite-outline/'
        Plug 'tsukkee/unite-help'
        Plug 'rstacruz/vim-fastunite'
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
        "==========================================================================
        Plug 'tpope/vim-fugitive'
        "    :Git[!] [args]
        "    :Gstatus
        "    :Gcommit [args]
        "    :Gedit/:Gsplit/:Gvsplit/:Gtabedit/:Gpedit [revision]
        "    :Gwrite/:Gwq {path}
        "    :Gmove {destination}
        "    :Gremove
        "    :{range}Gread [revision]/[args]
        "    :Gdiff/:Gsdiff/:Gvdiff [revision]
        "    :Ggrep/:Glgrep [args] -- :grep/:lgrep with git-grep as 'grepprg'
        "    :Glog [args] -- load all previous revisions of current file into quickfix
        "    :[range]Gblame {flags}
        "    :[range]Gbrowse {revision}
        "--------------------------------------------------------------------------
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-unimpaired'
        Plug 'tpope/vim-eunuch'
        "=??? Plug 'tpope/vim-surround'
        "--------------------------------------------------------------------------
        Plug 'terryma/vim-expand-region'
                 "-Default-settings.
                 let g:expand_region_text_objects = {
                                         \ 'iw'  :0,
                                         \ 'iW'  :0,
                                         \ 'i"'  :0,
                                         \ 'i''' :1,
                                         \ 'ib'  :1,
                                         \ 'i)'  :1,
                                         \ 'iB'  :1,
                                         \ 'i}'  :1,
                                         \ 'i]'  :1,
                                         \ 'if'  :1,
                                         \ 'io'  :1,
                                         \ 'ip'  :1,
                                         \ 'ih'  :1
                                         \ }
        "----------------------------------------------------------------------------------
        Plug 'machakann/vim-sandwich'
                " sd,sr, sa{motion/textobject}{addition}(normal and visual mode)
                " let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
                " Sandwiched text could be resolved into two parts, {surrounding} and {surrounded text}.
                " sa add surroundings: mapped to the key sequence sa
                " sd Delete surroundings: mapped to the key sequence sd
                " sr Replace surroundings: mapped to the key sequence sr
                " ib Search and select a sandwiched text automatically: mapped to the key sequence ib and ab
                " is Search and select a sandwiched text with query: mapped to the key sequence is and as
                " da" will delete a quoted sympy.pprint(string.)
                "(<b>'Sbandawitch'</b>)
                nmap s <Nop>
                xmap s <Nop>
        "-------------------------------------------------------------
                let g:textobj_sandwich_no_default_key_mappings = 1
                omap ia <Plug>(textobj-sandwich-auto-i)
                xmap ia <Plug>(textobj-sandwich-auto-i)
                omap aa <Plug>(textobj-sandwich-auto-a)
                xmap aa <Plug>(textobj-sandwich-auto-a)
        "--------------------------------------------------------------
        "[ {(hello) ( noch ) ('Mal') ("tomos") } tormos]

        "---------------SYMPY-SANDWICH-----------------------------------------------------
                vmap sb "zdi sympy.pprint(<c-r>z)<esc>
                vmap sn "zdi print(<c-r>z)<esc>
                "-wrap <b></b> around selected text
                vmap se "zdi<b><c-r>z</b><esc>
                "-wrap <?=   ?> around visually selected text
                "vmap st "zdi<?= <c-r>z ?><esc>
        "----------------------------------------------------------------------------------
        "---NoAutoClose-YCM----------------------------------------------------------------
        "----------------------------------------------------------------------------------
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

        " <CR> : Insert new indented line after return if cursor in blank brackets
        "        or quotes.
        " <BS> : Delete brackets in pair
        " <M-p>: Toggle Autopairs (|g:AutoPairsShortcutToggle|)
        " <M-e>: Fast Wrap (|g:AutoPairsShortcutFastWrap|)
        " <M-n>: Jump to next closed pair (|g:AutoPairsShortcutJump|)
        " <M-b>: BackInsert (|g:AutoPairsShortcutBackInsert|)
        "---------------------------------------------------------------------------------
        Plug 'alvan/vim-closetag'
        let g:closetag_close_shortcut = '<leader>>'
        let g:closetag_filetypes = 'html,xhtml,phtml'
        let g:closetag_xhtml_filetypes = 'xhtml,jsx'
        "----------------------------------------------------------------------------------

         "{ sin ( cosin ( <b>'x2'</b> ) ) }
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
                 "" NERDCommenter
                 let g:NERDDefaultAlign = 'left'
                 " let g:NERDCommentEmptyLines = 1
                 " let g:NERDTrimTrailingWhitespace = 1

                 " NERDTrees File highlighting
                 function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
                         exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
                         exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
                 endfunction

                call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
                call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
                call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
                call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
                call NERDTreeHighlightFile('vim', 'Red', 'none', 'red', '#151515')
                call NERDTreeHighlightFile('js', 'blue', 'none', '#ffa500', '#151515')
                call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
                call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')
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
        "----------------------------------------------------------------------------------
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

        "==================================================================================
        "source ~/git/aTest/dotFiles/nVim/logoTextObjct.vim
        "source ~/git/aTest/dotFiles/nVim/logoHtml.vim
        "source ~/git/aTest/dotFiles/nVim/logoGit.vim
        "source ~/git/aTest/dotFiles/nVim/logoMako.vim
        "source ~/git/aTest/dotFiles/nVim/logoQF.vim
        "source ~/git/aTest/dotFiles/nVim/logoAsyncPy.vim
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
        " Plug 'tiagoinacio/fzf-bookmark.vim'
        Plug 'runfalk/vim-fzf-extended'
        Plug 'ryanoasis/vim-devicons'
        Plug 'mhinz/vim-startify'
        Plug 'vim-scripts/timestamp.vim'
        "----------------------------------------------------------------------------------
        Plug 'metakirby5/codi.vim'
        "----------------------------------------------------------------------------------
        Plug 'tylerhunt/vim-spark'
        "Plug 'sjl/vim-sparkup'
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
        " Plug 'junegunn/vim-oblique'
        "         hi! def link ObliqueCurrentMatch Keyword
        "         hi! def link ObliquePrompt       Structure
        "         hi! def link ObliqueLine         String
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
        "--??was uber wie??--
        "--------------------
        " Plug 'google/vim-coverage'
        "---------------------------------------------------------------------------------
        Plug 'voldikss/vim-translate-me'
        Plug 'iamcco/dict.vim'
                let g:api_key = "1932136763"
                let g:keyfrom = "aioiyuuko"
        "---------------------------------------------------------------------------------
        Plug 'ron89/thesaurus_query.vim'
        let g:tq_mthesaur_file="/home/red/git/bTest/kDot/DICT/mthesaurGu.txt"
        "------------------------------
        "----------------------------------------------------------------------------------
        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/seoul256.vim'
        Plug 'junegunn/limelight.vim'
        "---TRANSPORTER--------------------------------------------------------------------
        Plug 'matze/vim-move'
                let g:move_key_modifier = 'C'
        "--NewNew---TODO------------------------------------------
        Plug 'haya14busa/vim-easyoperator-line'
        "---------------------------------------------------------------------------------
        Plug 'unblevable/quick-scope'
        "--------------------Nice----------------------------------------------------------
        Plug 'moll/vim-bbye'
        "----------------------------------------------------------------------------------
        "-:Acks- Plug 'wincent/ferret'
        "-Plug 'lyuts/vim-rtags'
        "----------------------------------------------------------------------------------
        "---:T---:Tnew---:Topen---:TREPL---------------------------------------------------
        "----------------------------------------------------------------------------------
        " Plug 'kassio/neoterm'
        "         au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
        "         au VimEnter,BufRead,BufNewFile *.idr set filetype=idris
        "         au VimEnter,BufRead,BufNewFile *.lidr set filetype=lidris
        "         au VimEnter,BufRead,BufNewFile *.lfe, set filetype=lfe
        "----------------------------------------------------------------------------------
        Plug 'brookhong/cscope.vim'
        "----------------------------TESTING-----------------------------------------------
        "- Plug 'vim-scripts/CRefVim'
        "----------------------------------------------------------------------------------
        " Plug 'junegunn/vader.vim'
        Plug 'janko-m/vim-test'
                let test#strategy='neoterm'
        " let test#python#runner = 'pytest'
        " Runners available are 'pytest', 'nose', 'nose2', 'djangotest', 'djangonose' and Python's built-in 'unittest'

        "----------------------------------------------------------------------------------
        Plug 'vifm/neovim-vifm'
                let $MYVIFMRC='~/.config/vifm/vifmrc'
                let g:vifmSplitWidth = 88
        "------------------TODO------------------------------------------------------------
        " enable support for concealing some constructs with unicode glyphs.
        " Plug 'hylang/vim-hy'
        " let g:hy_enable_conceal = 1
        " If you do let g:hy_conceal_fancy=1, xi and #% are displayed as ξ

        "===================================================================================
        "------------------TODO------------------------------------------------------------
        "-Plug 'mhartington/nvim-typescript'
        "-autocmd BufWrite *.ts,*.tsx TSGetDiagnostics
        "===================================================================================
        "==TYPESCRIPT=======================================================================
        "===================================================================================
        " Plug 'moll/vim-node'
        " Plug 'sareyko/neat.vim'
        " Plug 'pangloss/vim-javascript'
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
        "===================================================================================
        "------------------CAR--------------------------------------------------------------
        Plug 'lilydjwg/colorizer'
        "----------------------------------------------------------------------------------
        "---DATABASE-CONSOLE---------------------------------------------------------------
        " Plug 'tpope/vim-dadbod'
        "----------------------------------------------------------------------------------
        "postgres
        " Plug 'vpenkoff/vim-pg'
        " Plug 'vim-scripts/dbext.vim'
        " :'<,'>DBExecSQL    (or used the default map <Leader>se)
        "===================================================================================
        "----!!!---LGHistory--------------------------------------
        Plug 'm42e/vim-lgh'
        "------------------TODO------------------------------------------------------------
        " Plug 'chriskempson/base16-vim'
        Plug 'morhetz/gruvbox'
        Plug 'trusktr/seti.vim'
        Plug 'ayu-theme/ayu-vim' " or other package manager
        " colorscheme ayu
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme
        " let ayucolor="dark"   " for dark version of theme
        "------------------TODO------------------------------------------------------------
        Plug 'sheerun/vim-polyglot'
        "---------------------
        " Plug 'xolox/vim-notes'

        "------------------Nice------------------------------------------------------------
        Plug 'vim-scripts/underlinetag'

        "===================================================================================
        "---Perfection - Continuity------
        Plug 'terryma/vim-smooth-scroll'
        "----------------------------------------------------------------------------------
        " Extended abbreviation/substition.
        Plug 'tpope/vim-abolish'
        "----------------------------------------------------------------------------------
        "-Plug 'amiorin/vim-project'
        "-Plug 'tpope/vim-projectionist'
        "----------------------------------------------------------------------------------
        "-Plug 'tpope/vim-rake'
        "-Plug 'tpope/vim-rails'
        Plug 'vim-ruby/vim-ruby'
        "===================================================================================
        " Plug 'StanAngeloff/php.vim'
        " Plug 'squizlabs/PHP_CodeSniffer'
        " Plug 'LucHermitte/lh-cpp'
        "==========================================================================================
        ":::Nice::::
        " smart <c-a> and <c-x> to toggle true/false, on/off, increment dates or weekday names, etc.
        " Plug 'nishigori/increment-activator'
        "------------------------------------------------------------------------------------------
        "-------420--------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        " Plug 'liquidz/vim-iced', {'for': 'clojure'}
        "------------------------------------------------------------------------------------------
        " Plug 'jacobsimpson/nvim-example-python-plugin'
        "------------------------------------------------------------------------------------------
        " Plug 'vigoux/LanguageTool.nvim'
        " let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'
        " hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        " hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none

        "===!!!============================================================================
        "Plug 'xerron/wordbyword.vim'
        "------------------------------------------------------------------------------------------
        Plug 'elzr/vim-json'
        Plug 'mrk21/yaml-vim'
        "---TASTY----
        Plug 'styled-components/vim-styled-components'
        Plug 'jparise/vim-graphql'
        "==================================================================================
        Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
        "----------------------------------------------------------------------------------
        Plug 'dominikduda/vim_timebox'
        "==================================================================================
        " Plug 'w0rp/ale'
        " let g:ale_sign_column_always = 0
        " let g:ale_emit_conflict_warnings = 0
        " let g:ale_lint_on_text_changed = 'never'
        " let g:ale_set_loclist = 0
        " let g:ale_set_quickfix = 1
        " let g:ale_set_signs = 0
        "---------------------------------------
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
        " Plug 'Timoses/vim-venu'
        "==================================================================================
        Plug 'hecal3/vim-leader-guide'
        "==================================================================================
        "==================NewNovember2019==================================================
        "==================================================================================

        "===!!!=================================
        "Python text objects
        "Plug 'jeetsukumaran/vim-pythonsense'
        "Plug 'voldikss/vim-hello-word'
        "===!!!=================================
        Plug 'AndrewRadev/dsf.vim'
        Plug 'lifepillar/vim-cheat40'
        Plug 'dalance/vseq.vim'
        Plug 'sk1418/HowMuch'
        Plug 'sk1418/QFGrep'
        Plug 'sk1418/Join'
        Plug 'salsifis/vim-transpose'
        Plug 'vim-scripts/a.vim'
        Plug 'machakann/vim-swap'
                " omap i, <Plug>(swap-textobject-i)
                " xmap i, <Plug>(swap-textobject-i)
                " omap a, <Plug>(swap-textobject-a)
                " xmap a, <Plug>(swap-textobject-a)
        "---------------------------------------------------------------------------------
        " Plug 'uguu-org/vim-matrix-screensaver'
        " Plug 'vim-scripts/TeTrIs.vim'
        " Plug 'pravj/vingvong'
        "---!!!---------------------------------------------------------------------------
        Plug 'justincampbell/vim-eighties'
        let g:eighties_enabled = 1
        let g:eighties_minimum_width = 70
        " Increase this if you want some extra room
        let g:eighties_extra_width = 0
        " Disable this if you just want the minimum + extra
        let g:eighties_compute = 1
        " Defaults to [], 'fugitiveblame' is only an example.
        " Takes a comma delimited list of bufnames as strings.
        let g:eighties_bufname_additional_patterns = ['fugitiveblame']
        "---------------------------------------------------------------------------------

        "===!!!=================================
        " Plug 'cosminadrianpopescu/vim-sql-workbench'
        "===!!!=================================
        "---------------------------------------------------------------------------------
        ":RUN
        "---------------------------------------------------------------------------------
        "Plug 'sollidsnake/verun'
        "Plug '5long/pytest-vim-compiler'
        "Plug 'reinh/vim-makegreen'
        "---------------------------------------------------------------------------------
        "Plug 'nielsmadan/venom'
        "Plug 'nielsmadan/mercury'
        "Plug 'nielsmadan/yankee'
        "---------------------------------------------------------------------------------
        "Plug 'dkarter/bullets.vim'
                "let g:bullets_enabled_file_types = [
                "\ 'markdown',
                "\ 'text',
                "\ 'scratch'
                "\]

        "---------------------------------------------------------------------------------
        Plug 'hallison/vim-rdoc'
        Plug 'msbmsb/stem-search.vim'
        Plug 'bronson/vim-trailing-whitespace'
        Plug 'mivok/vimtodo'
        Plug 'patstockwell/vim-monokai-tasty'
        Plug 'sainnhe/lightline_foobar.vim'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'vlmarek/DiffGoFile'
        Plug 'alfredodeza/pytest.vim'
        " Plug 'tommcdo/vim-lion'
        " let g:lion_squeeze_spaces = 1
        ":::ALT-DEO:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'maralla/completor.vim'
        " Plug 'prabirshrestha/asyncomplete.vim'
        " Plug 'maralla/completor.vim'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"++AAACoc-Vista+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'liuchengxu/vista.vim'
        let g:vista_fzf_preview = ['right:50%']
        let g:vista#renderer#icons = {
                                \   "function": "\uf794",
                                \   "variable": "\uf71b",
                                \  }
        " let g:vista#executive#ctags#support_json_format = 1
        let g:vista#executives = ['coc', 'ctags', 'lcn', 'vim_lsp']
        let g:vista#executives = ['ale', 'coc', 'ctags', 'lcn', 'vim_lsp']
        let g:vista_executive_for = {'php': 'coc', 'java': 'coc', 'typescript': 'coc', 'go': 'coc', 'c': 'coc', 'javascript': 'coc', 'html': 'coc', 'rust': 'coc', 'cpp': 'coc', 'css': 'coc', 'python': 'coc'}
        let g:vista_icon_indent = ['╰─🞂 ', '├─🞂 ']
        let g:vista_default_executive = 'ctags'
        let g:vista_fzf_preview = ['right:50%']
        let g:vista#renderer#enable_icon = 1
        ":::IRENE::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-jedi', {'do': 'yarn install'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++AAAcoc++}}}

"++AAALspAltDeo++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'prabirshrestha/vim-lsp'
        if executable('pyls')
        " pip install python-language-server
        au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'whitelist': ['python'],
                \ })
        endif
        "###################################################
        Plug 'autozimu/LanguageClient-neovim', {
                                \ 'branch': 'next',
                                \ 'do': 'bash install.sh',
                                \ }
        "----DEO-2--------------------------------------------------------------------------
"++AAALsp++}}} 

"++AAAdeo++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        source ~/git/bTest/kDot/s7PlugDeo.vim
        Plug 'davidhalter/jedi-vim'
        Plug 'zchee/deoplete-jedi'
"++AAAdeo++}}} 

        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'hsitz/VimOrganizer'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++AAAPlug++}}}
call plug#end()
"""""""""""""""""
""" HappyEnd1""""
"""""""""""""""""

"++AAAxU+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        ":UniteResume, :UniteBookmarkAdd,
        call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
                                \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))
        "==========================================================================================
        call unite#filters#sorter_default#use(['sorter_rank'])
        call unite#filters#matcher_default#use(['matcher_fuzzy'])
        call unite#filters#matcher_default#use(['matcher_fzf'])
"++AAAxU++}}} 

"++AAA5Main++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "===VIM-STARTIFY-2==================================================================
        let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"

        if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
                let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
        else
                let entry_format .= '. entry_path'
        endif
        " hi ColorColumn    ctermbg=240
        ":DimInactiveSyntaxOn
        let g:diminactive_use_syntax = 1
        let g:diminactive_enable_focus = 1
        let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help']
        "==================================================================================
"++AAA5Main++}}}

":::::::::::::::::::::::::::::::::::::::::::::::::::::::
         source ~/git/bTest/kDot/logoABB.vim
         source ~/git/bTest/kDot/logoFunc.vim
":::::::::::::::::::::::::::::::::::::::::::::::::::::::

"++AAACYAN++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "source mix/n-badwolf.vim
        "colorscheme molokai
        "colorscheme candycode
        set termguicolors
        " colorscheme vim-monokai-tasty
        " colorscheme desert
        " colorscheme ayu
        " let ayucolor="dark"
        colorscheme badwolf
        " let ayucolor="light"
        " let ayucolor="mirage"
        source ~/git/bTest/kDot/legoS8Cyan.vim

        silent! set complete& completeopt=menu infercase noshowfulltag
        "suppress intro message
        "set shortmess+=c
        set shortmess+=I

        "----------------------------------------------------------------------------------
        "::::::CYAN::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        source ~/git/bTest/kDot/myPlug/fliplr.vim
        source ~/git/bTest/kDot/myPlug/increment.vim
        "----------------------------------------------------------------------------------
        "-source ~/git/bTest/kDot/myPlug/nHydra.vim
        "------------------------------------------------------
        "-source ~/git/bTest/kDot/myPlug/NNV.vim
        "-let g:nnv_search_paths = ['~/git/bTest/']
        "-let g:nnv_search_paths = ['/media/red/124Black/']
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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

"++AAACYAN++}}} 

"++AAA2NAVI++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        nnoremap <BS> X
        "---it2018---------------------------------------------------------------------------------
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
        "-------------------------------------------------------------------------------------------
        nmap  n nzz
        nmap  N Nzz
        nmap  g* g*zz
        nmap  g# g#zz
        "------------------------
        "########################
        nmap <tab>     :bn<cr>
        nmap <s-tab>   :bp<cr>
        "########################
        "------------------------
        map <C-M-j> <C-W>j<C-W>_
        map <C-M-k> <C-W>k<C-W>_
        "map <C-M-=> <C-W>=
        "########################
        "------------------------

        nnoremap <M-right> :vertical resize +3<cr>
        nnoremap <M-left>  :vertical resize -3<cr>
        nnoremap <M-up>    :resize +3<cr>
        nnoremap <M-down>  :resize -3<cr>

        "------------------SCROLL----------------------------------------------------------
        noremap <silent> <S-up> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <S-down> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        " noremap <S-j> :PreviewScroll -1<cr>
        " noremap <S-k> :PreviewScroll +1<cr>
        "----------------------------------------------------------------------------------

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
"++AAA2NAVI++}}} 

"++AAAWin+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "macros even easier to remember: hit qq to record, q to stop recording, and Q to apply.
        nnoremap Q @q
        vnoremap Q :norm @q<cr>
        "==========================================================================================
        imap ;; <ESC>
        "====EX-EXEC===============================================================================
        nnoremap <M-x> :exe getline(".")<CR>
        vnoremap <M-x> :<C-w>exe join(getline("'<","'>"),'<Bar>')<CR>
        "==========================================================================================
        "Transport Down Ex:
        nnoremap ,w :<C-r>=expand("<cword>")<CR>
        nnoremap ;w :<C-r>=getline(".")<CR>

        "==========================================================================================
        nmap q <Nop>
        nnoremap q <Nop>
        nnoremap ss :wa<cr>
        nnoremap sx :xa<cr>

        nnoremap qa :wa<cr> :bd<cr>
        nnoremap qq :bd<cr>
        nnoremap qs :wa<cr> :qa<cr>

        "==========================================================================================
        let g:undoquit_mapping = ';q'
        nnoremap <Leader>q :Bdelete<CR>
        "---XA-------------------------------------------------------------------------------------

        nnoremap ee :w<cr>:e #<cr>
        nnoremap qw <C-w>q<CR>
        nnoremap wq <C-w>q<CR>
        nnoremap ww <C-w>o<CR>
        "------------------------------------------------------------------------------------------
        nnoremap ZZ  <Nop>
        nnoremap ZZ mzzt1<c-u>`z
        nnoremap zs mzzt2<c-u>`z
        nnoremap zx mzzt35<c-u>`z
        nnoremap EE :source $MYVIMRC<CR>
        nnoremap BB ggVG
        "==========================================================================================
        nnoremap ;s :ls<cr>:b<space>
        "==========================================================================================
        nnoremap ;v <c-w>v<c-w>l
        nnoremap vv <c-w>v<c-w>l<cr><c-w>w<cr>
        nnoremap hh <c-w>w
        nnoremap ll :execute "leftabove vsplit" bufname('#')<cr>
        nnoremap VV :execute "vsplit" bufname('#')<cr>

        "==========================================================================================
        " Convenience shortcuts
        command! CD cd %:p:h
        nnoremap <M-w> :write!<CR>
        inoremap <silent> <M-w> <C-o>:write!<CR>
        "==========================================================================================
        ":::::::::::::::FORMAT-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        nmap cc  gcl
        vmap <M-h> =
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
        "==========================================================================================
        nnoremap ;d mayiw`a:exe ":Capture !dict -P - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
        nnoremap ,d mayiw`a:exe ":Capture !dict -d fd-eng-deu - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
        "------------------------------------------------------------------
        nnoremap <Leader>d <Plug>DictSearch
        nnoremap <Leader>t :!goldendict <C-r><C-w><CR>
        nnoremap <Leader>s <Plug>(textobj-diff-hunk-n)
        nnoremap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
        "------------------------------------------------------------------
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>

        "----------------------------------------------------------------------------------
        nmap ;; <Plug>(easymotion-overwin-w)
        let g:EasyOperator_line_do_mapping = 0

        "------------------------------------------------------------------
        "1y$  //yank current row to register 1
        "<C-r>a to paste from register a
        "------------------------------------------------------------------
        nmap ]c <Plug>(GitGutterNextHunk)
        nmap [c <Plug>(GitGutterPrevHunk)
        "------------------------------------------------------------------
        nmap hp <Plug>(GitGutterPreviewHunk)
        nmap hs <Plug>(GitGutterStageHunk)
        nmap hu <Plug>(GitGutterUndoHunk)
        "------------------------------------------------------------------
        vmap     dg  :diffget<CR>
        vmap     dp  :diffput<CR>
        nnoremap do  :diffoff!<cr>
        "------------------------------------------------------------------

        "==========================================================================================
        "::::::::::::::::::::::::::::::-2MAGIC2-:::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        vmap <M-c> :w !cat >> ./zbuf<CR>

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
        " nnoremap <Leader>y :<C-u>Unite -buffer-name=neosnippet neosnippet<CR>
        " imap <C-s>    <Plug>(neosnippet_start_unite_snippet)
        imap <C-b>    <Plug>(neosnippet_expand_or_jump)
        smap <C-b>    <Plug>(neosnippet_expand_or_jump)
        xmap <C-b>    <Plug>(neosnippet_expand_target)
        "==========================================================================================
        function! UltiSnipsCallUnite()
                Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
                return ''
        endfunction
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

"++AAAWin++}}} 

"++AAAF2++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:asyncrun_open = 15

        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>

        "==========================================================================================
        "==HelpInHelpInHelp========================================================================
        "==========================================================================================
        nmap <M-h> <Esc>:helpgrep <C-r><C-w><CR>
        nmap <C-M-h> "zyw:exe  "h ".@z.""<CR>
        nmap <F2> <Esc>:help <C-r><C-w><CR>

        nnoremap ,h :CommandTHelp<cr>
        nnoremap ;h :CommandTHelp<cr>
        "==========================================================================================

        "==MMM====================================================================================
        " au! FileType vim,help nnoremap M :exec "helpgrep" expand("<cword>")<CR>
        "==========================================================================================
        nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
        inoremap <F3> <esc>:NERDTreeToggle<cr>

        "==========================================================================================
        source ~/git/bTest/kDot/s8Startify.vim
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

        "==========================================================================================
        source ~/git/bTest/kDot/sQuick8Menu.vim
        noremap <F12> :call quickmenu#toggle(0)<CR>
        "==========================================================================================
"++AAAF2++}}} 

"++AAASerch++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        nnoremap <Leader>0 :set number!<return>
        "---------------------------------------------------------------
        nnoremap <Leader>1 :PymodeDoc <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>2 :Pydoc <cword> .<cr>
        "---------------------------------------------------------------
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
        "---------------------------------------------------------------------------------
        nmap ;z <Plug>Zeavim
        nmap <Leader>z <Plug>ZVKeyDocset
        "------------------
        " :Pydoc foo.bar.baz (e.g. :Pydoc re.compile)
        " Or search a word (uses pydoc -k) in the documentation by typing:
        " :PydocSearch foobar (e.g. :PydocSearch socket)
        "------------------
        "==================================================================
        command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
        nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        "---------------------------------------------------------------
        nnoremap ff :NV <C-r><C-w><CR> | wincmd p
        nnoremap FF :ZRg <C-r><C-w><CR> | wincmd p
        nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
        nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
        nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        "==================================================================
        nnoremap OO :call CscopeFindInteractive(expand('<cword>'))<CR>
        nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
        "==================================================================
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>
        "==================================================================
"++AAASerch++}}} 

"++AAAinoremap+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        inoremap <silent> <C-o> <C-x><C-o>
        "inoremap <silent> <C-k> <C-x><C-k>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-l> <C-x><C-l>
        inoremap <silent> <C-]> <C-x><C-]>
        "inoremap <silent> <C-u> <C-x><C-u>

        "------------------------------InsertMode Scroll-------------------------------------------
        inoremap <C-up> <C-X><C-E>
        inoremap <C-down> <C-X><C-Y>

        "------------------------------------------------------------------------------------------
        "??? make it so that if I acidentally pres ^W or ^U in insert mode,
        " then <ESC>u wil undo just the ^W/^U, and not the whole insert
        " This is docmented in :help ins-special-special, a few pages down
        "------------------------------------------------------------------------------------------
        inoremap <C-W> <C-G>u<C-W>
        inoremap <C-U> <C-G>u<C-U>

        "==============================================================
        inoremap <silent> <M-;> <C-R>=InsertAtEnd(';')=<CR>
        inoremap <silent> <M-,> <C-R>=InsertAtEnd(',')<CR>
        " Use <M-d> to delete the rest of the word
        inoremap <silent> <M-d> <C-o>cw<Esc><Right>
        " Use <C-a> as an alias to <Home>
        inoremap <silent> <C-a> <C-o>^
        " Use <C-e> as an alias to <End>
        inoremap <silent> <C-e> <End>
        "==============================================================
        "imap <c-f> <plug>(fzf-complete-path)
        "========================================================
        imap <expr><C-0> fzf#vim#complete#word({'left': '20%'})
        imap <C-9> <plug>(fzf-complete-line)
        "========================================================
        " Global line completion (not just open buffers. ripgrep required.)
        imap <expr> <c-8> fzf#vim#complete(fzf#wrap({
                                \ 'prefix': '^.*$',
                                \ 'source': 'rg -n ^ --color always',
                                \ 'options': '--ansi --delimiter : --nth 3..',
                                \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))
       "========================================================
       imap <c-7> <plug>(fzf-complete-path)
"++imapAAA++}}} 

"++AAAUnfuc++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        "=============================================
        "===Make zO recursively open whatever fold====
        "=============================================
        nnoremap ,z :call FocusLine()<cr>
        nnoremap zf :call FocusLine()<cr>
        nnoremap z0 zczO
        "=============================================
        nmap zp <Plug>yankstack_substitute_older_paste
        nmap zn <Plug>yankstack_substitute_newer_paste
        " C-c and C-v - Copy/Paste to global clipboard
        vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]p
        " map p <Plug>(miniyank-autoput)
        " map P <Plug>(miniyank-autoPut)
"++AAAUnfuc++}}} 

"++AAAFunc++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
"++AAAFunc++}}} 

"++AAAFzf++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:fzf_command_prefix = 'FF'
        let g:fzf_layout = { 'window': 'enew' }
        let g:fzf_layout = { 'window': '-tabnew' }
        let g:fzf_layout = { 'down': '~20%' }
        let g:fzf_layout = { 'window': '10split enew' }
        "let g:fzf_history_dir = '~/.local/share/fzf-history'
        "==========================================================================================
        let g:fzf_colors =  { 'fg':      ['fg', 'Comment'],
                                \ 'bg':      ['bg', 'Normal'],
                                \ 'hl':      ['fg', 'Comment'],
                                \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                                \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn', 'Normal'],
                                \ 'hl+':     ['fg', 'Statement'],
                                \ 'info':    ['fg', 'PreProc'],
                                \ 'border':  ['fg', 'Ignore'],
                                \ 'prompt':  ['fg', 'Conditional'],
                                \ 'pointer': ['fg', 'Exception'],
                                \ 'marker':  ['fg', 'Keyword'],
                                \ 'spinner': ['fg', 'Comment'],
                                \ 'header':  ['fg', 'Comment'] }
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

        "========================================================
        " KKK FZF Selecting Mappings
        nmap <leader><tab> <plug>(fzf-maps-n)
        xmap <leader><tab> <plug>(fzf-maps-x)
        omap <leader><tab> <plug>(fzf-maps-o)

       "============================================================================================
       command! -bang -nargs=* ZFind call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
       command! -bang -nargs=* ZFi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
       "============================================================================================
       command! -bang -nargs=? -complete=dir ZFiles
                               \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
       "============================================================================================

       command! -bang -nargs=?  ZAg
                               \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)
       "============================================================================================
       command! -bang -nargs=* ZRg
                               \call fzf#vim#grep('rg --column --line-number --no-heading
                               \--fixed-strings --ignore-case --no-ignore --hidden --follow
                               \--glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
       "============================================================================================
       command! -bang -nargs=?  ZGit
                               \ call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})
       "============================================================================================
       command! -bang -nargs=?  ZClr
                               \ call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
                               \ 'fnamemodify(v:val, ":t:r")'),
                               \ 'sink': 'colo', 'left': '25%'})

       "========================================================================================================
       let g:pathToTemplates='~/bakBuk/'

       function! PutSink(file)
               execute ':r '.g:pathToTemplates.a:file
       endfunction

       command! ZPut call fzf#run({
                               \  'source': 'ls '.g:pathToTemplates,
                               \  'sink':    function('PutSink')})

       "====================================================================================

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


        "============================================================================================
        " Convenient command to see the difference between the current buffer and the
        " file it was loaded from, thus the changes you made.
        if !exists(":DiffOrig")
                command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                                        \ | wincmd p | diffthis
        endif
        "============================================================================================
        cabbrev SS  SideSearch
        cabbrev ZA  FFMarks
        cabbrev ZM  FZFMru
        cabbrev ZD  FZFDefinitions
        cabbrev ZH  FFHelptags
        cabbrev ZL  FFLines
        cabbrev ZBL FFBLines
        cabbrev ZT  ZTag
        cabbrev ZF  ZFiles
        cabbrev ZS  ZSnippets
        nmap == :call FzfSpell()<CR>
"++AAAFzf++}}} 

"++AAALeader+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "========================================
        "========================================
        source ~/git/bTest/kDot/sLeader8Guide.vim
        call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
        "========================================
        nnoremap <leader> :<c-u>LeaderGuide '<Space>'<CR>
        vnoremap <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
        "========================================
        nnoremap <localleader> :<c-u>LeaderGuide  ','<CR>
        vnoremap <localleader> :<c-u>LeaderGuideVisual  ','<CR>
        "========================================
        nnoremap ; :<c-u>LeaderGuide  ';'<CR>
        vnoremap ; :<c-u>LeaderGuideVisual  ';'<CR>
        "========================================
        "========================================
"++AAALeader++}}} 

"++AAACoc+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " source ~/git/bTest/kDot/slegoCoc.vim
"++AAACoc++}}} 

"++AAA6DEO6Jedi6LSP++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        source ~/git/bTest/kDot/s7legoDeo.vim
        " source ~/git/bTest/kDot/s7OneLegoDeo.vim
        let g:SuperTabContextDefaultCompletionType = '<c-n>'
        let g:SuperTabDefaultCompletionType = '<C-n>'
        "----------------------------------------------------------------------------------
        let g:jedi#documentation_command = "gj"
        let g:jedi#completions_enabled = 1
        let g:jedi#popup_on_dot = 1
        let g:jedi#auto_close_doc = 1  " close preview window after completion
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

"++AAA7++}}} 

"===========================
":::::::STOP-DEO-COC::::::::
"===========================

"++AAA-Auto+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        "==========================================================================================
        "-CHECK-It-TODO
        autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        "==========================================================================================
        "-Always open read-only when a swap file is found
        autocmd! vimrc SwapExists * let v:swapchoice = 'o'
        "-Setting lazyredraw causes a problem on startup
        autocmd! vimrc VimEnter * redraw
        "==========================================================================================
        "-Move to the directory each buffer
        autocmd! vimrc BufEnter * silent! lcd %:p:h
        "==========================================================================================
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
        "==========================================================================================
        autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
        "==========================================================================================
        "codefmt
                augroup autoformat_settings
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
        "==========================================================================================
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "::::::
                function! NearestMethodOrFunction() abort
                return get(b:, 'vista_nearest_method_or_function', '')
                endfunction

                set statusline+=%{NearestMethodOrFunction()}

                " By default vista.vim never run if you don't call it explicitly.
                " If you want to show the nearest function in your statusline automatically,
                " you can add the following line to your vimrc 
                autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
        "::::::
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        " autocmd! User Oblique       normal! zz
        " autocmd! User ObliqueStar   normal! zz
        " autocmd! User ObliqueRepeat normal! zz

        " hi! def link ObliqueCurrentMatch Keyword
        " hi! def link ObliquePrompt       Structure
        " hi! def link ObliqueLine         String
        " let g:oblique#clear_highlight =0
        "==================================================================================
        "---Open-Quickfix-window-automatically---------------------------------------------
        "==================================================================================
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
        " More useful command-line completion
        au! FocusLost * :silent! wall
        "==========================================================================================
        "==========================================================================================
        "- go to last edit position when opening files -
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
        "==========================================================================================
        "==========================================================================================
        "==========================================================================================
"++AAA-Auto++}}} 

vnoremap <silent> <M-{> >gv:<C-u>call Enclose('{', 1)<CR>
vnoremap <silent> <M-3> >gv:<C-u>call Enclose('#', 1)<CR>
vnoremap <silent> <M-/> :<C-u>call Enclose('/', 0)<CR>
