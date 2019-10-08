        "-------------------------------------------------------------------------------- 
        "-------------------------------------------------------------------------------- 
        "-------------------------------------------------------------------------------- 

let g:jedi#show_call_signatures = "1"
let g:jedi#popup_on_dot = 1
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#completions_enabled = 1
        "--------------------------------------------------------------------------------
        "---KKK---MMM--------------------------------------------------------------------
        "--------------------------------------------------------------------------------
        "--let g:jedi#completions_command = "<C-Space>"
        " let g:jedi#documentation_command = "gj"
        " let g:jedi#completions_command = "<C-z>"
        " let g:jedi#use_splits_not_buffers = "left"
        " let g:jedi#popup_on_dot = 0
        " let g:jedi#popup_on_dot = 1
        " let g:jedi#goto_definitions_command = ""
        " let g:jedi#usages_command = "<leader>n"
        " let g:jedi#rename_command = "<leader>r"
        " let g:jedi#completions_enabled = 1
        " let g:jedi#popup_select_first = 1
        " let g:jedi#show_call_signatures = "1"
        " let g:jedi#auto_close_doc = 0  " close preview window after completion
        "------------------------------------------------------------------------ 

        "-------------------------------------------------------------------------------- 
        inoremap <silent><expr> <c-space>
                                \ pumvisible() ? "\<C-n>" :
                                \ <SID>check_back_space() ? "\<TAB>" :
                                \ deoplete#manual_complete()

        function! s:check_back_space() abort "{{{
                let col = col('.') - 1
                return !col || getline('.')[col - 1]  =~ '\s'
        endfunction"}}}
        "-------------------------------------------------------------------------------- 

        "-------------------------------------------------------------------------------- 


        "-------------------------------------------------------------------------------- 
        let g:deoplete#enable_smart_case = 1

        let g:neosnippet#enable_snipmate_compatibility = 1

        imap <C-@>     <Plug>(neosnippet_expand_or_jump) " works like <C-SPACE>
        smap <C-@>     <Plug>(neosnippet_expand_or_jump) " works like <C-SPACE>
        xmap <C-@>     <Plug>(neosnippet_expand_target)  " works like <C-SPACE>
        " inoremap <silent> <CR>   <C-r>=<SID>my_cr_function()<CR>
        inoremap <silent> <CR>   <C-r>=<SID>my_cr_function()<CR>

        imap <expr><TAB>
        \ pumvisible() ? "\<C-n>" :
        \ neosnippet#expandable_or_jumpable() ?
        \    neosnippet#mappings#expand_or_jump_impl() : "\<TAB>"
        smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \    neosnippet#mappings#expand_or_jump_impl() : "\<TAB>"V

        function! s:my_cr_function()
        return pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
        endfunction

        if has('conceal')
        set conceallevel=2 concealcursor=i
        endif


        " let g:deoplete_disable_auto_complete=1
        " autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
        " inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
