

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }


"noremap <leader>g :YcmCompleter GoToImprecise<CR>
noremap <leader>gg <esc>:YcmCompleter GoTo<CR>
noremap <leader>gi <esc>:YcmCompleter GoToImprecise<CR>
noremap <leader>gf <esc>:YcmCompleter FixIt<CR>
noremap <leader>st <esc>:YcmCompleter GetType<CR>
noremap <leader>si <esc>:YcmCompleter GetTypeImprecise<CR>

let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_complete_in_comments=1

let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_insertion=1

" let g:ycm_server_python_interpreter='/usr/bin/python3'
" let g:ycm_global_ycm_extra_conf='~/.config/nvim/ycm_extra_conf.py'
" let g:ycm_extra_conf_globlist = ['~/wlk/*', '~/doc/*','~/dev/*','~/uni/*'] "  ,'!~/*'
"let g:ycm_rust_src_path='/data/programming/rustc-1.7.0/src'
"--------------------------------------------------------------------------------- 
set completeopt=menu
"--------------------------------------------------------------------------------- 
" let g:ycm_key_list_select_completion=['<C-n>']  ", '<Down>']
" let g:ycm_key_list_previous_completion=['<C-p>']  ", '<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_server_log_level = 'info'

set completeopt=menuone,preview
"let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'unite' : 1,
        \ 'vimwiki' : 1,
        \ 'infolog' : 1,
        \ 'mail' : 1
        \}
"/ Valloric/YouCompleteMe {
let g:ycm_error_symbol = '>'
let g:ycm_warning_symbol = '•'
nnoremap <leader>vvdd :YcmCompleter GoTo<CR>
