call plug#begin('~/.local/share/nvim/plugged')
Plug 'liuchengxu/vista.vim'
Plug 'itchyny/lightline.vim'
call plug#end()


let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
  \   'left':  [ [ 'mode', 'paste' ],
  \              [ 'readonly', 'filename', 'modified' ],
  \              [ 'method' ] ],
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
  \ },
  \ 'component_function': {
  \   'method': 'NearestMethodOrFunction'
  \ },
  \ }

set tags=./tags;
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']

" Show current method name in lightline
function! NearestMethodOrFunction() abort
  let l:method = get(b:, 'vista_nearest_method_or_function', '')
  if l:method != ''
    let l:method = '[' . l:method . ']'
  endif
  return l:method
endfunction
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
