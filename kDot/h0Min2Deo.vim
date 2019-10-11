call plug#begin('~/.config/nvim/plugged/')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete_disable_auto_complete=1
call plug#end()
