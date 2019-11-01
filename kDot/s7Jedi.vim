
        "---------------------------------------------------------------------------------- 

        "---------------------------------------------------------------------------------- 
        let g:LanguageClient_serverCommands = {
        \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
        \ 'javascript': ['javascript-typescript-stdio'],
        \ 'javascript.jsx': ['javascript-typescript-stdio'],
        \ 'typescript': ['javascript-typescript-stdio'],
        \ 'cpp': ['clangd'],
        \ 'objc': ['clangd'],
        \ 'c': ['clangd'],
        \ 'objcpp': ['clangd']
        \ }

        noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
        noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
        noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
        noremap <silent> S :call LanguageClient_textDocument_documentSymbol()<CR>

        set omnifunc=LanguageClient#complete
        set completefunc=LanguageClient#complete
        "---------------------------------------------------------------------------------- 
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
        Plug 'davidhalter/jedi-vim'
        Plug 'zchee/deoplete-jedi'
        " let g:python_host_prog = '/full/path/to/neovim2/bin/python'
        " let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
        "---------------------------------------------------------------------------------- 
        "===================================================================================
        " Plug 'eagletmt/neco-ghc'
        "         let g:haskellmode_completion_ghc = 1
        "         autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
        "===================================================================================
        Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
                let g:deoplete#sources#go#package_dot = 1
                let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
        "===================================================================================
        Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
        Plug 'mkusher/padawan.vim'
                let $PATH=$PATH . ':' . expand('~/.config/composer/vendor/bin/')
                let g:padawan#composer_command = "/usr/bin/composer"
        "=================================================================================
        Plug 'artur-shaik/vim-javacomplete2'
                autocmd FileType java setlocal omnifunc=javacomplete#Complete
                " nnoremap <leader>cj :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
                " autocmd filetype java nnoremap <F4> :w <bar> !javac % && java -enableassertions %:p <CR>
                " imap <F3> <Plug>(JavaComplete-Imports-RemoveUnused)
                " nmap <F4> <Plug>(JavaComplete-Imports-Add)
                " nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)
                " nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
                " :setlocal omnifunc=javacomplete#Complete
                " :setlocal completefunc=javacomplete#CompleteParamsInfo
                " autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
        "=================================================================================
        "------LSP--for-DEO-unnotig---------------------------------------------------------
        " Plug 'prabirshrestha/vim-lsp'
        "=================================================================================
        Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
        Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
        "=================================================================================
        Plug 'fishbullet/deoplete-ruby'
        " Plug 'takkii/ruby-dictionary3'
        "=================================================================================
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
