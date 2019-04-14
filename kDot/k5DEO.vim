"file:///home/red/Documents/GiT/My%20favorite%20command-line%20utilities%20%E2%80%93%20Hacker%20Noon.html
"===============================================================================================================
" Created:            Di 09 Apr 2019 12:46:32  CEST
" Last Modified:      So 14 Apr 2019 01:17:59  CEST
"===============================================================================================================
"xdg-open
"------------------------------------------------------------------------------------------
"==========================================================================================
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
"let g:deoplete#sources#jedi#extra_path = $PYTHONPATH
"==========================================================================================

"-AAA---UnPlug---nPlugStart---------------------------------------------------------------------------------{{{
call plug#begin('~/.config/nvim/plugged/')

        "=================================================================================
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'nixprime/cpsm'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'       
        Plug 'vifm/neovim-vifm'
                ":let $MYVIFMRC=/path/to/custom/vifmrc
                let $MYVIFMRC='~/.config/vifm/vifmrc'
                let g:vifmSplitWidth = 88
        Plug 'vim-scripts/timestamp.vim'
        "=================================================================================
        " Plug 'deoplete-plugins/deoplete-zsh'
        " Plug 'vim-scripts/ri-browser'
        " Plug 'dhruvasagar/vim-open-url'
        "---------------------------------------------------------------------------------- 
        "Plug 'tobyS/pdv'  -- php documenter
        "Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
        "---------------------------------------------------------------------------------- 

"===DDDStart===DEOPLETE============================================================================
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        "=================================================================================
        Plug 'Shougo/neco-syntax'
        Plug 'Shougo/neco-vim'
        if !exists('g:necovim#complete_functions')
                let g:necovim#complete_functions = {}
        endif
        let g:necovim#complete_functions.Ref =
                                \ 'ref#complete'
        "=================================================================================
        Plug 'davidhalter/jedi-vim'
        Plug 'zchee/deoplete-jedi'
        "=================================================================================
        Plug 'zchee/deoplete-clang'
        "=================================================================================
        function! DoRemote(arg)
                UpdateRemotePlugins
        endfunction
        "=================================================================================
         Plug 'c9s/perlomni.vim'
        " cal AddPerlOmniRule({ 'only':1, 'head': '^has\s\+\w\+' , 
        "                         \'context': '\s\+is\s*=>\s*$'  , 
        "                         \'backward': '[''"]\?\w*$' , 
        "                         \'comp': function('s:CompMooseIs') } )
        " cal AddPerlOmniRule({
        "                         \'only':1, 
        "                         \'context': '&$', 
        "                         \'backward': '\<\U\w\+$', 
        "                         \'comp': function('s:CompBufferFunction') })
        "=================================================================================
        Plug 'wokalski/autocomplete-flow'
                let g:autocomplete_flow#insert_paren_after_function = 0
        "=================================================================================
        " Plug 'thalesmello/webcomplete.vim'
        " " Use <C-X><C-U> in insert mode to get completions
        " set completefunc=webcomplete#complete
        " " Use <C-X><C-O> in insert mode to get completions
        " set omnifunc=webcomplete#complete
        "=================================================================================
        Plug 'eagletmt/neco-ghc'
                let g:haskellmode_completion_ghc = 1
                autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
        "=================================================================================
        Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
                "If you would prefer adding a period then set:
                let g:deoplete#sources#go#package_dot = 1
                let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
        "=================================================================================
        Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
        Plug 'mkusher/padawan.vim'
                let $PATH=$PATH . ':' . expand('~/.config/composer/vendor/bin/')
                let g:padawan#composer_command = "/usr/bin/composer"
        "=================================================================================
        " Plug 'vhakulinen/neovim-intellij-complete-deoplete'
        "=================================================================================
        Plug 'artur-shaik/vim-javacomplete2'
                nnoremap <leader>cj :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
                autocmd filetype java nnoremap <F4> :w <bar> !javac % && java -enableassertions %:p <CR>
                " imap <F3> <Plug>(JavaComplete-Imports-RemoveUnused)
                " nmap <F4> <Plug>(JavaComplete-Imports-Add)
                " nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)
                " nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
                " :setlocal omnifunc=javacomplete#Complete
                " :setlocal completefunc=javacomplete#CompleteParamsInfo
                " autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
        "=================================================================================
        Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
        Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
        "=================================================================================
        Plug 'fishbullet/deoplete-ruby'
        Plug 'takkii/ruby-dictionary3'
        "=================================================================================
        "Err??? Plug 'skwp/vim-ruby-conque'
        "=================================================================================
        Plug 'autozimu/LanguageClient-neovim', {
                                \ 'branch': 'next',
                                \ 'do': 'bash install.sh',
                                \ }
"===DDDStop===DEOPLETE=============================================================================

        "---------------------------------------------------------------------------------- 
        "NO Plug 'vim-scripts/javaDoc.vim'
        "---------------------------------------------------------------------------------- 
        "Plug 'cskeeters/javadoc.vim'
        "        "let g:javadoc_path = "/usr/bin/javadoc:/home/user/javadoc"
        "        let g:javadoc_path = "/usr/bin/javadoc"
        "        let g:javadoc_browser = "/usr/bin/firefox"
        "---------------------------------------------------------------------------------- 
        " Plug 'lucapette/vim-ruby-doc'
        "         let g:ruby_doc_command='open'
        "         let g:ruby_doc_ruby_mapping='KK'
        "         let g:ruby_doc_ruby_host='https://apidock/ruby'
        "---------------------------------------------------------------------------------- 
        Plug 'gauteh/vim-cppman'
                " 1.) Install [cppman](https://github.com/aitjcize/cppman)
                " 2.) Install this plugin using your favourite plugin manager.
"===BOOKMARK=======================================================================================
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

        "---AAA6---GitGutter---Fugitive---Magit---GV------------------------------------{{{
                Plug 'airblade/vim-gitgutter'
                        let g:gitgutter_signs = 1
                        let g:gitgutter_max_signs = 4000
                "---------------------------------------------------------------------------
                        highlight GitGutterAdd ctermfg=green
                        highlight GitGutterChange ctermfg=yellow
                        highlight GitGutterDelete ctermfg=red
                        highlight GitGutterChangeDelete ctermfg=yellow
                "---------------------------------------------------------------------------
                        if exists("*gitgutter#highlight#define_highlights")
                                " let vim-gitgutter know we changed the SignColumn colors!
                                call gitgutter#highlight#define_highlights()
                        endif
                "--------------------------------------------------------------------------- 
                Plug 'aghareza/vim-gitgrep'
                "===========================================================================
                "Plug 'lambdalisue/gina.vim'
                "===========================================================================
                Plug 'jreybert/vimagit'
                "===========================================================================
                Plug 'tpope/vim-fugitive'
                "==========================================================================
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
                "===========================================================================
                Plug 'junegunn/gv.vim'
                "   - o or <cr> on a commit to display the content of it
                "   - o or <cr> on commits to display the diff in the range
                "   - O opens a new tab instead
                "   - gb for :Gbrowse
                "   - ]] and [[ to move between commits
                "   - . to start command-line with :Git [CURSOR] SHA à la fugitive
                "   - q to close
        "---6Git---}}}

        "---------------------------------------------------------------------------------- 
        Plug 'vim-scripts/FuzzyFinder'
        "---------------------------------------------------------------------------------- 

        "--------------------------------------------------------------------------------- 
        Plug 'pboettch/vim-cmake-syntax'        " CMake
        Plug 'octol/vim-cpp-enhanced-highlight' " C++
        Plug 'vim-scripts/CRefVim'
        "--------------------------------------------------------------------------------- 
        Plug 'alvan/vim-closetag'
        "--------------------------------------------------------------------------------- 
        Plug 'vim-scripts/spell.vim'
        "--------------------------------------------------------------------------------- 
        Plug 'dhruvasagar/vim-zoom'
        Plug 'KnoP-01/tortus'
        Plug 'skywind3000/asyncrun.vim'
        "--------------------------------------------------------------------------------- 
        Plug 'brooth/far.vim'
        "---???--------------------------------------------------------------------------- 
        Plug 'osyo-manga/vim-brightest'
                let g:brightest#highlight = { "group" : "Define" }
"===TagHighlight=================================================================================== 
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
        "--------------------------------------------------------------------------------- 
        Plug 'Shougo/echodoc.vim'
                set cmdheight=2
                let g:echodoc_enable_at_startup = 1
        Plug 'roxma/python-support.nvim'
                let g:python_support_python2_require = 0
                let g:python_support_python3_require = 0
"===KKKDoc========================================================================================= 
        Plug 'gastonsimone/vim-dokumentary/'
                "---DICTD---------------
                " ??? apt-get install dictd dict-gcide dict
                " let g:dokumentary_docprgs = {'c': 'cdoc {0}', 'python': ''}
                let g:dokumentary_docprgs = {'c': 'cdoc {0}'}
        "---TTT--------------------------------------------------------------------------------- 
        " Plug 'xolox/vim-pyref'
                "let g:pyref_mapping = 'T'
                "let g:pyref_python = '/usr/share/doc/python3/html/'
                "------------------------------------------------------------ 
                "let g:pyref_python = '/usr/share/doc/python/'
                "let g:pyref_python = 'file:///usr/share/doc/python2.7/html/index.html'
                "let g:pyref_python = $HOME . '/docs/python'
                "let g:pyref_python = '/usr/bin/pydoc'
        "------KKKPydoc------------------------------------------------------------------- 
        Plug 'fs111/pydoc.vim', {'external_commands': ['pydoc']}
                let g:ref_pydoc_cmd = 'pydoc'
                let g:ref_pydoc_complete_head = 1
                let g:pydoc_cmd = 'python -m pydoc'
                let g:pydoc_open_cmd = 'vsplit'
                let g:pydoc_highlight=1
                " " Pydoc files are open with 10 lines height, if you want to change this value
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
        Plug 'flazz/vim-colorschemes'
        Plug 'rafi/awesome-vim-colorschemes'
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
                let g:indentLine_first_char='¦'
                let g:indentLine_showFirstIndentLevel=1
                let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']
        "------------------------------------------------------------------------------------------ 
        "------------------------------------------------------------------------------------------ 
        Plug 'vim-scripts/Lynx-Offline-Documentation-Browser'
        "------------------------------------------------------------------------------------------ 
        Plug 'jesseleite/vim-agriculture'
        Plug 'mileszs/ack.vim'
        Plug 'jremmen/vim-ripgrep'
        "------------------------------------------------------------------------------------------
        Plug 'Chun-Yang/vim-action-ag'
        Plug 'rking/ag.vim'
"===PlugFZF=========================================================================================
        Plug 'junegunn/fzf'
        Plug 'junegunn/fzf.vim'
        Plug 'pbogut/fzf-mru.vim'
        Plug 'cskeeters/unite-fzf'
        " nmap <Leader>f :GFiles<CR>
        " nmap <Leader>F :Files<CR>
        " nmap <Leader>t :BTags<CR>
        " nmap <Leader>T :Tags<CR>
        " nmap <Leader>m :Methods<CR>
        " nmap <Leader>b :Buffers<CR>
        " nmap <Leader>l :BLines<CR>
        " nmap <Leader>L :Lines<CR>
        " nmap <Leader>h :History<CR>
        " nmap <Leader>H :GHistory<CR>
        " nmap <Leader>: :History:<CR>
        " nmap <Leader>M :Maps<CR>
        " nmap <Leader>C :Commands<CR>
        " nmap <Leader>' :Marks<CR>
        " nmap <Leader>s :Filetypes<CR>
        " nmap <Leader>S :Snippets<CR>
        " nmap <Leader><Leader>h :Helptags!<CR>

"===:SideSearch====================================================================================
        Plug 'ddrscott/vim-side-search'
        " --heading and --stats are required!
        let g:side_search_prg = 'ag --word-regexp'
                                \. " --ignore='*.js.map'"
                                \. " --heading --stats -B 1 -A 4"
"===:NV=notational=FZF=============================================================================
        Plug 'alok/notational-fzf-vim'
                let g:nv_search_paths = ['~/' ]
                let g:nv_search_paths = ['/media/red/A5A1-FBC4/' ]
                let g:nv_search_paths = ['/media/red/' ]
                let g:nv_search_paths = ['/media/red/F1E8-C819/hTML-Zp-Link/' ]
                let g:nv_search_paths = ['~/git/', '~/git/aTest/pyLabGitPdbPythonMode27' ]
                "let g:nv_search_paths = ['~/git/aTest/dotFiles/', '~/git/aTest/pyLabGitPdbPythonMode27' ]
        "----------------------------------------------------------------------
        Plug 'Shougo/neomru.vim'
        "--------------------------------------
        "Plug 'kien/ctrlp.vim'
        Plug 'wincent/command-t'
        "--------------------------------------
        Plug 'Shougo/unite.vim' 
        Plug 'tsukkee/unite-tag'
        Plug 'SpaceVim/unite-ctags'
        Plug 'Shougo/unite-outline/'
        Plug 'tsukkee/unite-help'
        Plug 'rstacruz/vim-fastunite'
        Plug 'kmnk/vim-unite-giti'
"===:UNITE=========================================================================================
                let g:unite_source_history_yank_save_clipboard = 1
                let g:unite_source_mark_marks = "abcdefghijklmnopqrstuvwxyz"
                        \ . "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.'`^<>[]{}()\""
        "------------------------------------------------------------------------------------------------------
                " let g:unite_no_default_keymappings = 1 " don't map default key mappings
                let g:unite_candidate_icon = '∘'
                let g:unite_source_history_yank_enable = 1
                let g:unite_enable_start_insert = 0
                let g:unite_enable_short_source_mes = 0
                let g:unite_force_overwrite_statusline = 1
                let g:unite_prompt = '::: '
                let g:unite_marked_icon = '✓'
                let g:unite_winheight = 15
                let g:unite_winwidth = 50
                let g:unite_update_time = 200
                let g:unite_split_rule = 'botright'
                let g:unite_split_rule = "topleft"
                let g:unite_data_directory ='~/.config/nvim/tmp/unite'
                let g:unite_source_buffer_time_format = '(%d-%m-%Y %H:%M:%S) '
                let g:unite_source_file_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
                let g:unite_source_directory_mru_time_format = '(%d-%m-%Y %H:%M:%S) '

        "======================================================================================================
        Plug 'ddrscott/vim-side-search'
        "--heading and --stats are required!
        let g:side_search_prg = 'ag --word-regexp'
                                \. " --ignore='*.js.map'"
                                \. " --heading --stats -B 1 -A 4"
                " Can use `vnew` or `new`
                let g:side_search_splitter = 'vnew'
                " I like 40% splits, change it if you don't
                let g:side_search_split_pct = 0.4
                " Create an shorter `SS` command
                cabbrev SS SideSearch
                command! -complete=file -nargs=+ SS execute 'SideSearch <args>'
        "----------------------------------------------------------------------------------
        Plug 'exvim/ex-matchit'
        "----------------------------------------------------------------------------------
        Plug 'ervandew/supertab'

                let g:SuperTabDefaultCompletionType = "<c-n>"
                let g:SuperTabLongestHighlight = 1
                let g:SuperTabCrMapping = 1
        "---------------------------------------------------------------------------------- 
        Plug 'MarcWeber/vim-addon-mw-utils'
        Plug 'garbas/vim-snipmate'
        Plug 'honza/vim-snippets'
        Plug 'SirVer/ultisnips'
"===Ulti===Expander===Unite===(C=q)===============================================================
        Plug 'Shougo/neosnippet.vim'
        Plug 'Shougo/neosnippet-snippets'
"===NEOSNIPP===(C-s)+(C-k)========================================================================
                " Enable snipMate compatibility feature.
                let g:neosnippet#enable_snipmate_compatibility = 1
                " Tell Neosnippet about the other snippets
                let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'
        "------------------------------------------------------------------------------------------ 
        Plug 'tpope/vim-tbone'
        Plug 'tmux-plugins/vim-tmux'
        "------------------------------------------------------------------------------------------ 
        Plug 'xolox/vim-misc'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        "------------------------------------------------------------------------------------------ 
        Plug 'ivyl/vim-bling'
                let g:bling_time = 42
                let g:bling_color_fg = 'green'
                let g:bling_color_cterm = 'reverse'
        "------------------------------------------------------------------------------------------ 
        Plug 'tpope/vim-unimpaired'
"===EUNUCH=========================================================================================
        Plug 'tpope/vim-eunuch'
        " :Delete: Delete a buffer and the file on disk simultaneously.
        " :Unlink: Like :Delete, but keeps the now empty buffer.
        " :Move: Rename a buffer and the file on disk simultaneously.
        " :Rename: Like :Move, but relative to the current file's containing directory.
        " :Chmod: Change the permissions of the current file.
        " :Mkdir: Create a directory, defaulting to the parent of the current file.
        " :Cfind: Run find and load the results into the quickfix list.
        " :Clocate: Run locate and load the results into the quickfix list.
        " :Lfind/:Llocate: Like above, but use the location list.
        " :Wall: Write every open window. Handy for kicking off tools like guard.
        " :SudoWrite: Write a privileged file with sudo.
        " :SudoEdit: Edit a privileged file with sudo.
        "------------------------------------------------------------------------------------------
        Plug 'majutsushi/tagbar'
                highlight TagbarHighlight   ctermfg=051 ctermbg=9 cterm=bold
                highlight TagListTagName    ctermfg=250
                highlight TagbarFoldIcon    ctermfg=051 ctermbg=9 
                highlight TagbarHelp        ctermfg=051 ctermbg=9
        "------------------------------------------------------------------------------------------
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
        "Plug 'guns/xterm-color-table.vim'
        "Plug 'gko/vim-coloresque'
        "----------------------------------------------------------------------------------
        Plug 'haya14busa/incsearch.vim'
        Plug 'vim-scripts/SearchComplete'

        "----------------------------------------------------------------------------------
         Plug 'scrooloose/nerdtree'
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
                 let g:NERDCommentEmptyLines = 1
                 let g:NERDTrimTrailingWhitespace = 1

        Plug 'mtth/scratch.vim'
        Plug 'francoiscabrol/ranger.vim'
        "        let g:NERDTreeHijackNetrw = 0 
        "        let g:ranger_replace_netrw = 1 
        "        let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'
        "----------------------------------------------------------------------------------
         Plug 'henrik/vim-qargs'
        "----------------------------------------------------------------------------------
         Plug 'AndrewRadev/undoquit.vim'
        "----------------------------------------------------------------------------------
         Plug 'maxbrunsfeld/vim-yankstack'
        "----------------------------------------------------------------------------------
        Plug 'easymotion/vim-easymotion'
                let g:EasyMotion_smartcase = 1
                let g:EasyMotion_do_mapping = 0 "-Disable default mappings
        Plug 'wellle/visual-split.vim'
                " :VSSplit, :VSSplitAbove or :VSSplitBelow to create the split
        "==================================================================================
        Plug 'nvie/vim-flake8'
        "---------------------------------------------------------------------------------- 
        "-Strongly recommended: easy configuration of maktaba plugins.
        Plug 'google/vim-maktaba'
        Plug 'google/vim-glaive'
                let g:myplugin_enablefeature = 1
                let g:myplugin_defaultdir = $HOME
                let g:myplugin_weirdmode = 'm'
        "----------------------------------------------------------------------------------
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
        Plug 'godlygeek/tabular'
        "---------------------------------------------------------------------------------- 
        Plug 'plasticboy/vim-markdown'
                " - `zr`: reduces fold level throughout the buffer
                " - `zR`: opens all folds
                " - `zm`: increases fold level throughout the buffer
                " - `zM`: folds everything all the way
                " - `za`: open a fold your cursor is on
                " - `zA`: open a fold your cursor is on recursively
                " - `zc`: close a fold your cursor is on
                " - `zC`: close a fold your cursor is on recursively

        " Configurations for Markdown files
        autocmd BufNewFile,BufReadPost *.md set filetype=markdown
        " Automatically remove trailing whitespace on Markdown files
        autocmd BufWritePre *.md :%s/\s\+$//e

        "==================================================================================
        source ~/git/bTest/kDot/logoTextObjct.vim
        source ~/git/bTest/kDot/logoABB.vim
        "source ~/git/bTest/kDot/logoHtml.vim
        "source ~/git/bTest/kDot/logoGit.vim
        "source ~/git/bTest/kDot/logoMako.vim
        "source ~/git/bTest/kDot/logoQF.vim
        "source ~/git/bTest/kDot/logoAsyncPy.vim
        "==================================================================================
        Plug 'rkulla/pydiction'
        "=======================================================================
        Plug 'python-mode/python-mode'
        let g:pymode_python = 'python3'
        "---Other-stuff--KKK-MMM------------------------------------------------
        let g:pymode_rope = 0 " Load rope plugin
        let g:pymode_breakpoint = 1 " Load breakpoints plugin
        let g:pymode_breakpoint_key = '<LocalLeader>t' " set/unset breakpoint
        let g:pydoc = 'pydoc' " Executable command for documentation search
        let g:pymode_doc = 1 " Load show documentation plugin
        let g:pymode_doc_key = 'T' " Key for show python documentation
        "let g:pymode_utils_whitespaces = 1 " Autoremove unused whitespaces
        "let g:pymode_options_indent = 1 " default pymode python indent options
        "let g:pymode_options_fold = 1 " Set default pymode python fold options
        "let g:pymode_options_other = 1 " Set default pymode python other options
        ""========================================================================
        "let g:pymode_syntax = 1
        "let g:pymode_syntax_all = 0
        "let g:pymode_syntax_builtin_objs = 1
        "let g:pymode_syntax_print_as_function = 0
        "let g:pymode_syntax_space_errors = 0
        "let g:pymode_run = 0
        "let g:pymode_lint = 0
        "let g:pymode_virtualenv = 0
        "let g:pymode_folding = 0
        "let g:pymode_options = 0
        "=========================================================================
        let g:pymode_rope = 0 " Load rope plugin
        let g:pymode_rope_auto_project = 1 " Auto create and open ropeproject
        let g:pymode_rope_enable_autoimport = 1 " Enable autoimport
        let g:pymode_rope_autoimport_generate = 1 " Auto generate global cache
        let g:pymode_rope_autoimport_underlineds = 0
        let g:pymode_rope_codeassist_maxfixes = 10
        let g:pymode_rope_sorted_completions = 1
        let g:pymode_rope_extended_complete = 1
        let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]
        let g:pymode_rope_confirm_saving = 1
        let g:pymode_rope_global_prefix = "<C-x>p"
        let g:pymode_rope_local_prefix = "<C-c>r"
        let g:pymode_rope_vim_completion = 1 " use vim's complete function.
        let g:pymode_rope_guess_project = 0 " scan project slow completion speed
        let g:pymode_rope_goto_def_newwin = 1
        let g:pymode_rope_always_show_complete_menu = 1 " default=0
        "--------------------------------------------------------------------------------- 
        " Plug 'krisajenkins/vim-pipe'
        "         autocmd BufNewFile,BufReadPost *.json setlocal filetype=javascript.json
        "         let b:vimpipe_command="lynx -dump -stdin"
        "         let b:vimpipe_command='jslint <(cat)'
        "         let b:vimpipe_command="python -m json.tool"
        "         let b:vimpipe_command="multimarkdown"
        "         "let b:vimpipe_filetype="html"
        "         g:vimpipe_invoke_map    <localleader>p
        "         g:vimpipe_close_map     <localleader>c
        "--------------------------------------------------------------------------------- 
        Plug 'vim-scripts/mako.vim'
                "g:mako_detect_lang_from_ext = 1
        Plug 'sophacles/vim-bundle-mako'
        Plug 'aperezdc/vim-template'
        "--------------------------------------------------------------------------------- 
        Plug 'fatih/vim-go'
        Plug 'hdima/python-syntax'
        "let python_highlight_all = 1
        let python_highlight_all = 1
        "--------------------------------------------------------------------------------- 
        Plug 'metakirby5/codi.vim'
        Plug 'devjoe/vim-codequery'
        Plug 'mhinz/vim-grepper'
        "--------------------------------------------------------------------------------- 
        Plug 'romainl/vim-qf'
        Plug 'yssl/QFEnter'
        "--------------------------------------------------------------------------------- 
        "???
        " Plug 'junegunn/vim-pseudocl'
        "--------------------------------------------------------------------------------- 
        " Plug 'junegunn/vim-oblique'
        "         hi! def link ObliqueCurrentMatch Keyword
        "         hi! def link ObliquePrompt       Structure
        "         hi! def link ObliqueLine         String
        "--------------------------------------------------------------------------------- 
        " Plug 'junegunn/vim-easy-align'
        " Plug 'junegunn/goyo.vim'
        " Plug 'tpope/vim-rsi'
        "--------------------------------------------------------------------------------- 
        " Plug 'junegunn/seoul256.vim'
        " Plug 'godlygeek/csapprox'
        " Plug 'junegunn/limelight.vim'
        " Plug 'junegunn/vader.vim'
        "--------------------------------------------------------------------------------- 
        " Plug 'tpope/vim-endwise'
        " Plug 'vim-ruby/vim-ruby'
        " Plug 'tpope/vim-rails'
        " Plug 'tweekmonster/django-plus.vim'
        " Plug 'skalnik/vim-vroom'
        "------TESTING--------------------------------------------------------------------- 
        Plug 'eparreno/vim-l9'
        " Plug 'WolfgangMehner/c-support'
        " Plug 'vim-scripts/c.vim'
        "--------------------------------------------------------------------------------- 
        " Plug 'WolfgangMehner/bash-support'
        " Plug 'severin-lemaignan/vim-minimap'
        " Plug 'koron/minimap-vim'
        " Plug 'itchyny/calendar.vim'
        " Plug 'vim-scripts/foo.vim'
        Plug 'matze/vim-move'
        Plug 'ron89/thesaurus_query.vim'
        "--------------------------------------------------------------------------------- 
        Plug 'AndrewRadev/switch.vim'
                let g:switch_mapping = "-"
                let g:switch_custom_definitions =
                                \ [
                                        \ ['true', 'false'], ['True', 'False'], ['TRUE', 'FALSE'],
                                        \ ['yes', 'no'], ['Yes', 'No'], ['YES', 'NO'],
                                        \ ['on', 'off'], ['On', 'Off'], ['ON', 'OFF'],
                                        \ ['up', 'down'], ['Up', 'Down'] ,['UP', 'DOWN'],
                                        \ ['set', 'unset'],
                                        \ ['is', 'isnot'] ,
                                        \ ['==', '!='] , ['<', '>'], ['<=', '>='], ['=~', '!~'],
                                        \ ['enable', 'disable'], ['Enable', 'Disable'],
                                        \ ['enabled', 'disabled'], ['Enabled', 'Disabled'],
                                        \ ['maximum', 'minimum'], ['Maximum', 'Minimum'],
                                        \ ['maximal', 'minimal'], ['Maximal', 'Minimal'],
                                        \ ['upper', 'lower'], ['Upper', 'Lower'],
                                        \ ['top', 'bottom'], ['Top', 'Bottom'],
                                        \ ['above', 'below'], ['Above', 'Below'],
                                        \ ['forward', 'backward'], ['Forward', 'Backward'],
                                        \ ['right', 'middle', 'left'], ['Right', 'Middle', 'Left'],
                                        \ ['next', 'previous'], ['Next', 'Previous'],
                                        \ ['first', 'last'], ['First', 'Last'],
                                        \ ['before', 'after'], ['Before', 'After'],
                                        \ ['more', 'less'], ['More', 'Less'],
                                        \ ['fast', 'slow'], ['Fast', 'Slow'],
                                        \ ['green', 'yellow', 'red'],
                                        \ ['one', 'two', 'three']
                                \ ]
        "--------------------------------------------------------------------------------- 
        Plug 'gotcha/vimpdb'
        Plug 'cpiger/NeoDebug'
        "--------------------------------------------------------------------------------- 
        " Plug 'vim-vdebug/vdebug'
        " <F5>: start/run (to next breakpoint/end of script)
        " <F2>: step over
        " <F3>: step into
        " <F4>: step out
        " <F6>: stop debugging (kills script)
        " <F7>: detach script from debugger
        " <F9>: run to cursor
        " <F10>: toggle line breakpoint
        " <F11>: show context variables (e.g. after "eval")
        " <F12>: evaluate variable under cursor
        " :Breakpoint <type> <args>: set a breakpoint of any type (see :help VdebugBreakpoints)
        " :VdebugEval <code>: evaluate some code and display the result
        " <Leader>e: evaluate the expression under visual highlight and display the result
        "--------------------------------------------------------------------------------- 
        Plug 'ashisha/image.vim'
        Plug 'vimwiki/vimwiki'
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

call plug#end()
"---nPlugEnd---nPlugStop3------------}}}

        ":TERMINAL
        tnoremap <Esc> <C-\><C-n>
        tnoremap <C-w>h <C-\><C-n><C-w>h
        tnoremap <C-w>j <C-\><C-n><C-w>j
        tnoremap <C-w>k <C-\><C-n><C-w>k
        tnoremap <C-w>l <C-\><C-n><C-w>l
        "----------------------------------------------------------------------------------
        ":TERMINAL
        if &buftype ==# 'terminal'
                echo 'The buffer is a terminal.'
        endif
        "----------------------------------------------------------------------------------
        ":TERMINAL
        autocmd WinEnter *
                        \ if &buftype ==# 'terminal' |
                        \  startinsert |
                        \ endif
"===JEDI============================================================================================
        let g:jedi#use_splits_not_buffers = "left"
        let g:jedi#popup_on_dot = 0
        "------------------------------------------------------------------------ 
        let g:jedi#goto_command = "<leader>d"
        let g:jedi#goto_assignments_command = "<leader>g"
        let g:jedi#goto_definitions_command = ""
        "---KKK---MMM------------------------------------
        let g:jedi#documentation_command = "gj"
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
":::DEOPLETE-SetUP:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        let g:deoplete#enable_at_startup = 1
        call deoplete#custom#option('refresh_always', v:true)
        "--------------------------------------------------------------------------------- 
        let g:deoplete#enable_ignore_case = 1
        let g:deoplete#enable_smart_case = 1
        let g:deoplete#enable_camel_case = 1
        let g:deoplete#enable_refresh_always = 1
        let g:deoplete#max_abbr_width = 0
        let g:deoplete#max_menu_width = 0
        "call deoplete#custom#source('jedi', 'is_debug_enabled', 1)
        "call deoplete#enable_logging('DEBUG', 'deoplete.log')
        "--------------------------------------------------------------------------------
        "--------------------------------------------------------------------------------
        let g:deoplete#sources#ternjs#timeout = 3
        let g:deoplete#sources#ternjs#types = 1
        let g:deoplete#sources#ternjs#docs = 1
        call deoplete#custom#source('_', 'min_pattern_length', 3)
        "--------------------------------------------------------------------------------
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

        "-------------------------------------------------------------------------------- 
        autocmd! FileType python setlocal completeopt-=preview
        "--------------------------------------------------------------------------------
        silent! set complete& completeopt=menu infercase noshowfulltag
        "set shortmess+=c
        "suppress intro message because the above makes it look bad
        set shortmess+=I
        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
        "--------------------------------------------------------------------------------
        autocmd! FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd! FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd! FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd! FileType java setlocal omnifunc=javacomplete#Complete
        autocmd! FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd! FileType python setlocal omnifunc=jedi#completions
        autocmd! FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd! FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd! FileType haskell setlocal omnifunc=necoghc#omnifunc
        "--------------------------------------------------------------------------------
        autocmd! filetype python setlocal textwidth=100
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

        "===(C-x)==(C-o)===========================================================================
        inoremap <silent> <C-o> <C-x><C-o>
        "inoremap <silent> <C-k> <C-x><C-k>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-l> <C-x><C-l>
        inoremap <silent> <C-]> <C-x><C-]>
        "inoremap <silent> <C-u> <C-x><C-u>

        "===DEOPLETE-CLANG==========================================================================
        let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-6.0/lib/libclang.so.1"
        let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
        let g:deoplete#sources#clang#sort_algo = 'priority' " alphabetical
"===DDDClang========================================================================================
        "? let g:clang_auto = 1
        "? let g:clang_cpp_options = '-std=c++ -stdlib=libc++'
        "? let g:clang_exec = 'clang'
        "==========================================================================================

        let g:deoplete#omni_patterns = {}
        let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
        let g:deoplete#sources = {}
        let g:deoplete#sources._ = []
        let g:deoplete#file#enable_buffer_path = 1

        "===PHP=DDD=================================================================================
        let g:neocomplete#force_omni_input_patterns = {}
        let g:neocomplete#force_omni_input_patterns.php =
                                \ '\h\w*\|[^- \t]->\w*'

        "===RUBY====================================================================================
        setlocal dictionary+=~/.config/nvim/repos/github.com/takkii/ruby-dictionary3/autoload/source/ruby_method_deoplete
        call deoplete#custom#source('dictionary', 'ruby', ['[^. *\t]\.\w*\|\h\w*::'])

        "===SOLAR===================================================================================
        " import * as solargraph from 'solargraph-utils';
        " let configuration = new Solargraph.Configuration();
        " let provider = new Solargraph.SocketProvider(configuration);
        " provider.start().then(() => {
        "     console.log('Socket server is listening on port ' + provider.port);
        " });

"===DDDMarkStart====================================================================================
        call deoplete#custom#source('neosnippet',    'rank', 690)
        call deoplete#custom#source('ultisnips',     'rank', 680)
        call deoplete#custom#source('padawan',       'rank', 660)
        call deoplete#custom#source('go',            'rank', 650)
        call deoplete#custom#source('vim',           'rank', 640)
        call deoplete#custom#source('flow',          'rank', 630)
        call deoplete#custom#source('clang',         'rank', 625)
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
        "==================================================================================
        call deoplete#custom#source('LanguageClient','mark', 'ℰLgCl')
        call deoplete#custom#source('omni',          'mark', '⌾mni')
        call deoplete#custom#source('flow',          'mark', '⌁flow')
        call deoplete#custom#source('perlomni',      'mark', '⌁perl')
        call deoplete#custom#source('padawan',       'mark', '⌁Pd')
        call deoplete#custom#source('TernJS',        'mark', '⌁Tern')
        call deoplete#custom#source('tern',          'mark', '⌁tern')
        call deoplete#custom#source('clang',         'mark', '⌁Clng')
        call deoplete#custom#source('go',            'mark', '⌁Go')
        call deoplete#custom#source('jedi',          'mark', '⌁Jdi')
        call deoplete#custom#source('vim',           'mark', '⌁Vim')
        call deoplete#custom#source('neosnippet',    'mark', '⌘NeoSnp')
        call deoplete#custom#source('ultisnips',     'mark', '⌘Ulti')
        call deoplete#custom#source('around',        'mark', '↻round')
        call deoplete#custom#source('buffer',        'mark', 'ℬ uffer')
        call deoplete#custom#source('tmux-complete', 'mark', '⊶tMux')
        call deoplete#custom#source('syntax',        'mark', '⊶Syntx')
        call deoplete#custom#source('member',        'mark', '.Mmbr')
"===DDDMarkEnd=====================================================================================

"===FZF-SetUP======================================================================================
        " In Neovim, you can set up fzf window using a Vim command
        let g:fzf_layout = { 'window': 'enew' }
        let g:fzf_layout = { 'window': '-tabnew' }
        let g:fzf_layout = { 'window': '10split enew' }
        "let g:fzf_history_dir = '~/.local/share/fzf-history'
        "==========================================================================================
        let g:fzf_colors =
                        \ { 'fg':    ['fg', 'Comment'],
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
        " Hide statusline of terminal buffer
        autocmd! FileType fzf
        autocmd  FileType fzf set laststatus=0 noshowmode noruler
                                \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
        "==========================================================================================
        function! s:fzf_statusline()
                highlight fzf1 ctermfg=161 ctermbg=2
                highlight fzf2 ctermfg=23 ctermbg=9
                highlight fzf3 ctermfg=237 ctermbg=13
                setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
        endfunction
        autocmd! User FzfStatusLine call <SID>fzf_statusline()

        "===FZF=Ctrl=x==Lynx==============================================================================
        let g:fzf_command_prefix = 'Fzf'
        "===FzfSourceSink================================================================================
        command! FZFTag if !empty(tagfiles()) | call fzf#run({
                                \ 'source': "cat " . join(tagfiles()) . ' | grep -P "' . expand('%:t') . '"',
                                \ 'sink': function('<sid>tag_handler'),
                                \ 'options': '+m --with-nth=1',
                                \ 'down': '50%'
                                \ }) | else | echo 'No tags' | endif
        "------------------------------------------------------------------------------------------
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


        "==========================================================================================
        "-[Buffers] Jump to the existing window if possible
        let g:fzf_buffers_jump = 1
        "-[[B]Commits] Customize the options used by 'git log':
        let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
        "-[Tags] Command to generate tags file
        let g:fzf_tags_command = 'ctags -R'
        "-[Commands] --expect expression for directly executing the command
        let g:fzf_commands_expect = 'alt-enter,ctrl-x'
        "---???-----------------------------------------------------------
        let generate_tags=1
        "==========================================================================================
        "   - :Unite [{options}] {source's'}
        "      - parameters of source
        "          - e.g. file:foo:bar -- here ['foo', 'bar'] is parameters
        "          - e.g. file:foo\:bar -- use \ to escape
        "          - e.g. file:foo::bar -- ['foo', '', 'bar']
        "   - press 'I' to search after prompt '>'
        "       - *word,
        "       - **/foo (directory recursively)
        "       - foo bar (AND)
        "       - foo|bar (OR)
        "       - foo !bar (negative)
        ":UniteResume, :UniteBookmarkAdd,
        call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
                                \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))
        "------------------------------------------------------------------------------------------
        call unite#filters#sorter_default#use(['sorter_rank'])
        call unite#filters#matcher_default#use(['matcher_fuzzy'])
        call unite#filters#matcher_default#use(['matcher_fzf'])

        "===SetPLAY6===============================================================================
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
        "==========================================================================================
        "---Open-Quickfix-window-automatically---------------------------------------------
        autocmd QuickFixCmdPost grep cwindow
        autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
        autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p

"---AAA---REMAP---1100--------------------------------------------------------------------------------------{{{
        "------------------------------------------------------------------------------------------
        " Keys   Operator   Movement
        " ----   --------   -------------
        " dw     Delete     to next word
        " ci(    Change     inside parens
        " yt,    Yank       until comm
        "------------------------------------------------------------------------------------------
        "---SANDWICH1------------------------------------------------------------------------------
        omap ia <Plug>(textobj-sandwich-auto-i)
        xmap ia <Plug>(textobj-sandwich-auto-i)
        omap aa <Plug>(textobj-sandwich-auto-a)
        xmap aa <Plug>(textobj-sandwich-auto-a)
        "------------------------------------------------------------------------------------------
        "---dia--daa--vaa--------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        "---[ {(hello) ( noch ) ('Mal') ("tomos") } tormos]
        "------------------------------------------------------------------------------------------
        nmap <A-1> <esc>viq<left> 
        nmap <A-q> <esc>vaq<left> 
                        nmap <A-0> <esc>vab<left> 
                        nmap <A-b> <esc>vab<left> 
                                nmap <A-3> <esc>viB 
                                        nmap <A-i> <esc>vio 
                                        nmap <A-9> <esc>vif 
                        nmap <A-8> <esc>vaf 
                        nmap <A-f> <esc>vaf 
                nmap <A-7> <esc>vip 
        nmap <A-6> <esc>vih 
        nmap <A-h> <esc>vih 
        "------------------------------------------------------------------------------------------
        "Usage: dip - Delete between (ooi aja)  [ jajaj ]
        onoremap p i(
        vnoremap p i(
        onoremap r i[
        vnoremap r i[

        "------------------------------------------------------------------------------------------
        " quote a word
        nnoremap q1 :silent! normal mpea'<esc>bi'<esc>`pl
        " double quote a word
        nnoremap q2 :silent! normal mpea"<esc>bi"<esc>`pl


        fun! Sround(s1, s2) range
                exe "normal vgvmboma\<ESC>"
                normal `a
                let lineA = line(".")
                let columnA = col(".")

                normal `b
                let lineB = line(".")
                let columnB = col(".")

                " exchange marks
                if lineA > lineB || lineA <= lineB && columnA > columnB
                        " save b in c
                        normal mc
                        " store a in b
                        normal `amb
                        " set a to old b
                        normal `cma
                endif

                exe "normal `ba" . a:s2 . "\<ESC>`ai" . a:s1 . "\<ESC>"
        endfun


        "------------------------------------------------------------------------------------------
        "---SANDWICH2------------------------------------------------------------------------------
        vmap sb "zdi sympy.pprint(<c-r>z)<esc>
        vmap sn "zdi print(<c-r>z)<esc> 
        "vmap sb "zdi<b><c-r>z</b><esc>
        "vmap st "zdi<?= <c-r>z ?><esc> 
        "------------------------------------------------------------------------------------------
        "??? inoremap <C-_> <space><bs><esc>:call InsertCloseTag()<cr>a
        "--------------------------------------------------------------------------

        "===MMM===KKK==============================================================================
        " map <F2> :exec "!xterm -e 'pydoc ".expand("<cword>")."'"<CR><CR>
        " imap <F2> <ESC>:exec "!xterm -e 'pydoc ".expand("<cword>")."'"<CR><CR>i
        "==========================================================================================
        "autocmd FileType python set keywordprg=Pydoc
        "command! -nargs=+ Pydoc silent! call system("tmux split-window Pydoc " . expand(<q-args>))
        "autocmd FileType python nnoremap <silent><buffer> M <Esc>:Pydoc <cword><CR>
        "==========================================================================================

        nnoremap ,h :CommandTHelp<cr>
        nnoremap ,b :CommandTBuffer<cr>
        "==========================================================================================
        nnoremap ;h :CommandTHelp<cr>
        nnoremap ;b :CommandTBuffer<cr>
        let g:CommandTCancelMap=['<C-x>', '<C-c>']
        "==========================================================================================
        " <Leader>t provide fast, intuitive mechanism for opening files and buffers
        " <BS> <Del> -- delete
        " <Left> <C-h> -- move left.
        " <Right> <C-l> -- move right
        " <C-a> -- move to the start.
        " <C-e> -- move to the end.
        " <C-u> -- clear the contents of the prompt.
        " <Tab> -- switch focus between the file listing and prompt.
        "--------------------------------------------------------------------------
        " <C-CR> <C-s> -- split open
        " <C-v> -- vsplit
        " <C-t> -- tab
        " <C-j> <C-n> <Down> -- select next file in file listing.
        " <C-k> <C-p> <Up> -- select previous file in file listing.
        " <Esc> <C-c> -- cancel (dismisses file listing)
        "==========================================================================================

"---20Remap---1400---}}}



"===================================================================================================
autocmd FileType cpp set keywordprg=cppman
command! -nargs=+ Cppman silent! call system("tmux split-window cppman " . expand(<q-args>))
autocmd FileType cpp nnoremap <buffer> M <Esc>:Cppman <cword><CR>

"===!!!BFind========================================================================================
command! -bang -nargs=* BFind call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)



"---AAA---MyFUNC--------------------------------------------------------------------------------{{{
        " Focus the current line.  Basically:
        function! FocusLine()
                let oldscrolloff = &scrolloff
                set scrolloff=0
                execute "keepjumps normal! mzzMzvzt25\<c-y>\<cr>"
                let &scrolloff = oldscrolloff
        endfunction

        "----------------------------------------------------------------------------------
        function! <SID>SynStack()
                if !exists("*synstack")
                        return
                endif
                echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
        endfunc

        "----------------------------------------------------------------------------------
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
        com! -bang ShowFuncKeys :call ShowFuncKeys(<q-bang>)

        "----------------------------------------------------------------------------------
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
        command! ShowFunc call ShowFunc()

        "----------------------------------------------------------------------------------
        function! SaveCurrentSession()
                if v:this_session != ""
                        exe "mksession! " . v:this_session
                endif
        endfunction
        au BufRead Session.vim so %
        au VimLeave * call SaveCurrentSession()

        "----------------------------------------------------------------------------------



"---EndMyFunc------------------}}}


"==========================================================================================
"gdb: no symbol table is loadet  use "file" command 
" let g:neodbg_console_height        = 15  " gdb console buffer hight, Default: 15
" let g:neodbg_openbreaks_default    = 1   " Open breakpoints window, Default: 1
" let g:neodbg_openstacks_default    = 0   " Open stackframes window, Default: 0
" let g:neodbg_openthreads_default   = 0   " Open threads window, Default: 0
" let g:neodbg_openlocals_default    = 1   " Open locals window, Default: 1
" let g:neodbg_openregisters_default = 0   " Open registers window, Default: 0

" let g:neodbg_keymap_toggle_breakpoint  = '<F2>'         " toggle breakpoint on current line
" let g:neodbg_keymap_next               = '<F12>'        " next
" let g:neodbg_keymap_run_to_cursor      = '<C-F10>'      " run to cursor (tb and c)
" let g:neodbg_keymap_jump               = '<C-S-F10>'    " set next statement (tb and jump)
" let g:neodbg_keymap_step_into          = '<F11>'        " step into
" let g:neodbg_keymap_step_out           = '<S-F11>'      " setp out
" let g:neodbg_keymap_continue           = '<F5>'         " run or continue
" let g:neodbg_keymap_print_variable     = '<C-P>'        " view variable under the cursor
" let g:neodbg_keymap_stop_debugging     = '<S-F5>'       " stop debugging (kill)
" let g:neodbg_keymap_toggle_console_win = '<F6>'         " toggle console window
" let g:neodbg_keymap_terminate_debugger = '<C-C>'        " terminate debugger

"------------------------------------------------------------------------------------------
"  nnoremap <c-p> :Files<CR>
"  nnoremap <c-l> :Lines<CR>
"  nnoremap <c-c> :Commits<CR>
"  nnoremap <c-k> :Commands<CR>
"---!!!------------------------------------------------------------------------------------
