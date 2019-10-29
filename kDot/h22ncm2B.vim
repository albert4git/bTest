""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged/')

" clang based syntax highlighting
"Plug 'arakashic/chromatica'

" search and replace in multiple files
"Plug 'brooth/far.vim'

" collaborative editing
"Plug 'Floobits/floobits-neovim'

" async ctags/gtags support
"Plug 'jsfaint/gen_tags.vim'

"""""""
" Linters
"""""""
" async linting and making - replacement for syntastic?
Plug 'neomake/neomake'
"
" 'async build and test dispatcher'
"Plug 'tpope/vim-dispatch'

" 'dispatch meets syntastic'
"Plug 'pgdouyon/vim-accio'

"""""""
" Syntastic
"""""""
Plug 'vim-syntastic/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_javascript_checkers = ["eslint"]

let g:syntastic_html_tidy_ignore_errors = [
    \"trimming empty <i>",
    \"<video> proprietary attribute \"webkit-playsinline\"",
    \]

"let OF_PATH = '/Users/benjamin.bergman/src/of_v0.9.8_osx_release/'
"let OF_LIB_PATH = OF_PATH . 'libs/openFrameworks/'
"let g:syntastic_cpp_include_dirs = [
"            \OF_LIB_PATH,
"            \OF_LIB_PATH . 'utils',
"            \OF_PATH . 'libs/glew/include',
"            \OF_PATH . 'libs/tess2/include',
"            \OF_PATH . 'libs/boost/include',
"            \OF_LIB_PATH . 'types',
"            \OF_LIB_PATH . 'math',
"            \OF_LIB_PATH . 'events',
"            \OF_PATH . 'libs/utf8cpp/include',
"            \OF_PATH . 'libs/poco/include',
"            \OF_LIB_PATH . '3d',
"            \OF_LIB_PATH . 'gl',
"            \OF_LIB_PATH . 'graphics',
"            \OF_LIB_PATH . 'communication',
"            \OF_LIB_PATH . 'app',
"            \OF_PATH . 'libs/cairo/include/cairo',
"            \OF_PATH . 'libs/glfw/include',
"            \OF_LIB_PATH . 'sound',
"            \OF_PATH . 'libs/fmodex/include',
"            \OF_LIB_PATH . 'video',
"            \]
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
"""""""
"""""""

" tag highlighting from ctags
"Plug 'c0r73x/neotags.nvim' " disabled because it was causing errors

" latex live preview
Plug 'donRaphaco/neotex', { 'for': 'tex' }

" ranger like replacement for NERDtree
"Plug 'airodactyl/neovim-ranger'

" file manager
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
map <C-f> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

" grammar etc. checker?
Plug 'fmoralesc/nlanguagetool.nvim'

"""""""
" Completion engines
"""""""
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp' " Required for ncm2

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect " See :help Ncm2PopupOpen for more information

" Completion sources
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-tern', {'do': 'npm install'}
Plug 'ncm2/nvim-typescript', {'do': './install.sh'}
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-racer' " Requires racer to be installed
Plug 'ncm2/ncm2-pyclang' " May require setting g:ncm2_pyclang#library_path to work correctly - https://github.com/ncm2/ncm2-pyclang#gncm2_pyclanglibrary_path
Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
"""""""

Plug 'airblade/vim-gitgutter'

" signify is like gitgutter but supports many VCS
"Plug 'mhinz/vim-signify'

" granular test runner
Plug 'janko-m/vim-test'

"""""""
" Airline
"""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"""""""

Plug 'iCyMind/NeoSolarized'

Plug 'AndrewRadev/linediff.vim'
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'vim-scripts/restore_view.vim'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'google/vim-searchindex'
Plug 'BenBergman/vsearch.vim' " Must be loaded after vim-searchindex
Plug 'BenBergman/VisIncr'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'matze/vim-move' " Move lines of code up or down easily with automatic indentation updating
Plug 'chrisbra/Colorizer'
Plug 'sophacles/vim-processing'
Plug 'tikhomirov/vim-glsl'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'keith/swift.vim' " Swift syntax highlighting and Syntastic support
Plug 'sirtaj/vim-openscad'
Plug 'cespare/vim-toml'
Plug 'wakatime/vim-wakatime'
Plug 'reedes/vim-wordy'
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh'
            \ }
Plug 'junegunn/fzf'

"""""""
" CtrlP
"""""""
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'j5shi/ctrlp_bdelete.vim'

let g:ctrlp_cmd = 'CtrlPBuffer'
"""""""

"""""""
" Smooth Scroll
"""""""
"Plug 'terryma/vim-smooth-scroll'
"nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"""""""

" Deal with trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
map <leader>s :StripWhitespace<CR>

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



augroup AutoCommands
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END


call ctrlp_bdelete#init()


"""""""
" Appearance
"""""""
syntax enable

set background=dark
set termguicolors
colorscheme NeoSolarized
set fillchars+=vert:│

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

set number
set cursorline
set showcmd
set scrolloff=3 " Minimum number of lines to keep above and below cursor
set splitright " Puts new vsplit windows to the right of the current
set splitbelow " Puts new split windows to the bottom of the current
"""""""


set undofile " Store undos persistently
set undolevels=1000
set undoreload=10000
set hidden " Allow switching buffers when current buffer is unsaved


"""""""
" Formatting
"""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab


" Commented out while testing vim-sleuth which should set this automatically
"autocmd FileType arduino setlocal shiftwidth=2
"autocmd FileType arduino setlocal softtabstop=4
"autocmd FileType arduino setlocal shiftwidth=4
"autocmd FileType arduino setlocal noexpandtab

let g:rustfmt_autosave = 1
"""""""


"""""""
" Language Server Protocol
"""""""
" base config taken from here: https://startupsventurecapital.com/rust-ide-repl-in-vim-11daa921a2c4
"let g:LanguageClient_autoStart = 0
"nnoremap <leader>lcs :LanguageClientStart<CR>
"
"" if you want it to turn on automatically
"" let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \}

nnoremap <F5> :call LanguageClient_contextMenu()<CR>

"noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
"noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
"noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
"noremap <silent> S :call LanugageClient_textDocument_documentSymbol()<CR>
"""""""


set ignorecase
set smartcase


set foldmethod=syntax
set foldlevelstart=100 " Don't close folds by default


set mouse=a


imap <C-c> <Esc>


" treat long lines as break lines (useful when moving around in them)
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
nnoremap <up> g<up>
nnoremap <down> g<down>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
command! -bang -nargs=* -complete=file W w<bang> <args>

nnoremap <silent> <leader>t :TagbarToggle<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

vnoremap <leader>ld :Linediff<CR>
nnoremap <leader>ld V:Linediff<CR>
noremap <leader>ldr :LinediffReset<CR>

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null
