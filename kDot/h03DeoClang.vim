
call plug#begin()
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/lib/clang'
let g:deoplete#sources#clang#std#cpp = 'c++11'
let g:deoplete#sources#clang#sort_algo = 'priority'
let g:deoplete#sources#clang#clang_complete_database = '/home/pacov/code/build'
