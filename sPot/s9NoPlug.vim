
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
