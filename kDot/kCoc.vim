
        "------------------------------------------------------------------------------------------
        " Or latest tag
        " Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
        " Or build from source code by use yarn: https://yarnpkg.com
        " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
        "---POC?------------------------------------------------------------------------------------
        Plug 'prabirshrestha/vim-lsp'
        let g:lsp_signs_enabled = 1         " enable signs
        let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
        let g:lsp_signs_error = {'text': 'eR'}
        let g:lsp_signs_warning = {'text': '‼' } " icons require GUI
        let g:lsp_signs_hint = {'text': '!?' }
        augroup LspEFM
                au!
                autocmd User lsp_setup call lsp#register_server({
                                        \ 'name': 'efm-langserver-erb',
                                        \ 'cmd': {server_info->['efm-langserver', '-c=/path/to/your/config.yaml']},
                                        \ 'whitelist': ['eruby', 'markdown'],
                                        \ })
        augroup END
        "------------------------------------------------------------------------------------------

        "------------------------------------------------------------------------------------------
        if executable('solargraph')
                " gem install solargraph
                au User lsp_setup call lsp#register_server({
                                        \ 'name': 'solargraph',
                                        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
                                        \ 'initialization_options': {"diagnostics": "true"},
                                        \ 'whitelist': ['ruby'],
                                        \ })
        endif
        "------------------------------------------------------------------------------------------
        " After vim-lsp, etc
        Plug 'ryanolsonx/vim-lsp-javascript'
        if executable('typescript-language-server')
                au User lsp_setup call lsp#register_server({
                                        \ 'name': 'javascript support using typescript-language-server',
                                        \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
                                        \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
                                        \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
                                        \ })
        endif
        "------------------------------------------------------------------------------------------
        if executable('css-languageserver')
        au User lsp_setup call lsp#register_server({
                \ 'name': 'css-languageserver',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
                \ 'whitelist': ['css', 'less', 'sass'],
                \ })
        endif
        "------------------------------------------------------------------------------------------
        au User lsp_setup call lsp#register_server({                                    
                                \ 'name': 'php-language-server',                                            
                                \ 'cmd': {server_info->['php', expand('~/.vim/plugged/php-language-server/bin/php-language-server.php')]},
                                \ 'whitelist': ['php'],                                                     
                                \ })
        "------------------------------------------------------------------------------------------
        " After vim-lsp, etc
        Plug 'ryanolsonx/vim-lsp-python'
        if executable('pyls')
                au User lsp_setup call lsp#register_server({
                                        \ 'name': 'pyls',
                                        \ 'cmd': {server_info->['pyls']},
                                        \ 'whitelist': ['python'],
                                        \ 'workspace_config': {'pyls': {'plugins': {'pydocstyle': {'enabled': v:true}}}}
                                        \ })
        endif
        "------------------------------------------------------------------------------------------
        if executable('java') && filereadable(expand('~/lsp/org.eclipse.lsp4xml-0.3.0-uber.jar'))
                au User lsp_setup call lsp#register_server({
                                        \ 'name': 'lsp4xml',
                                        \ 'cmd': {server_info->[
                                        \     'java',
                                        \     '-noverify',
                                        \     '-Xmx1G',
                                        \     '-XX:+UseStringDeduplication',
                                        \     '-Dfile.encoding=UTF-8',
                                        \     '-jar',
                                        \     expand('~/lsp/org.eclipse.lsp4xml-0.3.0-uber.jar')
                                        \ ]},
                                        \ 'whitelist': ['xml']
                                        \ })
        endif
        "------------------------------------------------------------------------------------------


"===============================================================================================================
" " Show all diagnostics
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"===============================================================================================================

"===============================================================================================================
" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

"===============================================================================================================
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

