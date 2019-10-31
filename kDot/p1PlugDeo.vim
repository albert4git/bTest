
        "==================================================================================
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        let g:deoplete#enable_at_startup = 1
        let g:deoplete_disable_auto_complete=1
        "---------------Zelenski-----------------------------------------------------------
        " If you want to trigger deoplete manually, see also
        " deoplete-options-auto_complete, which should be 1 then
        " set to 1 if you want to disable autocomplete
        let g:deoplete#disable_auto_complete = 0
        let g:deoplete#auto_complete_start_length=1
        " let g:autocomplete_deoplete = 'deoplete'

        "===DEOPLETE-CLANG=========================================================================
        Plug 'zchee/deoplete-clang'
        let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-6.0/lib/libclang.so.1"
        let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
        let g:deoplete#sources#clang#sort_algo = 'priority' " alphabetical

        "----------------------------------------------------------------------------------
        " Plugin key-mappings.
        inoremap <expr><C-g>     deoplete#undo_completion()
        inoremap <expr><C-l>     deoplete#refresh()
        " inoremap <expr><C-h>     deoplete#smart_close_popup()."\<C-h>"
        inoremap <expr><C-k>     deoplete#smart_close_popup()
        inoremap <C-space>     <Esc>a
