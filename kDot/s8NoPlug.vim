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
