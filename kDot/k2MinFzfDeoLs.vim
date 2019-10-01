"==================================================================================================
" tmf: $0,0=$1,2 = $1,1 * $1,1 
" File: k2MinFzfDeoLs.vim
"==================================================================================================
"==================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Last Modified:      Mo 30 Sep 2019 04:24:52  CEST
"==================================================================================================

"-AAA3-UnPlug-nPlugStart------------------------------------------------------------------------------------{{{
call plug#begin('~/.config/nvim/plugged/')
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'nixprime/cpsm'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'       

        "--------------------------------------------------------------------------------- 
        "Plug 'vimim/vimim'
        " Plug 'cy2081/vim-cyim'
        " Plug 'vim-scripts/VimIM'

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
        "--------------------------------------------------------------------------
        Plug 'junegunn/gv.vim'
                " o or <cr> on a commit to display the content of it
                " o or <cr> on commits to display the diff in the range
                " O opens a new tab instead
                " gb for :Gbrowse
                " ]] and [[ to move between commits
                " . to start command-line with :Git [CURSOR] SHA à la fugitive
                " q to close
        "-------------------------------------------------------------------------- 
        Plug 'int3/vim-extradite'
                ":Extradite | :Extradite! -- vertical.
                let g:extradite_width = 60
                let g:extradite_showhash = 1 "show abbre commit hashes.
        "-6-}}}

        "---------------------------------------------------------------------------------- 
        Plug 'brooth/far.vim'
        "---------------------------------------------------------------------------------- 
        Plug 'osyo-manga/vim-brightest'
                let g:brightest#highlight = { "group" : "Define" }
                " JAPAN

        Plug 'roxma/python-support.nvim'
                let g:python_support_python2_require = 0
                let g:python_support_python3_require = 0
        "--------------------------------------------------------------------------------- 
        Plug 'gastonsimone/vim-dokumentary/'
                "-=KKK=-
                "??? apt-get install dictd dict-gcide dict
                "let g:dokumentary_docprgs = {'c': 'cdoc {0}', 'python': ''}
                let g:dokumentary_docprgs = {'c': 'cdoc {0}'}
        "--------------------------------------------------------------------------------- 
        "-=TTT=-
        "Plug 'xolox/vim-pyref'
        "let g:pyref_mapping = 'T'
        "let g:pyref_python = '/usr/share/doc/python3/html/'
        "let g:pyref_python = '/usr/share/doc/python/'
        "let g:pyref_python = 'file:///usr/share/doc/python2.7/html/index.html'
        "let g:pyref_python = $HOME . '/docs/python'
        "let g:pyref_python = '/usr/bin/pydoc'
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
                    " let g:indentLine_char = '.'
                    " let g:indentLine_first_char='¦'
        "---------------------------------------------------------------------------------- 
        " Plug 'nathanaelkane/vim-indent-guides'
        "         let g:indent_guides_indent_levels = 30
        "         let g:indent_guides_auto_colors = 1
        "         let g:indent_guides_color_change_percent = 10
        "         let g:indent_guides_start_level = 1
        "         let g:indent_guides_tab_guides = 1
        "         hi IndentGuidesOdd   ctermbg=22
        "         hi IndentGuidesEven  ctermbg=239

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
        Plug 'vim-scripts/FuzzyFinder'
        "---------------------------------------------------------------------------------- 
        Plug 'prabirshrestha/async.vim'
        Plug 'skywind3000/asyncrun.vim'
        Plug 'neomake/neomake'
                " Plug 'benekastah/neomake' " Makers for various file types. TODO: auto install tool (jshint, eslint).

                    " --- jshint config
                    "let g:neomake_javascript_enabled_makers = ['jshint']
                    "let g:neomake_javascript_jshint_maker = {
                        "\ 'args': ['--verbose'],
                        "\ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)'
                        "\ }

                    " --- eslint config
                    let g:neomake_javascript_enabled_makers = ['eslint']

                    " --- tslint config
                    let g:neomake_typescript_enabled_makers = ['tslint']
                    "let g:neomake_typescript_tslint_maker = {
                        "\ 'args': ['--verbose'],
                        "\ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
                        "\ }

                    let g:neomake_error_sign = {
                        \ 'text': '✖',
                        \ 'texthl': 'ErrorMsg',
                        \ }
                    let g:neomake_warning_sign = {
                        \ 'text': '∇',
                        \ 'texthl': 'WarningMsg',
                        \ }

                    autocmd FileType javascript :autocmd BufWritePost <buffer> :silent Neomake


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
        " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

        Plug 'junegunn/fzf', { 'do': './install --all' }
        " Plug 'junegunn/fzf'
        Plug 'junegunn/fzf.vim'
        Plug 'pbogut/fzf-mru.vim'
           let g:fzf_mru_relative = 1
           " FZFMru --prompt "Sup? " -q "notmuch"

        "------------------------------------------------------------------------------------------
        Plug 'cskeeters/unite-fzf'
        "------------------------------------------------------------------------------------------
        Plug 'ddrscott/vim-side-search'
        " How should we execute the search?
        " --heading and --stats are required!
        let g:side_search_prg = 'ag --word-regexp'
                                \. " --ignore='*.js.map'"
                                \. " --heading --stats -B 1 -A 4"
        "---------------------------------------------------------
        " Can use `vnew` or `new`
        let g:side_search_splitter = 'vnew'
        " I like 40% splits, change it if you don't
        let g:side_search_split_pct = 0.4
        "------------------------------------------------------------------------------------------
        "USA FIRST
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
        Plug 'ddrscott/vim-side-search'
        " How should we execute the search?
        " --heading and --stats are required!
        let g:side_search_prg = 'ag --word-regexp'
                                \. " --ignore='*.js.map'"
                                \. " --heading --stats -B 1 -A 4"
                " Can use `vnew` or `new`
                let g:side_search_splitter = 'vnew'
                " I like 40% splits, change it if you don't
                let g:side_search_split_pct = 0.4
        "----------------------------------------------------------------------------------
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
        Plug 'tpope/vim-tbone'
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
        " Plug 'vim-scripts/tagselect'
        Plug 'ludovicchabant/vim-gutentags'
        "Plug 'xolox/vim-easytags'
        Plug 'vim-scripts/genutils'

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
        Plug 'ryanoasis/vim-devicons'
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
        "--------------------------------------------------------------------------------- 
        "------------------------ END --REPL--------------------------------------------- 
        "--------------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 
        " Plug 'vim-scripts/TagHighlight'
        " " TagHighlight highlight names of class, variable, types in code.
        " " Usage: :UpdateTypesFile
        "         if !exists('g:TagHighlightSettings')
        "                 let g:TagHighlightSettings = {}
        "         endif
        "         let g:TagHighlightSettings['TagFileName'] = 'tags'
        "         let g:TagHighlightSettings['CtagsExecutable'] = 'ctags'
        "         let g:TagHighlightSettings['CtagsVariant'] = 'exuberant'
        "         let g:TagHighlightSettings['CtagsArguments'] = []
        "         let g:TagHighlightSettings['CtagsExtraArguments'] = []
        "         let g:TagHighlightSettings['ForcePythonVariant'] = 'if_pyth3'
        "         let g:TagHighlightSettings['PythonVariantPriority'] = [
        "                                 \ "if_pyth3", "if_pyth", "python", "compiled",
        "                                 \ ]
        "--------------------------------------------------------------------------------- 
        " Plug 'dhruvasagar/vim-zoom'
        "         set statusline+=%{zoom#statusline()}
        "---1812--------------------------------------------------------------------------- 
        " Plug 'Shougo/echodoc.vim'
        "         set cmdheight=2
        "         let g:echodoc_enable_at_startup = 1
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
        "---FUZZY-SEARCH------------------------------------------------------------------ 
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
        "??was uber wie??
        Plug 'google/vim-coverage'
        "--------------------------------------------------------------------------------- 
        " Plug 'Konfekt/vim-alias'
        "--------------------------------------------------------------------------------- 
        Plug 'voldikss/vim-translate-me' 
        Plug 'iamcco/dict.vim'
                let g:api_key = "1932136763"
                let g:keyfrom = "aioiyuuko"
        "--------------------------------------------------------------------------------- 
        Plug 'ron89/thesaurus_query.vim'
        " let g:tq_openoffice_en_file="/home/red/git/bTest/kDot/DICT/MyThes/th_en_US_new"
        let g:tq_mthesaur_file="/home/red/git/bTest/kDot/DICT/mthesaurGu.txt"
        "------------------------------
        " let s:thesaurus_pat ="/home/red/git/bTest/kDot/DICT/mthesaurGu.txt"
        " let g:tq_mthesaur_file="/home/red/git/bTest/kDot/DICT/mthesaurGu.txt"
        " let g:tq_cilin_txt_file="~/.config/nvim/thesaurus/cilin.txt"
        "------------------------------
        " let g:tq_enabled_backends=["woxikon_de","jeck_ru","openoffice_en","mthesaur_txt"]
        " let g:tq_enabled_backends=["yarn_synsets", "openoffice_en", "mthesaur_txt"]
        " let g:tq_enabled_backends=["cilin_txt",
        "         \"openthesaurus_de",
        "         \"yarn_synsets",
        "         \"openoffice_en",
        "         \"mthesaur_txt",
        "         \"datamuse_com",]
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
        ":Acks- Plug 'wincent/ferret'
        " Plug 'lyuts/vim-rtags'
        " Plug 'vim-scripts/Conque-Shell'
        " Plug 'vim-scripts/spreadsheet.vim'
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
        " Plug 'vim-scripts/CRefVim'
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
        "???err??? Plug 'mhartington/nvim-typescript'
        " Plug 'mhartington/nvim-typescript'
        " autocmd BufWrite *.ts,*.tsx TSGetDiagnostics

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
        Plug 'cwfoo/vim-text-omnicomplete'
        Plug 'lilydjwg/colorizer'
        " g:colorizer_maxlines=1000
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        Plug 'tpope/vim-dadbod'
        " Plug 'vpenkoff/vim-pg'  "postgres"
        " Plug 'vim-scripts/dbext.vim'
        " :'<,'>DBExecSQL    (or used the default map <Leader>se)
        "----!!!---LGHistory--------------------------------------
        Plug 'm42e/vim-lgh'
        "----Nice---Tabs------
        " Plug 'ap/vim-buftabline'
        Plug 'xolox/vim-notes'
        "------------------TODO------------------------------------------------------------ 
        " Plug 'rakr/vim-one'
        " Plug 'chriskempson/base16-vim'
        " Plug 'KeitaNakamura/neodark.vim'
        " Plug 'joshdick/onedark.vim'
        Plug 'trusktr/seti.vim'
        " Plug 'ayu-theme/ayu-vim' " or other package manager
        " colorscheme ayu
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme
        " let ayucolor="dark"   " for dark version of theme
        "------------------TODO------------------------------------------------------------ 
        " Plug 'sheerun/vim-polyglot'

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

        " reference utl_rc.vim
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
        "Plug 'amiorin/vim-project'
        "Plug 'tpope/vim-projectionist'
        "Plug 'tpope/vim-rake'
        Plug 'vim-ruby/vim-ruby'
        "Plug 'tpope/vim-rails'

        "-------------------$mkid---idtools------------------------------------------------ 
        " Plug 'fcamel/gj'
        " Plug 'yegappan/lid'
        "---------------------------------------------------------------------------------- 
        "--------------------------TRASH--------------------------------------------------- 
        " Plug 'WolfgangMehner/bash-support'
        " Plug 'tpope/vim-rsi'
        "---------------------------------------------------------------------------------- 
        "Plug 'markonm/traces.vim'
        "---------------------------------------------------------------------------------- 
        " Plug 'StanAngeloff/php.vim'
        " Plug 'squizlabs/PHP_CodeSniffer'
        " Plug 'LucHermitte/lh-cpp'
        "--------------------------------------------------------------------------------- 
        " Plug 'vim-scripts/foo.vim'
        "?pum? Plug 'tpope/vim-endwise'
        "--------------------------------------------------------------------------------- 

        "--------------------------------------------------------------------------------- 
        "--------------------------------------------------------------------------------- 
        " smart <c-a> and <c-x> to toggle true/false, on/off, increment dates or weekday names, etc.
        Plug 'nishigori/increment-activator'
        "------------------------------------------------------------------------------------------
        "-------420--------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        Plug 'tacahiroy/ctrlp-funky'
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
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
        " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
        "------------------------------------------------------------------------------------------
        Plug 'liuchengxu/vista.vim'
        let g:vista_fzf_preview = ['right:50%']

        "------------------------------------------------
        let g:vista#renderer#icons = {
                                \   "function": "\uf794",
                                \   "variable": "\uf71b",
                                \  }
        "------------------------------------------------------------------------------------------
        Plug 'prabirshrestha/vim-lsp'
        "------------------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        Plug 'w0rp/ale'
                "Linting
                let g:ale_sign_column_always = 1
                let g:ale_sign_error = '>>'
                let g:ale_sign_warning = '--'
                let g:ale_linters = {
                                        \   'javascript': ['eslint'],
                                        \   'jsx': ['eslint'],
                                        \   'python': ['flake8'],
                                        \}

        "------------------------------------------------------------------------------------------
        " Plug 'jacobsimpson/nvim-example-python-plugin'
        "------------------------------------------------------------------------------------------
        Plug 'vigoux/LanguageTool.nvim'
        let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'

        hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none

        Plug 'elzr/vim-json' " For metadata.json
        Plug 'mrk21/yaml-vim' " For hieradata
call plug#end()
"---nPlugEnd-nPlugStop3----------------}}}
" HappyEnd


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
        " loading the plugin
        let g:webdevicons_enable = 1
        " adding the flags to NERDTree
        let g:webdevicons_enable_nerdtree = 1
        " adding the custom source to unite
        let g:webdevicons_enable_unite = 1
        " adding the column to vimfiler
        let g:webdevicons_enable_vimfiler = 1
        " adding to vim-airline's tabline
        let g:webdevicons_enable_airline_tabline = 1
        " adding to vim-airline's statusline
        let g:webdevicons_enable_airline_statusline = 1
        " ctrlp glyphs
        let g:webdevicons_enable_ctrlp = 1
        " adding to vim-startify screen
        let g:webdevicons_enable_startify = 1
        " adding to flagship's statusline
        let g:webdevicons_enable_flagship_statusline = 1
        " turn on/off file node glyph decorations (not particularly useful)
        let g:WebDevIconsUnicodeDecorateFileNodes = 1
        " use double-width(1) or single-width(0) glyphs
        " only manipulates padding, has no effect on terminal or set(guifont) font
        let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
        " whether or not to show the nerdtree brackets around flags
        let g:webdevicons_conceal_nerdtree_brackets = 1
        " the amount of space to use after the glyph character (default ' ')
        let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
        " Force extra padding in NERDTree so that the filetype icons line up vertically
        let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
        " Adding the custom source to denite
        let g:webdevicons_enable_denite = 1
        " change the default character when no match found
        let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
        " set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
        " disabled by default with no value
        let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
        " enable folder/directory glyph flag (disabled by default with 0)
        let g:WebDevIconsUnicodeDecorateFolderNodes = 1
        " enable open and close folder/directory glyph flags (disabled by default with 0)
        let g:DevIconsEnableFoldersOpenClose = 1
        " enable pattern matching glyphs on folder/directory (enabled by default with 1)
        let g:DevIconsEnableFolderPatternMatching = 1
        " enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
        let g:DevIconsEnableFolderExtensionPatternMatching = 0
        " enable custom folder/directory glyph exact matching
        " (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
        let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
        " change the default folder/directory glyph/icon
        let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'
        " change the default open folder/directory glyph/icon (default is '')
        let g:DevIconsDefaultFolderOpenSymbol = 'ƛ'
        " change the default dictionary mappings for file extension matches
        let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
        let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
        " change the default dictionary mappings for exact file node matches
        let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
        let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
        " add or override pattern matches for filetypes
        " these take precedence over the file extensions
        let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
        let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'
        " add or override individual additional filetypes
        let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
        let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'

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
        let g:LanguageClient_serverCommands = {
                                \ 'python': ['/usr/local/bin/pyls'],
                                \ }

        "-------------------------------------------------------------------------------- 
        let g:deoplete#sources#jedi#statement_length = 30
        let g:deoplete#sources#jedi#show_docstring = 1
        let g:deoplete#sources#jedi#short_types = 1
        "-------------------------------------------------------------------------------- 
        " Plugin key-mappings.
        " inoremap <expr><C-g>     deoplete#undo_completion()
        " inoremap <expr><C-l>     deoplete#refresh()
        " inoremap <expr><C-h>     deoplete#smart_close_popup()."\<C-h>"
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
