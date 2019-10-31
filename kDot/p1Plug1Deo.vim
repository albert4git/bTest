

        "---------------------------------------------------------------------------------- 
        "---COMP-1------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 


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
        Plug 'cwfoo/vim-text-omnicomplete'
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        "---------------------------------------------------------------------------------- 
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        Plug 'davidhalter/jedi-vim'
        Plug 'zchee/deoplete-jedi'
        " let g:python_host_prog = '/full/path/to/neovim2/bin/python'
        " let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
        "---------------------------------------------------------------------------------- 
        Plug 'zchee/deoplete-clang'
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



        "---------------------------------------------------------------------------------- 
        "---COMP-2------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 


        "==================================================================================
        "-----COMPL-3----------------------------------------------------------------------
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

        "===COMPL-3.2===============================================================================
        autocmd! FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd! FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd! FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd! FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd! FileType python setlocal omnifunc=jedi#completions
        autocmd! FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd! FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd! FileType haskell setlocal omnifunc=necoghc#omnifunc

        "--------------------------------------------------------------------------------
        autocmd! FileType python setlocal completeopt=preview
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
        "==================================================================================
        "-----COMPL-4----------------------------------------------------------------------
        "==================================================================================

