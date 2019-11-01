call plug#begin('~/.config/nvim/plugged/')
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': './install.sh'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jalvesaq/nvim-r'
""" Deoplete config
" automatically start{{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['file', 'buffer']
let g:deoplete#sources.python = ['LanguageClient', 'jedi', 'ultisnips']
let g:deoplete#sources.python3 = ['LanguageClient', 'jedi', 'ultisnips']
let g:deoplete#sources.rust = ['LanguageClient', 'ultisnips']
let g:deoplete#sources.tex = ['ultisnips', 'omni']
let g:deoplete#sources.vim = ['vim', 'ultisnips']
let g:deoplete#sources.r = ['omni', 'ultisnips']
"let g:deoplete#sources.r = ['LanguageClient', 'ultisnips']

""" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

""" deoplete-racer config
let g:deoplete#sources#rust#racer_binary='/usr/local/bin/racer'
let g:deoplete#sources#rust#rust_source_path='$HOME/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

" put snippets at the top of completion menu
"call deoplete#custom#source('ultisnips', 'rank', 1000)

call deoplete#custom#var('omni', 'input_patterns', {
    \ 'r': '[^. *\t]\.\w*',
\})
""" Deoplete and vimtex config
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex' : g:vimtex#re#deoplete,
\})
