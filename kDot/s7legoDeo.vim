
        " Java completion
        autocmd FileType java setlocal omnifunc=javacomplete#Complete
        autocmd FileType java JCEnable

        "==================================================================================
        " Config Language Server

        " let g:LanguageClient_serverCommands = {
        "                         \ 'haskell': ['hie', '--lsp'],
        "                         \ 'c': ['ccls', '--log-file=/tmp/ccls.log'],
        "                         \ 'cpp': ['ccls', '--log-file=/tmp/ccls.log'],
        "                         \ 'python': ['pyls', '--log-file=/tmp/pyls.log'],
        "                         \ }

        "===DEOPLETE-CLANG==========================================================================
        let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-6.0/lib/libclang.so.1"
        let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
        let g:deoplete#sources#clang#sort_algo = 'priority' " alphabetical
        "---------------------------------------------------------------------------------- 
        let g:LanguageClient_serverCommands = {
        \ 'cpp': ['clangd'],
        \ 'c': ['ccls'],
        \ 'python': ['pyls'],
        \ 'go': ['bingo'],
        \ 'ruby': ['solargraph', 'stdio'],
        \ 'vue': ['vls'],
        \ 'rust': ['rls'],
        \ 'javascript.jsx': ['js-langserver', '--stdio'],
        \ }
        nnoremap <F5> :call LanguageClient_contextMenu()<CR>

        let g:LanguageClient_autoStart=1
        " let g:LanguageClient_autoStop=1
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"------------------------------------------------------------------------- 
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"::::::::::::::::::::::::::::DEO-START::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "call deoplete#custom#option('refresh_always', v:true)
        "call deoplete#custom#source('jedi', 'is_debug_enabled', 1)
        "call deoplete#enable_logging('DEBUG', 'deoplete.log')
        "-------------------------------------------------------------------------------- 
        let g:deoplete#enable_at_startup = 1
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
        "--------------------------------------------------------------------------------
        let g:deoplete#skip_chars = ['(', ')', '<', '>']
        let g:deoplete#tag#cache_limit_size = 800000
        let g:deoplete#file#enable_buffer_path = 1
        "-------------------------------------------------------------------------------- 
        let g:deoplete#sources#jedi#statement_length = 30
        let g:deoplete#sources#jedi#show_docstring = 1
        let g:deoplete#sources#jedi#short_types = 1
        "---------------Zelenski-----------------------------------------------------------
        " set to 1 if you want to disable autocomplete
        let g:deoplete#disable_auto_complete = 0
        let g:deoplete#auto_complete_start_length=1
        call deoplete#custom#source('_', 'min_pattern_length', 1)
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


