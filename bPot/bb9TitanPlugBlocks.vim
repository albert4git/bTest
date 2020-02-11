"++AAA++Syntastic++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'scrooloose/syntastic'
        let g:syntastic_enable_signs          = 1
        let g:syntastic_enable_highlighting   = 1
        let g:syntastic_cpp_check_header      = 1
        let g:syntastic_enable_balloons       = 1
        let g:syntastic_echo_current_error    = 1
        let g:syntastic_check_on_wq           = 0
        let g:syntastic_error_symbol          = 'sR'
        let g:syntastic_warning_symbol        = 'sW'
        let g:syntastic_style_error_symbol    = ':('
        let g:syntastic_style_warning_symbol  = ':('
        let g:syntastic_vim_checkers          = ['vint']
        let g:syntastic_elixir_checkers       = ['elixir']
        let g:syntastic_python_checkers       = ['flake8']
        let g:syntastic_javascript_checkers   = ['eslint']
        let g:syntastic_enable_elixir_checker = 0
"++bbb++++++++++++++++++++}}}
"++AAA++#ALEPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        Plug 'w0rp/ale'
        " let g:ale_enabled = 1
        " let g:ale_completion_enabled = 0
        " let g:ale_lint_delay = 200   " millisecs
        " let g:ale_lint_on_enter = 1
        " let g:ale_lint_on_filetype_changed = 1
        " let g:ale_lint_on_save = 1
        " let g:ale_fix_on_save = 1
        " let g:ale_set_loclist = 0
        " let g:ale_set_quickfix = 1
        " let g:ale_virtualtext_prefix ='>:>'
        "----------------------------------------------------------------------------------
        " let g:ale_open_list = 1
        " let g:ale_lint_on_text_changed = 'always'  " never/insert/normal/always

        "----------------------------------------------------------------------------------
        " Linter (only on save)
        let g:ale_lint_on_text_changed = 'never'
        let g:ale_lint_on_insert_leave = 1
        let g:ale_lint_on_save = 0
        let g:ale_lint_on_enter = 0
        let g:ale_virtualtext_cursor = 1
        "----------------------------------------------------------------------------------
        let g:ale_set_signs = 1
        let g:ale_set_quickfix = 1
        let g:ale_sign_column_always = 1
        let g:ale_sign_style_error = 'SE'
        let g:ale_sign_style_warning = 'SW'
        let g:ale_sign_error = 'A>'
        let g:ale_sign_warning = 'A-'
        let g:ale_sign_info = 'aI'
        let g:ale_linters = {
                                \   'javascript': ['eslint'],
                                \   'jsx': ['eslint'],
                                \   'python': ['flake8'],
                                \}

        let g:ale_fixers = {
                                \'javascript': ['eslint'],
                                \'ruby': ['rubocop'],
                                \'python': ['yapf', 'isort'],
                                \}
        "==================================================================================
        nmap <silent> [e <Plug>(ale_previous_wrap)
        nmap <silent> ]e <Plug>(ale_next_wrap)

        "==================================================================================
        "----------------------------------------------------------------------------------
        " let g:ale_emit_conflict_warnings = 0
        " let g:ale_lint_on_text_changed = 'never'
        "----------------------------------------------------------------------------------
        " Plug 'scrooloose/syntastic'
"++bbb+++++++++++++++++++++++++++++++++++EALE+++++}}}
"++AAA++LanguageClient++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let diagnosticsDisplaySettings={
                                \       '1': {
                                \           'name': 'Error',
                                \           'texthl': 'customStar',
                                \           'signText': 'cR',
                                \           'signTexthl': 'customYR',
                                \           'virtualTexthl': 'custRed',
                                \       },
                                \       '2': {
                                \           'name': 'Warning',
                                \           'texthl': 'customHash',
                                \           'signText': 'cW',
                                \           'signTexthl': 'customPi',
                                \           'virtualTexthl': 'custYellow',
                                \       },
                                \       '3': {
                                \           'name': 'Information',
                                \           'texthl': 'customPlus',
                                \           'signText': 'cI',
                                \           'signTexthl': 'customDP',
                                \           'virtualTexthl': 'custGreen',
                                \       },
                                \       '4': {
                                \           'name': 'Hint',
                                \           'texthl': 'ALEInfo',
                                \           'signText': 'cH',
                                \           'signTexthl': 'custGreen',
                                \       },
                                \  }

        let g:LanguageClient_diagnosticsDisplay=diagnosticsDisplaySettings
        " let g:LanguageClient_diagnosticsEnable = 0
        let g:LanguageClient_windowLogMessageLevel ='Error'
        nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
        nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
        nnoremap <silent> <F12> :call LanguageClient#textDocument_rename()<CR>
        nnoremap <F10> :call LanguageClient_contextMenu()<CR>
"+++++++++++++++++++++++++++++++++++++++++++++bbb++}}}
"==AAA==#LSPPLUG===#SATURN==============================================================================={{{
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "+AltDeo2+ Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'prabirshrestha/vim-lsp'
        let g:lsp_signs_enabled = 1
        let g:lsp_signs_priority = 9
        "---------------------------------------
        let g:lsp_virtual_text_enabled = 1
        let g:lsp_virtual_text_prefix = " >!> "
        let g:lsp_highlights_enabled = 1
        let g:lsp_use_event_queue = 1
        let g:lsp_highlight_references_enabled = 1
        let g:lsp_signature_help_enabled = 1
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        let g:lsp_signs_priority_map = {
                \'LspError': 11,
                \'LspWarning': 7,
                \'clangd_LspWarning': 11,
                \'clangd_LspInformation': 11
                \}
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        function! s:on_lsp_buffer_enabled() abort
                setlocal omnifunc=lsp#complete
                setlocal signcolumn=yes
                nmap <buffer> gd <plug>(lsp-definition)
                nmap <buffer> <f2> <plug>(lsp-rename)
        endfunction
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        augroup lsp_install
                au!
                autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
        augroup END
        "==============:LspStatus==================================================
        if executable('pyls')
                " pip install python-language-server
                "==================================================
                au User lsp_setup call lsp#register_server({
                                        \ 'name': 'pyls',
                                        \ 'cmd': {server_info->['pyls']},
                                        \ 'whitelist': ['python'],
                                        \ })
        endif
        "==========================================================================
        Plug 'prabirshrestha/asyncomplete.vim'
        Plug 'prabirshrestha/asyncomplete-lsp.vim'
        " g:asyncomplete_auto_completeopt
"==bbb=========================}}}
"**AAA**#TITAN**********************************************************************************************{{{
        "----------------------------------------------------------------------------------
        " Java-completion
        " Plug 'junegunn/vim-javacomplete2', {'for': 'java'} " Load only for java files
        Plug 'artur-shaik/vim-javacomplete2'
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
        " Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
        " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

        "=================================================================================
        Plug 'fishbullet/deoplete-ruby'
        "Plug 'takkii/ruby-dictionary3'
        Plug 'HerringtonDarkholme/deoplete-typescript'

        "=================================================================================
        Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
        Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
                " Add extra filetypes
                let g:tern#filetypes=['jsx', 'javascript.jsx', 'vue']
                " Use tern_for_vim
                let g:tern#command=['tern']
                let g:tern#arguments=['--persistent']
                " Include documentation strings (if found) in the result data
                let g:deoplete#sources#ternjs#docs=1
                " Use a case-insensitive compare
                let g:deoplete#sources#ternjs#case_insensitive=1
                " Sort the result set
                let g:deoplete#sources#ternjs#sort=1
                " Ignore JavaScript keywords when completing
                let g:deoplete#sources#ternjs#include_keywords=0
"**bbb************************}}}
"++AAA++vim-lsp++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'prabirshrestha/asyncomplete.vim'
        Plug 'prabirshrestha/async.vim'
        Plug 'prabirshrestha/vim-lsp'
        Plug 'prabirshrestha/asyncomplete-lsp.vim'

        if executable('pyls')
            " pip install python-language-server
            au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'whitelist': ['python'],
                \ })
        endif

        inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
        inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
        inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"+++++++++++++++++++++++++++++++++++AAA++++++}}}
