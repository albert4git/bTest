
call plug#begin('~/.config/nvim/plugged/')
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

    autocmd BufEnter * call ncm2#enable_for_buffer()
    set completeopt=noinsert,menuone,noselect
    set shortmess+=c

    inoremap <c-c> <ESC>

    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    Plug 'ncm2/ncm2-match-highlight'

    Plug 'ncm2/ncm2-ultisnips'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    inoremap <silent> <expr> <CR> ((pumvisible() && empty(v:completed_item)) ?  "\<c-y>\<cr>" : (!empty(v:completed_item) ? ncm2_ultisnips#expand_or("", 'n') : "\<CR>" ))

    " c-j c-k for moving in snippet
    imap <expr> <c-u> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_expand)", 'm')
    smap <c-u> <Plug>(ultisnips_expand)
    let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
    let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
    let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
    let g:UltiSnipsRemoveSelectModeMappings = 0

    Plug 'ncm2/ncm2-html-subscope'
    Plug 'ncm2/ncm2-markdown-subscope'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-jedi'
    Plug 'ncm2/ncm2-pyclang'
    Plug 'ncm2/ncm2-tern'
    Plug 'ncm2/ncm2-cssomni'

    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
    let g:languageclient_servercommands = {
                \ 'vue': ['vls'],
                \ 'rust': ['rls'],
                \ }

    " read
    " https://github.com/autozimu/LanguageClient-neovim/pull/514#issuecomment-404463033
    " for contents of settings.json for vue-language-server
    let g:LanguageClient_settingsPath = $WORKSPACE_DIR . '/.vim/settings.json'
    let g:LanguageClient_completionPreferTextEdit = 1
    autocmd BufNewFile,BufRead *.vue set filetype=vue
    autocmd filetype vue LanguageClientStart

    " the suddennly popup of diagnostics sign is kind of annoying
    let g:LanguageClient_diagnosticsSignsMax = 0

    " " for debugging LanguageClient-neovim
    " set noshowmode
    " inoremap <silent> <c-q> <esc>:<c-u>q!<cr>
    " let g:LanguageClient_loggingFile = '/tmp/lc.log'
    " let g:LanguageClient_loggingLevel = 'DEBUG'

    " markdown syntax highlight, theme
    Plug 'morhetz/gruvbox'
    Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
call plug#end()

set background=dark
colorscheme gruvbox
set number
set relativenumber
