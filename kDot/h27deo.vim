
call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go'
Plug 'Shougo/denite.nvim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'plasticboy/vim-markdown'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-repeat'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'triglav/vim-visual-increment'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let g:solarized_visibility='low'
syntax on
set nu
" set background=light
" colorscheme  badwolf
colorscheme  desert

let mapleader = "\<Space>"

"airline
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1

"easymotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1

"ctrlp
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_use_caching = 0
let g:ctrlp_cache_dir = $HOME.'/.local/.cache/ctrlp'

"vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1

set completeopt=menu,preview,longest
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = "omnifunc"
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
inoremap <expr><TAB> pumvisible()?"\<C-n>":"\<TAB>"
inoremap <expr><S-TAB> pumvisible()?"\<C-p>":"\<TAB>"
