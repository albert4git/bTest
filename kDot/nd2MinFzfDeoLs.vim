let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
"let g:deoplete#sources#jedi#extra_path = $PYTHONPATH

"-AAA3-UnPlug-nPlugStart------------------------------------------------------------------------------------{{{
call plug#begin('~/.config/nvim/plugged/')
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'nixprime/cpsm'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'       

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
                highlight GitGutterAdd ctermfg=green
                highlight GitGutterChange ctermfg=yellow
                highlight GitGutterDelete ctermfg=red
                highlight GitGutterChangeDelete ctermfg=yellow
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

        "------TESTING------------------------------------------------------------------ 
        " Plug 'vim-scripts/CRefVim'
        " Plug 'vim-scripts/FuzzyFinder'
        " Plug 'alvan/vim-closetag'
        " Plug 'WolfgangMehner/bash-support'
        "---------------------------------------------------------------------------------- 
        Plug 'brooth/far.vim'
        "---------------------------------------------------------------------------------- 
        Plug 'osyo-manga/vim-brightest'
                let g:brightest#highlight = { "group" : "Define" }
                " JAPAN
        "---------------------------------------------------------------------------------- 
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
        "---------------------------------------------------------------------------------- 
        Plug 'Shougo/echodoc.vim'
                set cmdheight=2
                let g:echodoc_enable_at_startup = 1
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
        Plug 'xolox/vim-pyref'
                let g:pyref_mapping = 'T'
                let g:pyref_python = '/usr/share/doc/python3/html/'
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
                " " Pydoc files are open with 10 lines height, if you want to change this value
                " " put this in your .vimrc:
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
                let g:airline#extensions#tabline#enabled = 2
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
        " Plug 'flazz/vim-colorschemes'
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
                "let g:indentLine_setConceal = 0
                "let g:indentLine_bgcolor_term = 202
                    let g:indentLine_faster = 1
                    let g:indentLine_char = '.'
                    let g:indentLine_char = '|'
                    let g:indentLine_first_char='.'
                    let g:indentLine_first_char='|'
                    let g:indentLine_showFirstIndentLevel=1
                    let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']
        "---------------------------------------------------------------------------------- 
                    " let g:indentLine_faster = 1
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
        "---------------------------------------------------------------------------------- 
        Plug 'autozimu/LanguageClient-neovim', {
                                \ 'branch': 'next',
                                \ 'do': 'bash install.sh',
                                \ }
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
        " Plug 'junegunn/fzf.vim'

        Plug 'junegunn/fzf'
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
        "===PLAY2==BLiZZ==(C-s)+(C-b)==============================================================
        Plug 'garbas/vim-snipmate'
        Plug 'honza/vim-snippets'
        Plug 'SirVer/ultisnips'
        Plug 'Shougo/neosnippet.vim'
        Plug 'Shougo/neosnippet-snippets'
        "------------------------------------------------------------------------------------------ 
        " :Tmux
        Plug 'tpope/vim-tbone'
        Plug 'tmux-plugins/vim-tmux'
        "------------------------------------------------------------------------------------------ 
        Plug 'xolox/vim-misc'
        "-------------------------------------------------------------------------- 
        Plug 'tpope/vim-fugitive'
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
        Plug 'vim-scripts/tagselect'
        Plug 'ludovicchabant/vim-gutentags'
        Plug 'vim-scripts/genutils'
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
                        autocmd FileType html,css,json AutoFormatBuffer js-beautify
                        autocmd FileType java AutoFormatBuffer google-java-format
                        autocmd FileType python AutoFormatBuffer yapf
                        " Alternative: autocmd FileType python AutoFormatBuffer autopep8
                augroup END
        "---------------------------------------------------------------------------------- 
        Plug 'godlygeek/tabular'
                " Tabularize {
                nmap <Leader>a& :Tabularize /&<CR>
                vmap <Leader>a& :Tabularize /&<CR>
                nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
                vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
                nmap <Leader>a=> :Tabularize /=><CR>
                vmap <Leader>a=> :Tabularize /=><CR>
                nmap <Leader>a: :Tabularize /:<CR>
                vmap <Leader>a: :Tabularize /:<CR>
                nmap <Leader>a:: :Tabularize /:\zs<CR>
                vmap <Leader>a:: :Tabularize /:\zs<CR>
                nmap <Leader>a, :Tabularize /,<CR>
                vmap <Leader>a, :Tabularize /,<CR>
                nmap <Leader>a,, :Tabularize /,\zs<CR>
                vmap <Leader>a,, :Tabularize /,\zs<CR>
                nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
                vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
                " }
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
        "==================================================================================

        Plug 'runfalk/vim-fzf-extended'
        "Plug 'ryanoasis/vim-devicons'
        Plug 'mhinz/vim-startify'
        Plug 'tiagoinacio/fzf-bookmark.vim'
        Plug 'blueyed/vim-diminactive'
        " Plug ''

call plug#end()
"---nPlugEnd-nPlugStop3----------------}}}


        "===VIM-SARTIFY-1==================================================================
        let g:startify_enable_special      = 0
        let g:startify_files_number        = 8
        let g:startify_relative_path       = 1
        let g:startify_change_to_dir       = 1
        let g:startify_update_oldfiles     = 1
        let g:startify_session_autoload    = 1
        let g:startify_session_persistence = 1

        let g:startify_skiplist = [
                \ 'COMMIT_EDITMSG',
                \ 'bundle/.*/doc',
                \ '/data/repo/neovim/runtime/doc',
                \ '/Users/mhi/local/vim/share/vim/vim74/doc',
                \ ]

        let g:startify_bookmarks = ['~/.vimrc','~/.zshrc','~/nfo/commands.txt',]
        let g:startify_bookmarks = [
                \ 
                \ '~/git/bTest/kDot/kIng19.sh',
                \ '~/git/bTest/kDot/k2MinFF.vim',
                \ '~/git/bTest/kDot/k2MinFzfDeoLs.vim',
                \ '~/git/bTest/kDot/kZshrc19.sh',
                \ '~/git/bTest/kDot/kBank21.yml',
                \ ]

        let g:startify_custom_footer =
               \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

        "===VIM-SARTIFY-1==================================================================



        function! s:list_commits()
                let git = 'git -C ~/git/bTest/'
                let commits = systemlist(git .' log --oneline | head -n10')
                let git = 'G'. git[1:]
                return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
        endfunction


        let g:startify_commands = [
                                \ ':help reference',
                                \ ['Vim Reference', 'h ref'],
                                \ {'h': 'h ref'},
                                \ {'m': ['My magical function', 'call Magic()']},
                                \ ]


        " \ ['   Commands'], 'commands',
        "====== \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' }, ==============================

        let g:startify_lists = [
                                \ { 'header': ['   Sessions'],       'type': 'sessions' },
                                \ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
                                \ { 'header': ['   MRU'],            'type': 'files' },
                                \ { 'header': ['   Commits'],        'type': function('s:list_commits') },
                                \ ]

        let g:startify_session_dir = '~/git/bTest/kDot/zSS'
        let g:startify_session_sort = 1
        let g:startify_session_number = 5
        " let g:startify_session_before_save = [
        "                         \ 'echo "Cleaning up before saving.."',
        "                         \ 'call NERDTreeCloseAll()',
        "                         \ ]


        let g:startify_commands = [
                                \ ':help reference',
                                \ ['Vim Reference', 'h ref'],
                                \ {'h': 'h ref'},
                                \ {'m': ['My magical function', 'call Magic()']},
                                \ ]


        highlight StartifyBracket ctermfg=14
        highlight StartifyFooter  ctermfg=10
        highlight StartifyHeader  ctermfg=14
        highlight StartifyNumber  ctermfg=9
        highlight StartifyPath    ctermfg=245
        highlight StartifySlash   ctermfg=240
        highlight StartifySpecial ctermfg=240

        autocmd!  VimEnter * execute ":Startify"

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
        let g:jedi#completions_command = "<C-z>"
        "let g:jedi#completions_command = "<C-Space>"
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
        call deoplete#custom#source('LanguageClient','mark', 'ℰ')
        call deoplete#custom#source('omni',          'mark', '⌾')
        call deoplete#custom#source('flow',          'mark', '⌁')
        call deoplete#custom#source('TernJS',        'mark', '⌁')
        call deoplete#custom#source('go',            'mark', '⌁')
        call deoplete#custom#source('jedi',          'mark', '⌁')
        call deoplete#custom#source('vim',           'mark', '⌁')
        call deoplete#custom#source('neosnippet',    'mark', '⌘')
        call deoplete#custom#source('around',        'mark', '↻')
        call deoplete#custom#source('buffer',        'mark', 'ℬ')
        call deoplete#custom#source('tmux-complete', 'mark', '⊶')
        call deoplete#custom#source('syntax',        'mark', '♯')
        call deoplete#custom#source('member',        'mark', '.')


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
        command! ShowFunc call ShowFunc()
