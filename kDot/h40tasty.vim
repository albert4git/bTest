" put Plug declaration first
call plug#begin('~/.vim/plugged')
Plug 'patstockwell/vim-monokai-tasty'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'styled-components/vim-styled-components'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:vim_monokai_tasty_italic = 1                    " allow italics, set this before the colorscheme
colorscheme vim-monokai-tasty                         " set the colorscheme

" Optional themes for airline/lightline
let g:airline_theme='monokai_tasty'                   " airline theme
let g:lightline = { 'colorscheme': 'monokai_tasty' }  " lightline theme

" from https://www.reddit.com/r/vim/comments/6z4aau/how_to_stop_vim_from_autohighlighting_italics_in/
" `What` will print out the syntax group that the cursor is currently above.
command! What echo synIDattr(synID(line('.'), col('.'), 1), 'name')
