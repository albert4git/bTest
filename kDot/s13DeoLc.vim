"==================================================================================================
"= File: s2DeoLc.vim
"==================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Lass Modified:      Do 17 Okt 2019 01:15:19  CEST

"==================================================================================================
"==================================================================================================
"==================================================================================================
        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        "----------------------------------------------------------------------------------

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

        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
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
        " set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 14
        set shell=/bin/bash
        set shell=/bin/zsh
        "set tags+=.tags;
        set tags=.tags;
        set tags+=tags;
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
        "set whichwrap=b,s,h,l,<,>,[,]
        set splitbelow splitright
        set viminfo='20,\"80
        " read/write a .viminfo file, don't store more
        " means that the current buffer can be put
        " to background without being written; and
        " that marks and undo history are preserved
        "---Editing---------------------------------------------------------------------------------
        silent! set iminsert=0 imsearch=0 nopaste pastetoggle= nogdefault comments& commentstring=#\ %s
        silent! set smartindent autoindent shiftround shiftwidth=8 expandtab tabstop=4 smarttab softtabstop=8
        silent! set foldclose=all foldcolumn=1 nofoldenable foldlevel=0 foldmarker={{{,}}} foldmethod=marker foldminlines=6
        silent! set textwidth=0 backspace=indent,eol,start nrformats=hex formatoptions=cmMj nojoinspaces
        silent! set nohidden autoread noautowrite noautowriteall nolinebreak mouse=a modeline& modelines&
        silent! set noautochdir write nowriteany writedelay=0 verbose=0 verbosefile= notildeop noinsertmode
        set modelines=0

        "-AAA2.1-Extra vi-compatibility---------------------------------------------------------{{{
                set switchbuf=useopen    " reveal already opened files from the
                " do not auto insert comment chars on newline
                autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
                " Global
                set hidden               " Hide buffer instead of abandoning when unloading
        "-2.1-}}}

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
        "???2019
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

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"::::::::::::::::::::::::::PLUGSTART:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

call plug#begin('~/.config/nvim/plugged/')
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'nixprime/cpsm'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'       

        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/genutils'
        Plug 'LucHermitte/lh-vim-lib'
        Plug 'inkarkat/vim-ingo-library'
        "----------------------------------------------------------------------------------
        "--------------------------------------------------------------------------------- 
        "Plug 'vimim/vimim'
        "Plug 'cy2081/vim-cyim'
        "Plug 'vim-scripts/VimIM'
        "--------------------------------------------------------------------------------- 

        "---------NOVA--------------------------------------------------------------------- 
        Plug 'wesQ3/vim-windowswap' 
        " Plug 'google/vim-searchindex'
        let g:searchindex_improved_star=1
        "--------------------------------------------------------------------------------- 
        Plug 'kana/vim-textobj-user'
        "----------------------------------------------------------------------------------
        Plug 'adriaanzon/vim-textobj-matchit'
        "`am` and `im` :if-ifend , for-endfore ..
        "----------------------------------------------------------------------------------
        Plug 'gilligan/textobj-gitgutter'
                vmap ih <Plug>(textobj-gitgutter-i)
        "----------------------------------------------------------------------------------
        Plug 'kana/vim-textobj-diff'
        "-AAA6--GitGutter-----------------------------------------------------------------------{{{
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
                if exists("*gitgutter#highlight#define_highlights")
                        " let vim-gitgutter know we changed the SignColumn colors!
                        call gitgutter#highlight#define_highlights()
                endif
        "-------------------------------------------------------------------------- 
        Plug 'aghareza/vim-gitgrep'
        "--------------------------------------------------------------------------------- 
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
        Plug 'tyru/capture.vim'
        Plug 'thinca/vim-quickrun'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
                let g:airline_theme='light'
                set showmode                "-Display the current mode
                set showcmd                 "-Show partial commands in status line 
                "--------------------------------------------------------------------------
                let g:airline_section_c = '%{strftime("%Y %b %d %X")}'
                let g:airline#extensions#tabline#enabled = 1
                let g:airline#extensions#tabline#buffer_min_count = 1
                "-----------------------------------------------------------
                let g:airline#extensions#syntastic#enabled = 1
                let g:airline#extensions#branch#enabled = 1
                "-----------------------------------------------------------
                if !exists('g:airline_symbols')
                        let g:airline_symbols = {}
                endif
                "--------------------------------------------------------------------------
                hi statusline ctermbg=10 ctermfg=Black  cterm=bold
                hi StatusLineNC  ctermbg=5 ctermfg=0 cterm=NONE

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

        "---------------------------------------------------------------------------------- 
        Plug 'cwfoo/vim-text-omnicomplete'
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        "---------------------------------------------------------------------------------- 
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        Plug 'davidhalter/jedi-vim'
        Plug 'zchee/deoplete-jedi'
        " let g:python_host_prog = '/full/path/to/neovim2/bin/python'
        " let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
        "---------------------------------------------------------------------------------- 


        "---------------------------------------------------------------------------------- 
        "---GLEB--------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 
        Plug 'sukima/xmledit/'
        autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
        "---------------------------------------------------------------------------------- 
        Plug 'sjl/gundo.vim'
        Plug 'coderifous/textobj-word-column.vim'
        "----vac----

        "---------------------------------------------------------------------------------- 
        Plug 'devjoe/vim-codequery'
        Plug 'aperezdc/vim-template'

        "---------------------------------------------------------------------------------- 
        Plug 'vim-scripts/L9'
        " Plug 'vim-scripts/FuzzyFinder'
        "---------------------------------------------------------------------------------- 
        Plug 'prabirshrestha/async.vim'
        Plug 'skywind3000/asyncrun.vim'
        "---------------------------------------------------------------------------------- 
        "-TODO Plug 'neomake/neomake'
        "---------------------------------------------------------------------------------- 
        Plug 'tpope/vim-dispatch'
        let g:dispatch_compilers = {
                                \ 'latex': 'tex',
                                \ 'bundle exec': ''}

        "---------------------------------------------------------------------------------- 
        Plug 'autozimu/LanguageClient-neovim', {
                                \ 'branch': 'next',
                                \ 'do': 'bash install.sh',
                                \ }

        " TESTING doesn't the "on" setting work?
        Plug 'ternjs/tern_for_vim', {
        \    'do': 'npm install',
        \    'on': [
        \        'TernDef',
        \        'TernDefPreview',
        \        'TernDefSplit',
        \        'TernDefTab',
        \        'TernDoc',
        \        'TernDocBrowse',
        \        'TernRefs',
        \        'TernRename',
        \        'TernType'
        \    ]
        \}

        "---------------------------------------------------------------------------------- 
        Plug 'vim-scripts/Lynx-Offline-Documentation-Browser'
        "---------------------------------------------------------------------------------- 
        Plug 'jesseleite/vim-agriculture'
        Plug 'mileszs/ack.vim'
        Plug 'jremmen/vim-ripgrep'
        "----------------------------------------------------------------------------------
        Plug 'Chun-Yang/vim-action-ag'
        Plug 'rking/ag.vim'
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
        "   - . to start command-line with :Git [CURSOR] SHA à la fugitive
        "   - q to close
        "==========================================================================
        Plug 'tpope/vim-fugitive'
        "   - :Git[!] [args]
        "   - :Gstatus
        "   - :Gcommit [args]
        "   - :Gedit/:Gsplit/:Gvsplit/:Gtabedit/:Gpedit [revision]
        "   - :Gwrite/:Gwq {path}
        "   - :Gmove {destination}
        "   - :Gremove
        "   - :{range}Gread [revision]/[args]
        "   - :Gdiff/:Gsdiff/:Gvdiff [revision]
        "   - :Ggrep/:Glgrep [args] -- :grep/:lgrep with git-grep as 'grepprg'
        "   - :Glog [args] -- load all previous revisions of current file into quickfix
        "   - :[range]Gblame {flags}
        "   - :[range]Gbrowse {revision}
        "-------------------------------------------------------------------------- 
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-unimpaired'
        Plug 'tpope/vim-eunuch'
        "#??? Plug 'tpope/vim-surround'
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
                let g:AutoPairsMapCR = 0 " insert a new indented line if cursor in pairs.
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
        "Plug 'vim-scripts/tagselect'
        "Plug 'xolox/vim-easytags'
        Plug 'ludovicchabant/vim-gutentags'

        "----------------------------------------------------------------------------------
        Plug 'guns/xterm-color-table.vim'
        "Plug 'gko/vim-coloresque'
        "----------------------------------------------------------------------------------
        Plug 'haya14busa/incsearch.vim'
        Plug 'vim-scripts/SearchComplete'

        "-AAA3----------------------------------------------------------------------------------{{{
         Plug 'scrooloose/nerdtree'
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
                 "" NERD

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
         Plug 'mtth/scratch.vim'
        "---------------------------------------------------------------------------------- 
        Plug 'francoiscabrol/ranger.vim'
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
        "---AAA-nnn-----------------------------------------------------}}}


        "==================================================================================
        Plug 'nvie/vim-flake8'
        "---------------------------------------------------------------------------------- 
        Plug 'google/vim-maktaba'
        "-Strongly recommended: easy configuration of maktaba plugins.
        Plug 'google/vim-glaive'
                let g:myplugin_enablefeature = 1
                let g:myplugin_defaultdir = $HOME
                let g:myplugin_weirdmode = 'm'

        Plug 'google/vim-syncopate'
        "----------------------------------------------------------------------------------
        Plug 'google/vim-codefmt'
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
        "---------------------------------------------------------------------------------- 
        Plug 'godlygeek/tabular'

        "--------------------------------------------------------------------------------- 
                " abc,def,ghi , some , shrt 
                " a,b,c
        "--------------------------------------------------------------------------------- 
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

        "===BOOKMARK========================================================================
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
                autocmd! BufEnter * :call BookmarkMapKeys()
                highlight BookmarkSign ctermbg=10 ctermfg=1
                highlight BookmarkLine ctermbg=10 ctermfg=1
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
        Plug 'tiagoinacio/fzf-bookmark.vim'
        Plug 'runfalk/vim-fzf-extended'
        " Plug 'ryanoasis/vim-devicons'
        Plug 'mhinz/vim-startify'
        Plug 'blueyed/vim-diminactive'
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
                " vimcmdline options
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
                " let g:echodoc#type = 'floating'
                " change Pmenu to your highlight group
                highlight link EchoDocFloat Pmenu
                
        "--------------------------------------------------------------------------------- 
        Plug 'KabbAmine/zeavim.vim'
        "------Advanced:------------------------------------------------------------------ 
        Plug 'junegunn/vim-pseudocl'
        "--------------------------------------------------------------------------------- 
        "---FUZZY-SEARCH------------------------------------------------------------------ 
        "--------------------------------------------------------------------------------- 
        " Plug 'junegunn/vim-oblique'
        "--------------------------------------------------------------------------------- 
        "         hi! def link ObliqueCurrentMatch Keyword
        "         hi! def link ObliquePrompt       Structure
        "         hi! def link ObliqueLine         String
        "--------------------------------------------------------------------------------- 
        Plug 'junegunn/vim-easy-align'
                " Start interactive EasyAlign in visual mode (e.g. vipga)
                xmap ga <Plug>(EasyAlign)
                " Start interactive EasyAlign for a motion/text object (e.g. gaip)
                nmap ga <Plug>(EasyAlign)
        "--------------------------------------------------------------------------------- 

        "--------------------------------------------------------------------------------- 
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
        "---------------------------------------------------------------------------------- 
        Plug 'itchyny/calendar.vim'
        "--NewNew---TODO------------------------------------------
        Plug 'haya14busa/vim-easyoperator-line'
        " Plug 'bfredl/nvim-miniyank'
        "--------------------------------------------------------------------------------- 
        Plug 'unblevable/quick-scope'
        augroup qs_colors
                autocmd!
                autocmd ColorScheme * highlight QuickScopePrimary  ctermfg=81 cterm=underline
                autocmd ColorScheme * highlight QuickScopeSecondary  ctermfg=93 cterm=underline
        augroup END
        "--------------------Nice---------------------------------------------------------- 
        Plug 'moll/vim-bbye'
        "---------------------------------------------------------------------------------- 
        "-:Acks- Plug 'wincent/ferret'
        "-Plug 'lyuts/vim-rtags'
        "-Plug 'vim-scripts/Conque-Shell'
        "-Plug 'vim-scripts/spreadsheet.vim'
        "---------------------------------------------------------------------------------- 
        "---:T---:Tnew---:Topen---:TREPL---------------------------------------------------
        "---------------------------------------------------------------------------------- 
        Plug 'kassio/neoterm'
                au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
                au VimEnter,BufRead,BufNewFile *.idr set filetype=idris
                au VimEnter,BufRead,BufNewFile *.lidr set filetype=lidris
                au VimEnter,BufRead,BufNewFile *.lfe, set filetype=lfe
                " <Plug>(neoterm-repl-send)
        "---------------------------------------------------------------------------------- 
        Plug 'brookhong/cscope.vim'
        "         nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
        "-------------------------TESTING-------------------------------------------------
        "- Plug 'vim-scripts/CRefVim'
        Plug 'alvan/vim-closetag'
        let g:closetag_close_shortcut = '<leader>>'
        let g:closetag_filetypes = 'html,xhtml,phtml'
        let g:closetag_xhtml_filetypes = 'xhtml,jsx'
        "---------------------------------------------------------------------------------- 
        " Plug 'junegunn/vader.vim'
        Plug 'janko-m/vim-test'
                let test#strategy='neoterm'
        " let test#python#runner = 'pytest'
        " Runners available are 'pytest', 'nose', 'nose2', 'djangotest', 'djangonose' and Python's built-in 'unittest'

        "---------------------------------------------------------------------------------- 
        Plug 'vifm/neovim-vifm'
                ":let $MYVIFMRC=/path/to/custom/vifmrc
                let $MYVIFMRC='~/.config/vifm/vifmrc'
                let g:vifmSplitWidth = 88
        "------------------TODO------------------------------------------------------------ 
        " enable support for concealing some constructs with unicode glyphs.
        " Plug 'hylang/vim-hy'
        " let g:hy_enable_conceal = 1 
        " If you do let g:hy_conceal_fancy=1, xi and #% are displayed as ξ

        "------------------TODO------------------------------------------------------------ 
        "-???err??? Plug 'mhartington/nvim-typescript'
        "-Plug 'mhartington/nvim-typescript'
        "-autocmd BufWrite *.ts,*.tsx TSGetDiagnostics
        "---------------------------------------------------------------------------------- 
        " TYPESCRIPT
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'leafgarland/typescript-vim', { 'for': [ 'typescript', 'vue' ] }
        Plug 'peitalin/vim-jsx-typescript'
                autocmd BufNewFile,BufRead *.tsx,*.jsx,*.ts,*.js set filetype=typescript.tsx
                " dark red
                hi tsxTagName guifg=#E06C75
                " orange
                hi tsxCloseString guifg=#F99575
                hi tsxCloseTag guifg=#F99575
                hi tsxAttributeBraces guifg=#F99575
                hi tsxEqual guifg=#F99575
                " yellow
                hi tsxAttrib guifg=#F8BD7F cterm=italic
        "------------------CAR-------------------------------------------------------------- 
        Plug 'ivalkeen/nerdtree-execute'
        Plug 'Linfee/nerdtree-open'
        Plug 'lilydjwg/colorizer'
        Plug 'tpope/vim-dadbod'
        "--------------------------------------------------------------------------------- 
        " Plug 'vpenkoff/vim-pg'  "postgres"
        " Plug 'vim-scripts/dbext.vim'
        " :'<,'>DBExecSQL    (or used the default map <Leader>se)
        "----!!!---LGHistory--------------------------------------
        Plug 'm42e/vim-lgh'
        "----Nice---Tabs------
        " Plug 'ap/vim-buftabline'
        Plug 'xolox/vim-notes'
        "------------------TODO------------------------------------------------------------ 
        " Plug 'chriskempson/base16-vim'
        Plug 'trusktr/seti.vim'
        Plug 'ayu-theme/ayu-vim' " or other package manager
        " colorscheme ayu
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme
        " let ayucolor="dark"   " for dark version of theme
        "------------------TODO------------------------------------------------------------ 
        Plug 'sheerun/vim-polyglot'

        "------------------Nice------------------------------------------------------------ 
        Plug 'vim-scripts/underlinetag'
        augroup UnderlineTag
                autocmd!
                autocmd BufEnter *.py UnderlineTagOn
        augroup END

        "---Perfection - Continuity------
        Plug 'terryma/vim-smooth-scroll'

        "------------------TODO------------------------------------------------------------ 
        Plug 'vim-scripts/utl.vim'
        " [ open with \o ] {{{ open: URL, preview doc: markdown, TeX, etc.
        " Utl {{{ :Utl to open links, files.
        " nnoremap <leader>o :Utl<CR>
        " nnoremap ;o :Utl<CR>
        " Syntax: no need to escape 'spaces'.
        " use '' contain filename(url) strings. e.g. = ":silent !evince '%p' &"
        " <url:#r=here> id=here | <url:tn=some text> <url:filename.txt#line=-10>
        " <url:fo obar.pdf> | <url:.t/emp> folder |
        " <url:../plugin/utl.vim#tn=text>
        " <url:file:///home/stb/.vim/plugin/utl.vim>
        " <url:http://www.google.ocm> www.vm.oigr
        " <url:man:ls> || <urlc:onfig:>
        " download from [1] || [1] www.google.com
        " It brings the benefits of URL-based hyperlinking to plain text,
        " extending the URL syntax for plain text needs.
        let g:utl_opt_verbose=0 " 0=no (default), 1=yes
        let g:utl_opt_highlight_urls='yes' " 'yes' is default / 'no'

        " HTTP
        " %u, %p for Unix, %P for Windows.
        if !exists("g:utl_cfg_hdl_scm_http_system")
                if has("unix")
                        " let g:utl_cfg_hdl_scm_http_system = 'silent !xdg-open %u' " for ubuntu system
                        "let g:utl_cfg_hdl_scm_http_system = "!xterm -e lynx '%u#%f'" "	console browser
                        " if browser is GUI, don't use "silent" => "silent !browser", will crash terminal vim screen
                        " Check if an instance is already running, and if yes use it, else start firefox.
                        " let g:utl_cfg_hdl_scm_http_system = "silent !firefox -remote 'ping()' && firefox -remote 'openURL( %u )' || firefox '%u#%f' &"
                        " use lightweight browser like : luakit, jumanji, urbl etc.
                        let g:utl_cfg_hdl_scm_http_system = "!firefox '%u#%f' &"
                endif
                let g:utl_cfg_hdl_scm_http=g:utl_cfg_hdl_scm_http_system
        endif
        " http wget:
        let g:utl_cfg_hdl_scm_http__wget="call Utl_if_hdl_scm_http__wget('%u')"
        " scp
        if !exists("g:utl_cfg_hdl_scm_scp")
                let g:utl_cfg_hdl_scm_scp = "silent %d %u"
        endif
        " mailto:
        if !exists("g:utl_cfg_hdl_scm_mailto")
                let g:utl_cfg_hdl_scm_mailto = "!urxvt -e mutt '%u'"
        endif
        " generic
        if !exists("g:utl_cfg_hdl_mt_generic")
                if has("unix")
                        if $WINDOWMANAGER =~? 'kde'
                                let g:utl_cfg_hdl_mt_generic = 'silent !konqueror "%p" &'
                        else
                                let g:utl_cfg_hdl_mt_generic = 'silent !urxvt -e sh -c ranger "%p"'
                        endif
                endif
        endif
        " directory
        let g:utl_cfg_hdl_mt_text_directory__cmd = ':!urxvt -e sh -c ranger "%p"'
        let g:utl_cfg_hdl_mt_text_directory__vim = 'VIM'   " Vim builtin file explorer
        " let g:utl_cfg_hdl_mt_text_directory='VIM'
        " let g:utl_cfg_hdl_mt_text_directory = ':silent !nautilus "%p" &'
        let g:utl_cfg_hdl_mt_text_directory=g:utl_cfg_hdl_mt_text_directory__cmd
        " application/pdf
        let g:utl_cfg_hdl_mt_application_pdf = ":silent !evince '%p' &"
        " TODO application/djvu
        let g:utl_cfg_hdl_mt_application_djvu = ":silent !evince '%p' &"
        " application/chm
        " let g:utl_cfg_hdl_mt_application_chm = ":silent !chmsee '%p' &"
        " application/doc
        let g:utl_cfg_hdl_mt_application_msword = ":silent !libreoffice '%p' &"
        " }}}

        " - Open any URLs found in text with appropriate handler
        " - Open files of any media type from within Vim (.pdf, .jpg, etc)
        " - Small helper utilities via embedded Vimscript
        " - Project management
        " - Organizing ideas
        " - Commenting source code
        " - Personal Wiki
        " - Editing HTML
        " - Bookmark files, directories, URLs
        "---------------------------------------------------------------------------------- 
        Plug 'tpope/vim-abolish'        " Extended abbreviation/substition.
        "---------------------------------------------------------------------------------- 
        "-Plug 'amiorin/vim-project'
        "-Plug 'tpope/vim-projectionist'
        "-Plug 'tpope/vim-rake'
        "-Plug 'tpope/vim-rails'
        Plug 'vim-ruby/vim-ruby'

        "---------------------------------------------------------------------------------- 
        "--------------------------TRASH--------------------------------------------------- 
        " Plug 'WolfgangMehner/bash-support'
        " Plug 'tpope/vim-rsi'
        "---------------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 
        " Plug 'StanAngeloff/php.vim'
        " Plug 'squizlabs/PHP_CodeSniffer'
        " Plug 'LucHermitte/lh-cpp'
        "--------------------------------------------------------------------------------- 
        " Plug 'vim-scripts/foo.vim'
        "--------------------------------------------------------------------------------- 
        "--------------------------------------------------------------------------------- 

        " smart <c-a> and <c-x> to toggle true/false, on/off, increment dates or weekday names, etc.
        Plug 'nishigori/increment-activator'
        "------------------------------------------------------------------------------------------
        "-------420--------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        Plug 'tacahiroy/ctrlp-funky'
                nnoremap <Leader>fu :CtrlPFunky<Cr>
                " narrow the list down with a word under cursor
                nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
        "------------------------------------------------------------------------------------------
        Plug 'epheien/termdbg'
        "------------------------------------------------------------------------------------------
        Plug 'guns/vim-sexp',    {'for': 'clojure'}
        Plug 'liquidz/vim-iced', {'for': 'clojure'}
        "------------------------------------------------------------------------------------------
        Plug 'dominikduda/vim_timebox'
        "------------------------------------------------------------------------------------------
        Plug 'osyo-manga/vim-anzu'
        "------------------------------------------------------------------------------------------
        Plug 'sunaku/vim-shortcut'
        "------------------------------------------------------------------------------------------
        Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
        "------------------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        Plug 'liuchengxu/vista.vim'
        let g:vista_fzf_preview = ['right:50%']
        "------------------------------------------------
        let g:vista#renderer#icons = {
                                \   "function": "\uf794",
                                \   "variable": "\uf71b",
                                \  }
        "------------------------------------------------------------------------------------------
        "------LSP---------------------------------------------------------------------------------
        Plug 'prabirshrestha/vim-lsp'
        "------------------------------------------------------------------------------------------

        "------------------------------------------------------------------------------------------
        " Plug 'jacobsimpson/nvim-example-python-plugin'
        "------------------------------------------------------------------------------------------
        Plug 'vigoux/LanguageTool.nvim'
        let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'

        hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none

        Plug 'elzr/vim-json' " For metadata.json
        Plug 'mrk21/yaml-vim' " For hieradata

        "------------------------------------------------------------------------------------------
        "Plug 'w0rp/ale'
        "        "Linting
        "        let g:ale_sign_column_always = 1
        "        let g:ale_sign_error = '>>'
        "        let g:ale_sign_warning = '--'
        "        let g:ale_linters = {
        "                                \   'javascript': ['eslint'],
        "                                \   'jsx': ['eslint'],
        "                                \   'python': ['flake8'],
        "                                \}
        "==================================================================================
        Plug 'w0rp/ale'
        let g:ale_sign_column_always = 0
        let g:ale_emit_conflict_warnings = 0
        let g:ale_lint_on_text_changed = 'never'
        let g:ale_set_loclist = 0
        let g:ale_set_quickfix = 1
        "---------------------------------------
        let g:ale_set_signs = 0
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
        "----------------------------------------------------------------------------------

        Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
        autocmd User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

        "----------------------------------------------------------------------------------
         Plug 'hecal3/vim-leader-guide'
        "----------------------------------------------------------------------------------

call plug#end()

"""""""""""""""""
""" HappyEnd """"
"""""""""""""""""

        "===VIM-SARTIFY-2==================================================================
        let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"

        if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
                let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
        else
                let entry_format .= '. entry_path'
        endif
        "==================================================================================

        " hi ColorColumn    ctermbg=240
        let DimInactiveSyntaxOn = 1
        let g:diminactive_use_syntax = 1
        let g:diminactive_enable_focus = 1
        let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help']
        "==================================================================================

        "==================================================================================
        "----------------------------------------------------------------------------------
        "==================================================================================
        let g:jedi#use_splits_not_buffers = "left"
        let g:jedi#popup_on_dot = 0
        "----------------------------------------------------------------------- 
        let g:jedi#goto_command = "<leader>d"
        let g:jedi#goto_assignments_command = "<leader>g"
        let g:jedi#goto_definitions_command = ""
        "--------------MMM--------------------------
        let g:jedi#documentation_command = "M"
        let g:jedi#usages_command = "<leader>n"
        let g:jedi#rename_command = "<leader>r"
        "let g:jedi#completions_command = "<C-z>"
        let g:jedi#completions_command = "<C-Space>"
        let g:jedi#popup_on_dot = 1
        let g:jedi#completions_enabled = 1
        let g:jedi#popup_select_first = 1
        let g:jedi#show_call_signatures = "1"
        let g:jedi#goto_command = "gt"
        let g:jedi#auto_close_doc = 0  " close preview window after completion
        "::::::::::::::::::::::-=<1>=-:::::::::::::::::::::::::::::::::::::::::::::::::::::
        let g:deoplete#enable_at_startup = 1
        call deoplete#custom#option('refresh_always', v:true)
        "call deoplete#custom#source('jedi', 'is_debug_enabled', 1)
        "call deoplete#enable_logging('DEBUG', 'deoplete.log')
        "-------------------------------------------------------------------------------- 
        let g:deoplete#enable_ignore_case = 1
        let g:deoplete#enable_smart_case = 1
        let g:deoplete#enable_camel_case = 1
        let g:deoplete#enable_refresh_always = 1
        let g:deoplete#max_abbr_width = 0
        let g:deoplete#max_menu_width = 0
        "--------------------------------------------------------------------------------
        let g:deoplete#sources#ternjs#timeout = 3
        let g:deoplete#sources#ternjs#types = 1
        let g:deoplete#sources#ternjs#docs = 1
        call deoplete#custom#source('_', 'min_pattern_length', 3)
        "--------------------------------------------------------------------------------
        let g:deoplete#skip_chars = ['(', ')', '<', '>']
        let g:deoplete#tag#cache_limit_size = 800000
        let g:deoplete#file#enable_buffer_path = 1
        "-------------------------------------------------------------------------------- 
        " let g:LanguageClient_serverCommands = {
        "                         \ 'python': ['/usr/local/bin/pyls'],
        "                         \ }
        "-------------------------------------------------------------------------------- 
        "-------------------------------------------------------------------------------- 

        let g:LanguageClient_serverCommands = {
                                \ 'haskell': ['hie', '--lsp'],
                                \ 'c': ['ccls', '--log-file=/tmp/ccls.log'],
                                \ 'cpp': ['ccls', '--log-file=/tmp/ccls.log'],
                                \ 'python': ['pyls', '--log-file=/tmp/pyls.log'],
                                \ }


        "---------------------------------------------------------------------------------- 
        let g:deoplete#sources#jedi#statement_length = 30
        let g:deoplete#sources#jedi#show_docstring = 1
        let g:deoplete#sources#jedi#short_types = 1
        "---------------------------------------------------------------------------------- 

        "---------------Zelenski-----------------------------------------------------------
        " If you want to trigger deoplete manually, see also
        " deoplete-options-auto_complete, which should be 1 then
        " set to 1 if you want to disable autocomplete
        let g:deoplete#disable_auto_complete = 0
        let g:deoplete#auto_complete_start_length=1
        " let g:autocomplete_deoplete = 'deoplete'
        "----------------------------------------------------------------------------------
        " Plugin key-mappings.
        inoremap <expr><C-g>     deoplete#undo_completion()
        inoremap <expr><C-l>     deoplete#refresh()
        " inoremap <expr><C-h>     deoplete#smart_close_popup()."\<C-h>"
        inoremap <expr><C-k>     deoplete#smart_close_popup()
        inoremap <C-space>     <Esc>a

        " imap <expr> <C-Space>  deoplete#manual_complete()
        "-------------------------------------------------------------------------------- 
        autocmd! FileType python setlocal completeopt-=preview
        "--------------------------------------------------------------------------------
        autocmd! FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd! FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd! FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd! FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd! FileType python setlocal omnifunc=jedi#completions
        autocmd! FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd! FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd! FileType haskell setlocal omnifunc=necoghc#omnifunc
        "--------------------------------------------------------------------------------
        set complete=.,w,b,t,i,u,kspell
        "            | | | | | | |
        "            | | | | | | `-dict
        "            | | | | | `-unloaded buffers
        "            | | | | `-include files
        "            | | | `-tags
        "            | | `-other loaded buffers
        "            | `-windows buffers
        "            `-the current buffer
        "--------------------------------------------
        "set complete+=ispell
        "set completeopt=menuone,menu,longest,preview
        set omnifunc=syntaxcomplete#Complete
        set completeopt=menu
        "--------------------------------------------------------------------------------
        call deoplete#custom#source('neosnippet',    'rank', 690)
        call deoplete#custom#source('ultisnips',     'rank', 680)
        call deoplete#custom#source('padawan',       'rank', 660)
        call deoplete#custom#source('go',            'rank', 650)
        call deoplete#custom#source('vim',           'rank', 640)
        call deoplete#custom#source('flow',          'rank', 630)
        call deoplete#custom#source('TernJS',        'rank', 620)
        call deoplete#custom#source('LanguageClient','rank', 610)
        call deoplete#custom#source('jedi',          'rank', 600)
        call deoplete#custom#source('tag',           'rank', 550)
        call deoplete#custom#source('omni',          'rank', 500)
        call deoplete#custom#source('member',        'rank', 500)
        call deoplete#custom#source('file_include',  'rank', 420)
        call deoplete#custom#source('file',          'rank', 410)
        call deoplete#custom#source('around',        'rank', 330)
        call deoplete#custom#source('buffer',        'rank', 320)
        call deoplete#custom#source('dictionary',    'rank', 310)
        call deoplete#custom#source('tmux-complete', 'rank', 300)
        call deoplete#custom#source('syntax',        'rank', 200)
        "--------------------------------------------------------------------------------
        call deoplete#custom#source('LanguageClient','mark', 'langCl')
        call deoplete#custom#source('omni',          'mark', 'omni')
        call deoplete#custom#source('flow',          'mark', 'flow')
        call deoplete#custom#source('TernJS',        'mark', 'tern')
        call deoplete#custom#source('go',            'mark', 'go')
        call deoplete#custom#source('jedi',          'mark', 'Jedi')
        call deoplete#custom#source('vim',           'mark', 'vim')
        call deoplete#custom#source('neosnippet',    'mark', 'neoSnp')
        call deoplete#custom#source('around',        'mark', 'round')
        call deoplete#custom#source('buffer',        'mark', 'Buf')
        call deoplete#custom#source('tmux-complete', 'mark', 'tmux')
        call deoplete#custom#source('syntax',        'mark', 'synt')
        call deoplete#custom#source('member',        'mark', 'mmbr')

        "---!!!-???-----------------------------------------------------------
        let generate_tags=1
        "==========================================================================================
        ":UniteResume, :UniteBookmarkAdd,
        call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
                                \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))
        "------------------------------------------------------------------------------------------
        call unite#filters#sorter_default#use(['sorter_rank'])
        call unite#filters#matcher_default#use(['matcher_fuzzy'])
        call unite#filters#matcher_default#use(['matcher_fzf'])


":::::::::::::::::::::::::::DEOEND:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " source ~/git/bTest/kDot/k2MinFzfDeoLs.vim
         source ~/git/bTest/kDot/logoABB.vim
         source ~/git/bTest/kDot/logoFunc.vim
        "source ~/git/bTest/kDot/minFzfDeoLsJediSnip.vim
        "----------------------------------------------------------------------------------
        "-------CYAN---------------------old Stuck.chen------------------------------------
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "source mix/n-badwolf.vim 
        "colorscheme molokai
        "colorscheme candycode
        set termguicolors
        colorscheme desert
        colorscheme badwolf
        colorscheme ayu
        let ayucolor="dark"
        " let ayucolor="light"
        " let ayucolor="mirage"
        source ~/git/bTest/kDot/legoSCyan.vim

        silent! set complete& completeopt=menu infercase noshowfulltag
        "set shortmess+=c
        "suppress intro message 
        set shortmess+=I

        "----------------------------------------------------------------------------------
        "::::::CYAN::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "----------------------------------------------------------------------------------
        "-source ~/git/bTest/kDot/myPlug/logoCyan.vim
        "-source ~/git/bTest/kDot/myPlug/nHydra.vim
        "------------------------------------------------------
        "-source ~/git/bTest/kDot/myPlug/NNV.vim
        "-let g:nnv_search_paths = ['~/git/bTest/']
        "-let g:nnv_search_paths = ['/media/red/124Black/']
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

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
        "map <C-J> <C-W>j<C-W>_
        "map <C-K> <C-W>k<C-W>_
        "map <C-=> <C-W>=
        "------------------------

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
        ":::::::::::::::<LocalLeader>,,::::-LINES1-::::::::::::::::::::::::::::::::::::::::::::::::
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

        "---------------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 
        nmap ,, <Plug>(easymotion-overwin-w)
        nmap ;; <Plug>(easymotion-overwin-w)
        imap ;; <ESC>

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
        "------------------------------------------------------------------
        " augroup ft_fugitive
        "         au!
        "         nnoremap <leader>gd :Gdiff<cr>
        "         nnoremap <leader>gs :Gstatus<cr>
        "         nnoremap <leader>gw :Gwrite<cr>
        "         nnoremap <leader>gl :Glog<cr>
        "         au BufNewFile,BufRead .git/index setlocal nolist
        " augroup END
        "------------------------------------------------------------------


        "==========================================================================================
        "::::::::::::::::::::::::::::::-2MAGIC2-:::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================

        vmap <A-c> :w !cat >> ./zbuf<CR>
        "==========================================================================================
        "==:Ex-TRIGER==MAGIC==Execute VIM colon command under cursor==:ls==========================
        "==========================================================================================
        " nnoremap <C-z> yy:<C-r>"<cr>
        nnoremap ;x yy:<C-r>"<cr>
        "==========================================================================================
        "---PlusMinus------------------------------------------------------------------------------
        "==========================================================================================
        nnoremap ( <c-x>:y x\|@x<cr>
        nnoremap ) <c-a>:y x\|@x<cr>
        "==========================================================================================
        "---FIREFOX----www.ewb.de------------------------------------------------------------------
        
        "==========================================================================================
        nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        nnoremap <localleader>o :Utl<CR>
        nnoremap ;o :Utl<CR>
        "------------------------------------------------------------------------------------------
        "===Control-] pop open a window and show the tag there.====================================
        "------------------------------------------------------------------------------------------
        nnoremap <A-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
        "------------------------------------------------------------------------------------------
        function! s:VSetSearch()
                let temp = @@
                norm! gvy
                let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                let @@ = temp
        endfunction
        vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
        vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>
        "==========================================================================================
        "==========================================================================================
        inoremap <expr><C-g>     deoplete#undo_completion()
        inoremap <expr><C-l>     deoplete#refresh()
        inoremap <expr><C-h>     deoplete#smart_close_popup()."\<C-h>"
        "---TODO------------------------------------------------------------
        imap <C-s>    <Plug>(neosnippet_start_unite_snippet)
        imap <C-b>    <Plug>(neosnippet_expand_or_jump)
        smap <C-b>    <Plug>(neosnippet_expand_or_jump)
        xmap <C-b>    <Plug>(neosnippet_expand_target)
        nnoremap <Leader>y :<C-u>Unite -buffer-name=neosnippet neosnippet<CR>
        "-------------------------------------------------------------------
        " imap <C-k>    <Plug>(neosnippet_expand_or_jump)
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
        ""Python runners
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
        "---------------------------------------------------------------
        nnoremap <Leader>1 :SideSearch <C-r><C-w><CR> | wincmd p
        command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
        "---------------------------------------------------------------
        nnoremap <Leader>2 :PymodeDoc <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>3 :Pydoc <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>4 <Plug>AgRawSearch
        "---------------------------------------------------------------
        nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        "------------------
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
        "------------------
        " :Pydoc foo.bar.baz (e.g. :Pydoc re.compile)
        " Or search a word (uses pydoc -k) in the documentation by typing:
        " :PydocSearch foobar (e.g. :PydocSearch socket)
        "------------------
        nnoremap ff :NV <C-r><C-w><CR> | wincmd p
        nnoremap FF :ZRg <C-r><C-w><CR> | wincmd p
        nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
        nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
        nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        "---------------------------------------------------------------
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        "---------------------------------------------------------------

        "==================================================================================
        "====

                nnoremap <LocalLeader>; :CodeQueryMenu Unite Full<CR>
                " nnoremap <LocalLeader>; :CodeQueryMenu Unite Magic<CR>
                " Or enable typing (to search menu items) by default
                nnoremap <LocalLeader>\ :CodeQueryMenu Unite Magic<CR>A

                " Trigger db building (in current filetype) when your query fails
                let g:codequery_trigger_build_db_when_db_not_found = 1
                " Custom your `CodeQuery Text` commands
                let g:codequery_find_text_cmd = 'Ack!'
                
                let g:codequery_find_text_from_current_file_dir = 0
                " 0 => search from project dir (git root directory -> then the directory containing xxx.db file)
                " 1 => search from the directory containing current file
                
                " If you use ':CodeQuery Symbol' in a txt file, of course, it will fail due to wrong filetype.
                " With the following option set to 1, ':CodeQuery Text' will be automatically sent when your query fails.
                let g:codequery_auto_switch_to_find_text_for_wrong_filetype = 0

        "====
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

        nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>
        "---------------------------------------------------------------
        nnoremap <F6> :FFLines <C-r><C-w><CR> | wincmd p
        nnoremap <F7> :FFBLines <C-r><C-w><CR> | wincmd p


        noremap <F6> :call quickmenu#toggle(0)<cr>
        "==========================================================================================
        nnoremap ,h :CommandTHelp<cr>
        nnoremap ;h :CommandTHelp<cr>
        "==========================================================================================
        "nnoremap <F6> :ScratchPreview<CR>
        "nnoremap <F7> :Scratch<CR>
        "==========================================================================================
        nmap cc  gcl
        "==========================================================================================
        nnoremap <F8> :LocationToggle<cr>
        nnoremap <LocalLeader>n :lnext<cr>zvzz
        nnoremap <LocalLeader>b :lprev<cr>zvzz
        "==========================================================================================
        nnoremap <F9> :call ToggleQuickFix()<CR>
        nnoremap <Leader>b :cprev<cr>zvzz
        nnoremap <Leader>n :cnext<cr>zvzz
        "==========================================================================================
        nmap <F10> <c-w>w
        "==========================================================================================
        nnoremap <F12> :TagbarToggle<CR>
        nnoremap TT :TagbarToggle<CR>

        "==========================================================================================
        " clear all the items
        call g:quickmenu#reset()


        " new section: empty action with text starts with "#" represent a new section
        call quickmenu#append("# Debug", '')

        " script between %{ and } will be evaluated before menu open
        call quickmenu#append("Run %{expand('%:t')}", '!./%', "Run current file")

        " new section
        call quickmenu#append("# Git", '')

        " use fugitive to show diff
        call quickmenu#append("git diff", 'Gvdiff', "use fugitive's Gvdiff on current document")
        call quickmenu#append("git status", 'Gstatus', "use fugitive's Gstatus on current document")

        " new section
        call quickmenu#append("# Misc", '')
        call quickmenu#append("Turn paste %{&paste? 'off':'on'}", "set paste!", "enable/disable paste mode (:set paste!)")
        call quickmenu#append("Turn spell %{&spell? 'off':'on'}", "set spell!", "enable/disable spell check (:set spell!)")
        call quickmenu#append("Function List", "TagbarToggle", "Switch Tagbar on/off")

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
        " :inoremap <C-Y> <C-X><C-Y>

        "======================================================================================================
        "::::::::::::::::::::::::::::::-UNFUC-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======================================================================================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        let g:undoquit_mapping = ';q' 
        nnoremap <Leader>q :Bdelete<CR> 
        "=============================================
        "===Make zO recursively open whatever fold====
        "=============================================
        nnoremap ,z :call FocusLine()<cr>
        nnoremap z0 zczO 

        "------------------------------------------------------------------
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
        "---Open-Quickfix-window-automatically---------------------------------------------
        "==================================================================================
        autocmd QuickFixCmdPost grep cwindow
        autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
        autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p

        "==================================================================================
        " Focus the current line.  Basically:
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

        command! ShowFuncKeys call ShowFuncKeys(<q-bang>)

        "==================================================================================
        command! ShowFunc call ShowFunc()
        command! ShowFuncC call ShowFunc()
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
 

        "======================================================================================================
        "::::::::::::::::::::::::::::::---FZF---:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======================================================================================================
        " In Neovim, you can set up fzf window using a Vim command
        let g:fzf_layout = { 'window': 'enew' }
        let g:fzf_layout = { 'window': '-tabnew' }
        let g:fzf_layout = { 'down': '~20%' }
        let g:fzf_layout = { 'window': '10split enew' }
        "let g:fzf_history_dir = '~/.local/share/fzf-history'
        "==========================================================================================
        let g:fzf_colors =
                                \ { 'fg':      ['fg', 'Comment'],
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
        let g:fzf_command_prefix = 'FF'
        let g:fzf_action = {
                                \ 'ctrl-t': 'tab split',
                                \ 'ctrl-s': 'split',
                                \ 'ctrl-x': ':Lynx',
                                \ 'ctrl-v': 'vsplit' }
        "==========================================================================================
        function! s:fzf_statusline()
                highlight fzf1 ctermfg=11 ctermbg=9
                highlight fzf2 ctermfg=11 ctermbg=9
                highlight fzf3 ctermfg=11 ctermbg=9
                setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
        endfunction
        autocmd! User FzfStatusLine call <SID>fzf_statusline()

        "==========================================================================================
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

       "===NEXT================================================
       "Insert mode completion
       "imap <c-f> <plug>(fzf-complete-path)
       "Replace the default dictionary completion with fzf-based fuzzy completion
        inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')
        imap <c-k> <plug>(fzf-complete-word)
        imap <expr><A-k> fzf#vim#complete#word({'left': '20%'})
        imap <c-j> <plug>(fzf-complete-file-ag)
        imap <c-l> <plug>(fzf-complete-line)

       "===NEXT================================================
        " Global line completion (not just open buffers. ripgrep required.)
        inoremap <expr> <c-q> fzf#vim#complete(fzf#wrap({
                                \ 'prefix': '^.*$',
                                \ 'source': 'rg -n ^ --color always',
                                \ 'options': '--ansi --delimiter : --nth 3..',
                                \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))
       "========================================================

       "============================================================================================
       "=========
       "MAO 
       "nmap <C-p> :FZF<cr>
       "nnoremap <C-p> :<C-u>FZF<CR>
       "mao
       "=========
       "============================================================================================
       "=========

       command! -bang -nargs=* ZFind call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
       command! -bang -nargs=* ZFi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

       "=========
       "============================================================================================
       "=========

       command! -bang -nargs=? -complete=dir ZFiles
                               \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

       command! -bang -nargs=?  ZAg
                               \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

       command! -bang -nargs=* ZRg 
                               \call fzf#vim#grep('rg --column --line-number --no-heading 
                               \--fixed-strings --ignore-case --no-ignore --hidden --follow 
                               \--glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

       command! -bang -nargs=?  ZGit
                               \ call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})

       command! -bang -nargs=?  ZClr
                               \ call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
                               \ 'fnamemodify(v:val, ":t:r")'),
                               \ 'sink': 'colo', 'left': '25%'})


       "=========
       "========================================================================================================
       "=========

       let g:pathToTemplates='~/bakBuk/'

       function! PutSink(file)
               execute ':r '.g:pathToTemplates.a:file
       endfunction

       command! ZPut call fzf#run({
                               \  'source': 'ls '.g:pathToTemplates,
                               \  'sink':    function('PutSink')})

       "=========
       "====================================================================================
       "=========

       command! ZLibList call fzf#run({'source': 'find ~/git/ ~/Documents/ -type f', 'sink':  'edit'})

       "=========
       "========================================================================================================
       "=========

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
       " Any command that lists files can be used as the source
       " call fzf#run(fzf#wrap({'source': 'ls'}))
       " call fzf#run(fzf#wrap({'source': 'git ls-files'}))
       "============================================================================================


       "========================================================
       "===YANK2================================================
       "========================================================
       nmap zp <Plug>yankstack_substitute_older_paste
       nmap zn <Plug>yankstack_substitute_newer_paste

       " map p <Plug>(miniyank-autoput)
       " map P <Plug>(miniyank-autoPut)
       " C-c and C-v - Copy/Paste to global clipboard
       vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]p
       "============================================================================================
       "===???======================================================================================
       " :command! NpmRestart call jobsend(1, "\<C-c>npm run server\<CR>")
       " :command! ApaStart call jobsend(1, "\<C-c>apachectl start\<CR>")
       ":Restart
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

        "--------------------------------------------------------------------------------- 
        " :MMake to perform a :make and to open any resulting quickfix window: 
        " command -nargs=* MMake make <args>|cwindow 3


        "--------------------------------------------------------------------------------- 
        " nmap gz <Plug>ZVOperator
        " vmap <localleader>z <Plug>ZVVisSelection
        nmap ;z <Plug>Zeavim
        nmap <Leader>z <Plug>ZVKeyDocset


"===============================================================================================================
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
        command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                                \ | wincmd p | diffthis
endif

"===============================================================================================================
nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>

"===============================================================================================================
" Search for visually highlighted text
" :vmap ff y/<C-R>"<CR>
"===============================================================================================================

"===============================================================================================================
" Since teaching a lesson on pytest in our 100 Days of Code course I discovered
" coverage and made this alias in my .vimrc to simply check it with one keystroke:
" nmap ,t :w<CR>:!pytest -s --cov-report term-missing --cov='.'<CR>
" # enable venv (TODO: switch to pipenv)
" pip install pytest-cov
"===============================================================================================================
nmap <silent> <Leader>d <Plug>DictSearch
nnoremap <Leader>t :!goldendict <C-r><C-w><CR>

 nmap <Leader>s <Plug>(textobj-diff-hunk-n)

" <Leader>dk <Plug>(textobj-diff-hunk-p)

"===============================================================================================================

" let g:windowswap_map_keys = 0 "prevent default bindings
" nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
" nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
" nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>


"===============================================================================================================
"===VIM-SARTIFY-1===============================================================================================
"===============================================================================================================
" autocmd!  VimEnter * execute ":Startify"
" autocmd!  VimEnter * execute ":SearchIndex"
"===============================================================================================================
let g:startify_custom_header      =
        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

let g:startify_enable_special      = 1
let g:startify_files_number        = 9
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1
let g:startify_update_oldfiles     = 1
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1

highlight StartifyBracket ctermfg=14
highlight StartifyFooter  ctermfg=10
highlight StartifyHeader  ctermfg=14
highlight StartifyNumber  ctermfg=9
highlight StartifyPath    ctermfg=245
highlight StartifySlash   ctermfg=240
highlight StartifySpecial ctermfg=240

"===============================================================================================================
let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'bundle/.*/doc',
        \ '/data/repo/neovim/runtime/doc',
        \ '/Users/mhi/local/vim/share/vim/vim74/doc',
        \ ]

"===============================================================================================================
let g:startify_bookmarks = [
        \ '~/git/bTest/kDot/kIng19.sh',
        \ '~/git/bTest/kDot/k2MinFF.vim',
        \ '~/git/bTest/kDot/k2MinFzfDeoLs.vim',
        \ '~/git/bTest/kDot/kZshrc19.sh',
        \ '~/git/bTest/kDot/kBank21.yml',
        \ ]

"===============================================================================================================
let g:startify_custom_footer =
        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

"===============================================================================================================
let g:startify_list_order = [
                        \ ['   Commands'], 'commands',
                        \ ['   Sessions'], 'sessions',
                        \ ['   MRU Files'], 'files',
                        \ ['   MRU Files in Current Dir'], 'dir',
                        \ ['   Bookmarks'], 'bookmarks',
                        \ ]

"===============================================================================================================
let g:startify_session_dir = '~/git/bTest/kDot/zSS'
let g:startify_session_sort = 1
let g:startify_session_number = 5

"===============================================================================================================
"\ {'m': ['My magical function', 'call Magic()']},
"\ ['Vim Reference', 'h ref'],
"===============================================================================================================
let g:startify_commands = [
                        \ {'a': ['seti', ':colorscheme seti']},
                        \ {'b': ['FZFMru', ':FZFMru']},
                        \ {'i': ['FFMarks', ':FFMarks']},
                        \ {'c': ['FFHistory', ':FFHistory']},
                        \ {'d': ['FFHelptags', ':FFHelptags']},
                        \ {'e': ['ZPlugHelp', ':ZPlugHelp']},
                        \ {'k': ['ZTag', ':ZTag']},
                        \ {'l': ['ZFiles', ':ZFiles']},
                        \ {'n': ['ZLibList', ':ZLibList']},
                        \ {'f': ['LGHistory', ':LGHistory']},
                        \ {'g': ['CommandTHelp', ':CommandTHelp']},
                        \ {'x': ['FZFDefinitions', ':FZFDefinitions']},
                        \ {'p': ['List', ':List']},
                        \ {'r': ['List', ':List']},
                        \ {'u': ['unite', ':Unite help buffer file_mru file file_rec bookmark']},
                        \ ]

"===============================================================================================================
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


"===============================================================================================================
"===============================================================================================================

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> ; :<c-u>WhichKey  ';'<CR>

let g:which_key_hspace =9
let g:which_key_sep = get(g:, 'which_key_sep', '>>')
let g:which_key_hspace = get(g:, 'which_key_hspace', 5)
let g:which_key_vertical = get(g:, 'which_key_vertical', 1)
" let g:which_key_flatten = get(g:, 'which_key_flatten', 0)
"===============================================================================================================

let g:which_key_map = {}

let g:which_key_map.9 = {
\ 'name' : '+buffer' ,
\ '1' : ['b1'        , 'buffer 1']        ,
\ '2' : ['b2'        , 'buffer 2']        ,
\ 'd' : ['bd'        , 'delete-buffer']   ,
\ 'f' : ['bfirst'    , 'first-buffer']    ,
\ 'h' : ['Startify'  , 'home-buffer']     ,
\ 'l' : ['blast'     , 'last-buffer']     ,
\ 'n' : ['bnext'     , 'next-buffer']     ,
\ 'p' : ['bprevious' , 'previous-buffer'] ,
\ '?' : ['Buffers'   , 'fzf-buffer']      ,
\ }

" call which_key#register('<Space>', "g:which_key_map")

let g:which_key_map.8= {
\ 'name' : '+windows' ,
\ 'w' : ['<C-W>w'     , 'other-window']          ,
\ 'd' : ['<C-W>c'     , 'delete-window']         ,
\ '-' : ['<C-W>s'     , 'split-window-below']    ,
\ '|' : ['<C-W>v'     , 'split-window-right']    ,
\ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
\ 'h' : ['<C-W>h'     , 'window-left']           ,
\ 'j' : ['<C-W>j'     , 'window-below']          ,
\ 'l' : ['<C-W>l'     , 'window-right']          ,
\ 'k' : ['<C-W>k'     , 'window-up']             ,
\ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
\ 'J' : ['resize +5'  , 'expand-window-below']   ,
\ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
\ 'K' : ['resize -5'  , 'expand-window-up']      ,
\ '=' : ['<C-W>='     , 'balance-window']        ,
\ 's' : ['<C-W>s'     , 'split-window-below']    ,
\ 'v' : ['<C-W>v'     , 'split-window-below']    ,
\ '?' : ['Windows'    , 'fzf-window']            ,
\ }
"===============================================================================================================

"===============================================================================================================

"===============================================================================================================
"===============================================================================================================
