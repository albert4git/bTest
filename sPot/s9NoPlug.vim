        "----------------------------------------------------------------------------------
        Plug 'dominikduda/vim_timebox'

        "------------GALORE------------------------------------------------------------------------
        Plug 'AndrewRadev/splitjoin.vim'
        let g:splitjoin_split_mapping = ''
        let g:splitjoin_join_mapping = ''
        nmap <Leader>j :SplitjoinJoin<cr>
        nmap <Leader>s :SplitjoinSplit<cr>
        " foo 1, 2, { :bar => :baz }, { :baz => :qux }
        "----------------------------------------------------------------------------------

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

        """""""""""""""""""""""""""""""""""""""""""""""""""""""
        Plug 'airblade/vim-rooter'
                let g:rooter_manual_only = 1

        "------------82Vim-------------------------------------------------------------------------
        " Plug 'vim/killersheep'
        "============================================================================================
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/vim-easy-align'
        "============================================================================================
        " Plug 'uarun/vim-protobuf'
        " Plug 'editorconfig/editorconfig-vim'
        " Plug 'danro/rename.vim'
        " Plug 'tpope/vim-rhubarb'

        " Plug 'rhysd/committia.vim'
        " Other
        " Plug 'tomlion/vim-solidity', {'for': 'solidity'}
        " Plug 'hashivim/vim-terraform', {'for': 'terraform'}
        " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'markdown' }
        " Plug 'wannesm/wmgraphviz.vim'
        " Plug 'amadeus/vim-mjml'
        " Plug 'dart-lang/dart-vim-plugin'
        " Comparison with vim-oblique
        " Plug 'junegunn/vim-slash'
        "============================================================================================

        "============================================================================================
        "pdf-graph
        " Plug 'BurntSushi/erd'
        " Plug 'abaldwin88/roamer.vim'
        "============================================================================================
                Plug 'cohama/lexima.vim'
                " Bracket completion
                "Plug 'cohama/lexima.vim' " Same as delimitMate, but also completes unclosed brakcets when pressing enter for new line.
                "Plug 'Raimondi/delimitMate'
                        "let delimitMate_expand_cr = 2
                        "let delimitMate_expand_space = 1
                "Plug 'Townk/vim-autoclose' " No dot redo support
                "Plug 'jiangmiao/auto-pairs' " No dot redo support

                " complements bracket completion
                " surround selections with things like quotes, parens, brakcets, etc.
                " Plug 'tpope/vim-surround'
        "============================================================================================
        " :call halo#run()
        " :call halo#run({'shape': 'cross2halo1'})
        " :call halo#run({'intervals': [100, 300, 600, 300, 100]})
        " :call halo#run({'intervals': [200,200,200], 'hlgroup': 'IncSearch'})
        " autocmd BufEnter * call halo#run()
        " autocmd BufEnter * call halo#run({'shape': 'cross2halo1'})
        " autocmd BufEnter * call halo#run({'intervals': [200,200,200], 'hlgroup': 'IncSearch'})

        "============================================================================================

        Plug 'dense-analysis/ale'
        "============================================================================================
        " Ruby
        "----------------------------------------------------------------------------------
        "-Plug 'tpope/vim-rake'
        "-Plug 'tpope/vim-rails'
        " Plug 'vim-ruby/vim-ruby'
        Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
        Plug 'tpope/vim-endwise', {'for': 'ruby'}
        Plug 'nelstrom/vim-textobj-rubyblock', {'for': 'ruby'}
        Plug 'nelstrom/vim-textobj-rubyblock'
        Plug 'danchoi/ri.vim'


        " Javascript
        Plug 'pangloss/vim-javascript', {'for': 'javascript'}
        Plug 'styled-components/vim-styled-components', {'for': ['javascript', 'typescript', 'typescript.tsx']}
        Plug 'pangloss/vim-javascript'
        Plug 'mxw/vim-jsx'

        " Typescript
        Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

        " Golang
        Plug 'fatih/vim-go', {'for': 'go'}

        " CSS
        Plug 'JulesWang/css.vim', {'for': 'css'}
        Plug 'othree/csscomplete.vim', {'for': 'css'}
        Plug 'ap/vim-css-color', {'for': 'css'}


        "----------------------------------------------------------------------------------
        " Plug 'unblevable/quick-scope' SUPER SLOW!+!!!! https://github.com/unblevable/quick-scope/issues/8
        " let g:plug_url_format = 'git@github.com:%s.git'
        "Err Plug 'mhinz/nvim-panacea', {'for': 'elixir'}
        "Err Plug 'mhinz/nvim-langserver'
        "Err Plug 'xavierchow/vim-sequence-diagram'
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
        " Plug 'tpope/vim-endwise'
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

        "============================================================================================

        "===openFileWithSameBasenameDifferentExtension=============================================
        "nnoremap <expr> ,R  ":e ".expand("%:r")."."
        "==========================================================================================

        "============================================================================================
        "==========================================================================================
        "---FIREFOX---
        " www.ewb.de
        "===NOWO====================================================================================
        " nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        " nnoremap <localleader>o :Utl<CR>
        " nnoremap ;o :Utl<CR>
        "==========================================================================================
        "============================================================================================

        " inoremap <F4> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
        "============================================================================================
        "============================================================================================
        " Any command that lists files can be used as the source
        " call fzf#run(fzf#wrap({'source': 'ls'}))
        " call fzf#run(fzf#wrap({'source': 'git ls-files'}))
        "============================================================================================
        " I want this tip to inspire you. Perhaps you never thought of running a web
        " server from inside your text editor. Does this give you ideas for other
        " processes that you could control remotely?

        "===???======================================================================================
        " :command! NpmRestart call jobsend(1, "\<C-c>npm run server\<CR>")
        " :command! ApaStart call jobsend(1, "\<C-c>apachectl start\<CR>")
        " :Restart

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
        " Plug 'jesseleite/vim-agriculture'
        "----------------------------------------------------------------------------------
        "Plug 'vimim/vimim'
        "Plug 'cy2081/vim-cyim'
        "Plug 'vim-scripts/VimIM'

        "----Nice-Tabs----------------------------
        " Plug 'webdevel/tabulous'
        " let tabulousLabelNameTruncate = 0
        "-----------------------------------------
        " Plug 'itchyny/thumbnail.vim'
        " Plug 'ap/vim-buftabline'
        "----------------------------------------------------------------------------------
        " Plug 'itchyny/calendar.vim'
        "---------------------------------------------------------------------------------
        " Plug 'bfredl/nvim-miniyank'
        "---------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        " Plug 'tacahiroy/ctrlp-funky'
        "         nnoremap <Leader>fu :CtrlPFunky<Cr>
        "         " narrow the list down with a word under cursor
        "         nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
        "------------------------------------------------------------------------------------------
        " Plug 'epheien/termdbg'
        "------------------------------------------------------------------------------------------
        " Plug 'guns/vim-sexp',    {'for': 'clojure'}
        "------------------------------------------------------------------------------------------
        " Plug 'osyo-manga/vim-anzu'
        "------------------------------------------------------------------------------------------
        " Plug 'sunaku/vim-shortcut'
        "----------------------------------------------------------------------------------
        " Plug 'rhysd/devdocs.vim'
        " nmap M <Plug>(devdocs-under-cursor)
        " let g:devdocs_host = 'localhost:9292'
        " git clone https://github.com/freeCodeCamp/devdocs.git && cd devdocs
        " gem install bundler
        " bundle install
        " bundle exec thor docs:download --default
        " bundle exec rackup
        "---------------------------------------------------------------------------------
        "Plug 'https://github.com/jsnal/vim-serape', { 'tag': 'v0.2.2' }
        "===!!!============================================================================
        "Plug '907th/vim-auto-save'
        "let g:auto_save = 1
        "===!!!============================================================================

        "---------------------------------------------------------------------------------
        "Plug 'voldikss/vim-search-me'
        "Plug 'waiting-for-dev/vim-www'
        "Plug 'tyru/caw.vim'
        "Plug 'rudrab/vimf90'
        "Plug 'idanarye/vim-merginal'
        " Plug 'laurentgoudet/vim-howdoi.git'
        "Plug 'jtmkrueger/vim-c-cr'

        "---REST----------------------------------------------------------------------------
        "Plug 'jaxbot/browserlink.vim'
        "Plug 'notalex/vim-run-live'
        "Plug 'openuado/vimtips-fortune'
        "Plug 'twe4ked/vim-diff-toggle'
        "Plug 'szw/vim-dict'
        "Plug 'hsitz/PyScratch'
        "Plug 'amdt/vim-niji'
        "---------------------------------------------------------------------------------

        "---------------------------------------------------------------------------------

        "---------------------------------------------------------------------------------

        "---------------------------------------------------------------------------------

        "---------------------------------------------------------------------------------

        "---------------------------------------------------------------------------------

"++AAAs10TmpPlug++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "-Plug 'devjoe/vim-codequery'
        "---------------------------------------------------------------------------------
        " Plug 'uguu-org/vim-matrix-screensaver'
        " Plug 'vim-scripts/TeTrIs.vim'
        " Plug 'pravj/vingvong'
        "===!!!Err=================================
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
        " Plug 'KeyboardFire/vim-minisnip'
        " Plug 'joereynolds/deoplete-minisnip'
        " let g:minisnip_trigger = '<M-4>'
        "----------------------------------------------------------------------------------

        " Plug 'tommcdo/vim-lion'
        " let g:lion_squeeze_spaces = 1
        "===============================================================================
        Plug 'yarisgutierrez/ayu-lightline'
        Plug 'patstockwell/vim-monokai-tasty'
        "===============================================================================
        Plug 'rafi/awesome-vim-colorschemes'
        "===============================================================================

        " Plug 'mkropat/vim-jumpthere'
        " Plug 'osyo-manga/vim-over' " Better command interaction
        " Plug 'dracula/vim', { 'as': 'dracula' }

        " Plug 'Shougo/denite.nvim' " async version of unite.vim
        nnoremap <leader>f :Denite -direction=dynamicbottom -auto-preview file_rec<CR>
        nnoremap <leader>b :Denite -direction=dynamicbottom -auto-preview buffer<CR>
        " call denite#custom#var('file/rec', 'command', ['ag', '--follow', '-g', '--nogroup', '--nocolor', '-u', ''])
        " call denite#custom#var('grep', 'command', ['ag'])
        " call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
        " call denite#custom#var('grep', 'recursive_opts', [])
        " call denite#custom#var('grep', 'pattern_opt', [])
        " call denite#custom#var('grep', 'separator', ['--'])
        " call denite#custom#var('grep', 'final_opts', [])

        "===============================================================================

        "----------------------------------------------------------------------------------
        "??? Plug 'tpope/vim-unimpaired'
        "??? Plug 'tpope/vim-surround'
        "---------------------------------------------------------------------------------
        "-!- Plug 'lambdalisue/lista.nvim'
        " nnoremap <M-3> :<C-u>Lista<CR>
        " nnoremap <M-4> :<C-u>ListaCursorWord<CR>
        " vim-lost
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'hsitz/VimOrganizer'
        "===============================================================================
        "---------------------------------------------------------------------------------
        "-PHP-Projectionist-
        " Plug 'noahfrederick/vim-composer'
        "----------------------------------------------------------------------------------
        "Plug 'Yggdroot/indentLine'
        "        let g:indentLine_enabled = 1
        "        let g:indentLine_noConcealCursor='nc'
        "        let g:indentLine_color_term = 10
        "        let g:indentLine_color_gui = '#ffFF00'
        "        let g:indentLine_color_gui = '#ff5f00'
        "        "let g:indentLine_setConceal = 0
        "        let g:indentLine_bgcolor_term = 202
        "        let g:indentLine_faster = 1
        "        let g:indentLine_char = '|'
        "        let g:indentLine_first_char='|'
        "        let g:indentLine_showFirstIndentLevel=1
        "        let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']

        "===============================================================================
        "--------------------------------------
        " Plug 'Shougo/unite.vim'
        " Plug 'tsukkee/unite-tag'
        " Plug 'SpaceVim/unite-ctags'
        " Plug 'Shougo/unite-outline/'
        " Plug 'tsukkee/unite-help'
        " Plug 'rstacruz/vim-fastunite'
        " Plug 'cskeeters/unite-fzf'
        " Plug 'Shougo/neomru.vim'
        "--------------------------------------
        "---------------------------------------------------------------------------------
        " Plug 'junegunn/vim-oblique'
        "         hi! def link ObliqueCurrentMatch Keyword
        "         hi! def link ObliquePrompt       Structure
        "         hi! def link ObliqueLine         String
        "==========================================================================================
        " autocmd! User Oblique       normal! zz
        " autocmd! User ObliqueStar   normal! zz
        " autocmd! User ObliqueRepeat normal! zz
                " hi! def link ObliqueCurrentMatch Keyword
                " hi! def link ObliquePrompt       Structure
                " hi! def link ObliqueLine         String
                " let g:oblique#clear_highlight =0
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

        "---------------------------------------------------------------------------------
        "------------------TODO------------------------------------------------------------
        " enable support for concealing some constructs with unicode glyphs.
        " Plug 'hylang/vim-hy'
        " let g:hy_enable_conceal = 1
        " If you do let g:hy_conceal_fancy=1, xi and #% are displayed as ξ

        "---------------------------------------------------------------------------------
        " Plug 'tiagoinacio/fzf-bookmark.vim'
        "===============================================================================
        "postgres
        " Plug 'vpenkoff/vim-pg'
        " Plug 'vim-scripts/dbext.vim'
        " :'<,'>DBExecSQL    (or used the default map <Leader>se)

        "----------------------------------------------------------------------------------
        " Plug 'chriskempson/base16-vim'
        Plug 'ayu-theme/ayu-vim' " or other package manager
        " colorscheme ayu
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme
        " let ayucolor="dark"   " for dark version of theme
        Plug 'trusktr/seti.vim'
        "----------------------------------------------------------------------------------
        "---------------------
        " Plug 'xolox/vim-notes'
        "----------------------------------------------------------------------------------
        "===================================================================================
        " Plug 'StanAngeloff/php.vim'
        " Plug 'squizlabs/PHP_CodeSniffer'
        " Plug 'LucHermitte/lh-cpp'
        "----------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        " Plug 'liquidz/vim-iced', {'for': 'clojure'}
        "------------------------------------------------------------------------------------------
        " Plug 'jacobsimpson/nvim-example-python-plugin'
        "------------------------------------------------------------------------------------------

        " Plug 'Timoses/vim-venu'
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        "==========================================================================================
        " let g:fzf_colors =  {   ['fg', 'Comment'],
        "                         \ 'bg':      ['bg', 'Normal'],
        "                         \ 'hl':      ['fg', 'Comment'],
        "                         \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
        "                         \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn', 'Normal'],
        "                         \ 'hl+':     ['fg', 'Statement'],
        "                         \ 'info':    ['fg', 'PreProc'],
        "                         \ 'border':  ['fg', 'Ignore'],
        "                         \ 'prompt':  ['fg', 'Conditional'],
        "                         \ 'pointer': ['fg', 'Exception'],
        "                         \ 'marker':  ['fg', 'Keyword'],
        "                         \ 'spinner': ['fg', 'Comment'],
        "                         \ 'header':  ['fg', 'Comment'] }

        """""""""""""""""""""""""""""""""""""
        " n  ;m    * :CtrlPMRU<CR>
        " n  ;p    * :CtrlP<CR>
        " n  ;h    * :CommandTHelp<CR>
        " n  ;j    * :CommandTJump<CR>
        " n  <Plug>(CommandTTag) * :CommandTTag<CR>
        " n  <Plug>(CommandTSearch) * :CommandTSearch<CR>
        " n  <Plug>(CommandTMRU) * :CommandTMRU<CR>
        " n  <Plug>(CommandTLine) * :CommandTLine<CR>
        " n  <Plug>(CommandTCommand) * :CommandTCommand<CR>
        " n  <Plug>(CommandTHistory) * :CommandTHistory<CR>
        " n  <Plug>(CommandTBuffer) * :CommandTBuffer<CR>
        " n  <Plug>(CommandT) * :CommandT<CR>
        """""""""""""""""""""""""""""""""""""
        "colorscheme molokai
        "colorscheme vim-monokai-tasty
        "colorscheme candycode
        "colorscheme ayu
        "let ayucolor="dark"
        "----------------------------------------------------------------------------------
        " draw text-based things like lines, boxes, graphs, etc
        " Plug 'vim-scripts/DrawIt'

        "----------------------------------------------------------------------------------
        "Plug 'google/vim-searchindex'
        " let g:searchindex_improved_star=1
        "----------------------------------------------------------------------------------

        "??? (including [vim-vspec](https://github.com/kana/vim-vspec)-specific syntax)
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------

"---CommandT-------------------------------------------------------------------------------
        " <Leader>t provide fast, intuitive mechanism for opening files and buffers
        "nnoremap <silent> <Leader>t :CommandT<CR>
        "nnoremap <silent> <Leader>b :CommandTBuffer<CR>
        " <BS> <Del> -- delete
        " <Left> <C-h> -- move left.
        " <Right> <C-l> -- move right
        " <C-a> -- move to the start.
        " <C-e> -- move to the end.
        " <C-u> -- clear the contents of the prompt.
        " <Tab> -- switch focus between the file listing and prompt.
        " ---------------------------------------------------------
        "  <C-CR> <C-s> -- split open
        "  <C-v> -- vsplit
        "  <C-t> -- tab
        "  <C-j> <C-n> <Down> -- select next file in file listing.
        "  <C-k> <C-p> <Up> -- select previous file in file listing.
        "  <Esc> <C-c> -- cancel (dismisses file listing)

"==========================================================================================
        "-Setting lazyredraw causes a problem on startup
        " autocmd! vimrc VimEnter * redraw
"----------------------------------------------------------------------------------
        " move 5 lines at a time
        " noremap <c-down> 5<down>
        " noremap <c-up> 5<up>

        "Plug 'sjl/vim-sparkup'



"============================================================================================

"============================================================================================

"============================================================================================
        " <CR> : Insert new indented line after return if cursor in blank brackets
        "        or quotes.
        " <BS> : Delete brackets in pair
        " <M-p>: Toggle Autopairs (|g:AutoPairsShortcutToggle|)
        " <M-e>: Fast Wrap (|g:AutoPairsShortcutFastWrap|)
        " <M-n>: Jump to next closed pair (|g:AutoPairsShortcutJump|)
        " <M-b>: BackInsert (|g:AutoPairsShortcutBackInsert|)
"============================================================================================
        " \v: 'very magic', make every character except a-zA-Z0-9 and '_' have special meaning
        " use \v and \V to switch 'very magic' on or off.
        " \m, \M: 'magic' mode.
        " use \m and \M to switch 'magic' on or off.
"============================================================================================
        " The GNU bison parser generator (similar to YACC) generates a couple of
        " different types of errors. They start with the file name, then a colon. If
        " available, the linenumber comes next, followed by a dot (period) and the
        " column number. If appropriate, a dash and then another column number (giving a
        " column range) follows, and then a colon, space, and the error message.
"=======================================================================================================================
        " read/write a .viminfo file, don't store more
        " means that the current buffer can be put
        " to background without being written; and
        " that marks and undo history are preserved
"=======================================================================================================================
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
"==========================================================================================
        " :SignatureListMarkers 1       : List only the '!' marker
        " :SignatureListMarkers @       : List only the '@' marker
        " :SignatureListMarkers 0, 2    : List only ) marker with 2 lines of context
        " :SignatureListMarkers '', 2   : List all markers with 2 lines of context
        " :SignatureListMarkers '!@', 2 : List only the '!' and '@' markers and show
"=======================================================================================================================
"=======================================================================================================================
"=======================================================================================================================
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
"=======================================================================================================================
"=======================================================================================================================
"=======================================================================================================================
        "===!!!============================================================================
        "Plug 'xerron/wordbyword.vim'

        "------------------------------------------------------------------------------------------
        " Plug 'vigoux/LanguageTool.nvim'
        " let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'
        " hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        " hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none

        ":::ALT-DEO:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'maralla/completor.vim'
        " Plug 'prabirshrestha/asyncomplete.vim'
        " Plug 'maralla/completor.vim'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++AAAx++}}}


        "++AAA2Hulk+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
                "Plug 'mhinz/vim-signify'
                "Plug 'killphi/vim-textobj-signify-hunk'
                "        let g:signify_disable_by_default = 0
                "        let g:signify_vcs_list = [ 'git' ]
                "        let g:signify_realtime = 0
                "        let g:signify_sign_change = '~'
                "        nmap ]c <plug>(signify-next-hunk)
                "        nmap [c <plug>(signify-prev-hunk)
                "        omap ih <plug>(signify-motion-inner-pending)
                "        xmap ih <plug>(signify-motion-inner-visual)
                "        omap ah <plug>(signify-motion-outer-pending)
                "        xmap ah <plug>(signify-motion-outer-visual)
                "======================================================
                " signify
                " let g:signify_sign_show_text = 0
                " nnoremap <silent><leader>p :SignifyHunkDiff<cr>
                " nnoremap <silent><leader>u :SignifyHunkUndo<cr>
                " autocmd User SignifyAutocmds autocmd! signify CursorHold,CursorHoldI
                "? let g:signify_update_on_bufenter = 1
                "? let g:signify_update_on_focusgained = 1

        "++AAA2Hulk++}}}

        "++AAA2Hulk+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
                " Plug 'bps/vim-textobj-python'
                " call textobj#user#map('python', {
                "         \   'class': {
                "         \     'select-a': '<buffer>ac',
                "         \     'select-i': '<buffer>ic',
                "         \     'move-n': '<buffer>]pc',
                "         \     'move-p': '<buffer>[pc',
                "         \   },
                "         \   'function': {
                "         \     'select-a': '<buffer>af',
                "         \     'select-i': '<buffer>if',
                "         \     'move-n': '<buffer>]pf',
                "         \     'move-p': '<buffer>[pf',
                "         \   }
                "         \ })
                " xmap af <Plug>(textobj-python-function-a)
                " omap af <Plug>(textobj-python-function-a)
                " xmap if <Plug>(textobj-python-function-i)
                " omap if <Plug>(textobj-python-function-i)
                " :TextobjPythonDefaultKeyMappings  :to redefine the default
        "++AAA2Hulk++}}}


"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        " Plug 'rhysd/conflict-marker.vim' " Jump to merge conflict markers

        "--DF16----------------------------------------------------------------------------
        " Plug 'mivok/vimtodo'
        " Plug 'hsitz/VimOrganizer'

        "==!!!=============================================================================
        " Plug 'cohama/lexima.vim'
        " Bracket completion
        "Plug 'cohama/lexima.vim' " Same as delimitMate, but also completes unclosed brakcets when pressing enter for new line.
        "Plug 'Raimondi/delimitMate'
                "let delimitMate_expand_cr = 2
                "let delimitMate_expand_space = 1
        " Plug 'Raimondi/delimitMate'
        " " {{{
        "   let delimitMate_expand_cr = 2
        "   let delimitMate_expand_space = 1 " {|} => { | }
        " " }}}
        "Plug 'Townk/vim-autoclose' " No dot redo support
        "Plug 'jiangmiao/auto-pairs' " No dot redo support
        "==================================================================================
        " complements bracket completion
        " surround selections with things like quotes, parens, brakcets, etc.
        " Plug 'tpope/vim-surround'
        "==================================================================================
        " great text objects for selecting/changing parameters
        " Plug 'wellle/targets.vim'
        " Plug 'wellle/targets.vim'
        " Plug 'wellle/targets.vim'
        "==================================================================================
        " Plug 'junegunn/vim-easy-align'
        " Presuming you meant vim-lion, and it looks great. I have been using tabular,
        " Plug 'tommcdo/vim-lion'
        " let g:lion_squeeze_spaces = 1
"++AAAx++}}}
