set encoding=utf-8
scriptencoding utf-8

if &compatible
  set nocompatible
endif

"==========================================================================================

let g:python3_host_prog = '/usr/bin/python3'

"==========================================================================================
" Your minimal init.vim/vimrc
set runtimepath+=~/.config/nvim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 0

function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction "}}}

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
"==========================================================================================
