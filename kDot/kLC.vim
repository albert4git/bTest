
let g:LanguageClient_windowLogMessageLevel='Warning'
"  = "Log"  " Error | Warning | Info | Log

:call LanguageClient_setLoggingLevel('DEBUG')
:LanguageClientStart
"--------------------------------------------------------------------------------- 

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'w0rp/ale'

" language client
let g:LanguageClient_serverCommands = {
    \ 'haskell': ['hie', '--lsp'],
    \ 'c': ['ccls', '--log-file=/tmp/ccls.log'],
    \ 'cpp': ['ccls', '--log-file=/tmp/ccls.log'],
    \ 'python': ['pyls', '--log-file=/tmp/pyls.log'],
    \ }

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete_disable_auto_complete=1
call deoplete#custom#buffer_option('auto_complete', v:false)
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:deoplete#sources = {}
let g:deoplete#sources.cpp = ['LanguageClient']
let g:deoplete#sources.python = ['LanguageClient']
let g:deoplete#sources.python3 = ['LanguageClient']
let g:deoplete#sources.rust = ['LanguageClient']
let g:deoplete#sources.c = ['LanguageClient']
let g:deoplete#sources.vim = ['vim']

" ale
let g:ale_sign_column_always = 0
let g:ale_emit_conflict_warnings = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
