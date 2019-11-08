set termguicolors
nnoremap <silent> <Space>z :<C-u>Tree -columns=mark:git:indent:icon:filename:size
      \ -split=vertical
      \ -direction=topleft
      \ -winwidth=40
      \ -listed
      \ `expand('%:p:h')`<CR>

call tree#custom#option('_', {
      \ 'root_marker': '',
      \ })

autocmd FileType tree call s:set_tree()
func! s:set_tree() abort
    nnoremap <silent><buffer><expr> > tree#action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> * tree#action('toggle_select_all')
    nnoremap <silent><buffer><expr> s tree#action('drop', 'split')
    nnoremap <silent><buffer><expr> <CR> tree#action('drop')
    nnoremap <silent><buffer><expr> <Tab> tree#action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> <C-l> tree#action('redraw')
    nnoremap <silent><buffer><expr> <C-g> tree#action('print')
    nnoremap <silent><buffer><expr> E tree#action('open', 'vsplit')
    nnoremap <silent><buffer><expr> o tree#action('open_or_close_tree')
    nnoremap <silent><buffer><expr> R tree#action('open_tree_recursive')
    nnoremap <silent><buffer><expr> r tree#action('rename')
    nnoremap <silent><buffer><expr> x tree#action('execute_system')
    nnoremap <silent><buffer><expr> N tree#action('new_file')
    nnoremap <silent><buffer><expr> h tree#action('cd', ['..'])
    nnoremap <silent><buffer><expr> cd tree#action('cd', '.')
    nnoremap <silent><buffer><expr> \ tree#action('cd', getcwd())
    nnoremap <silent><buffer><expr> ~ tree#action('cd')
    nnoremap <silent><buffer><expr> l tree#action('open')
    nnoremap <silent><buffer><expr> yy tree#action('yank_path')
endf
