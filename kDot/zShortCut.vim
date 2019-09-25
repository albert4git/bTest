
"===============================================================================================================
Shortcut format function call, removing parentheses
      \ noremap <silent> <Space>f( :call Format_funcall_drop_parens()<CR>

Shortcut convert double to single quotes at cursor
      \ nnoremap <silent> <Space>f' :call Format_quotes_singularize()<CR>

Shortcut convert single to double quotes at cursor
      \ nnoremap <silent> <Space>f" :call Format_quotes_pluralize()<CR>
"===============================================================================================================
" sin (x-2x)
"===============================================================================================================
" remove parentheses around function call arguments
function! Format_funcall_drop_parens() abort
  let cursor = winsaveview()
  execute 'normal '. s:delete_surround .'('
  execute 'normal! i '
  call winrestview(cursor)
endfunction

" convert from double quotes to single quotes
function! Format_quotes_singularize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."\"'"
  call winrestview(cursor)
endfunction

" convert from single quotes to double quotes
function! Format_quotes_pluralize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."'\""
  call winrestview(cursor)
endfunction
"===============================================================================================================
