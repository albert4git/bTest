        "==================================================================================
        Plug 'ncm2/ncm2'
        Plug 'ncm2/ncm2-bufword'
        Plug 'ncm2/ncm2-jedi'
        Plug 'ncm2/ncm2-ultisnips'
        Plug 'ncm2/ncm2-html-subscope'
        Plug 'ncm2/ncm2-match-highlight'
        Plug 'ncm2/ncm2-markdown-subscope'
        Plug 'ncm2/ncm2-pyclang'
        Plug 'ncm2/ncm2-tern'
        Plug 'ncm2/ncm2-cssomni'

        " NOTE: you need to install completion sources to get completions. Check
        " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
        Plug 'ncm2/ncm2-bufword'
        Plug 'ncm2/ncm2-path'
        Plug 'prabirshrestha/vim-lsp'
        Plug 'ncm2/ncm2-vim-lsp'
        "==================================================================================


        " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
        inoremap <c-c> <ESC>

        " When the <Enter> key is pressed while the popup menu is visible, it only
        " hides the menu. Use this mapping to close the menu and also start a new
        " line.
        inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

        " Use <TAB> to select the popup menu:
        " inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
        " inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

        " wrap existing omnifunc
        " Note that omnifunc does not run in background and may probably block the
        " editor. If you don't want to be blocked by omnifunc too often, you could
        " add 180ms delay before the omni wrapper:
        "  'on_complete': ['ncm2#on_complete#delay', 180,
        "               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
        au User Ncm2Plugin call ncm2#register_source({
                \ 'name' : 'css',
                \ 'priority': 9,
                \ 'subscope_enable': 1,
                \ 'scope': ['css','scss'],
                \ 'mark': 'css',
                \ 'word_pattern': '[\w\-]+',
                \ 'complete_pattern': ':\s*',
                \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
                \ })

        " enable ncm2 for all buffers
        autocmd BufEnter * call ncm2#enable_for_buffer()
        " :help Ncm2PopupOpen for more information
        set completeopt=noinsert,menuone,noselect

        " suppress the annoying 'match x of y', 'The only match' and 'Pattern not
        " found' messages
        set shortmess+=c

        let g:ncm2#complete_length = [[1,1], [7,1]]

        inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or(lexima#expand('<LT>CR>', 'i'), 'n')
        " c-j c-k for moving in snippet
        imap <expr> <c-u> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_expand)", 'm')
