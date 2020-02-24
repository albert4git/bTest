" Directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged/')

Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-scriptease', {'type': 'opt'}
Plug 'tpope/vim-markdown' " installed for a single purpose of having syntax highlighting inside fenced blocks
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist' " Finding files semantically
Plug 'radenling/vim-dispatch-neovim'
Plug 'junegunn/fzf'
Plug 'mhinz/vim-grepper'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'Valloric/ListToggle'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'buztard/vim-rel-jump'
Plug 'RRethy/vim-illuminate' " highlight other uses of current word under the cursor
Plug 'chr4/nginx.vim' " nginx syntax plugin
Plug 'hashivim/vim-terraform' " vim terraform plugin
Plug 'darthmall/vim-vue' " Vue file syntax highlighter

Plug 'w0rp/ale'

" UI goodies
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-solarized8'

" Left sidebar
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'

Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'

" Comments
Plug 'tyru/caw.vim'
Plug 'Shougo/context_filetype.vim'


" v2 of the nvim-completion-manager.
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-ultisnips'

" Go
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' }
Plug 'jodosha/vim-godebug'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'trayo/vim-ginkgo-snippets'

" Rust
Plug 'rust-lang/rust.vim'

" LanguageServer client for NeoVim.
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }

" Initialize plugin system
call plug#end()

" Truecolors support
set termguicolors

" Enable syntax highlighting
syntax enable
syntax on

" Enable filetype plugin
filetype plugin indent on

" Fixing backspace issue
set backspace=2

" opening a new file when the current buffer has unsaved changes causes
" files to be hidden instead of closed
set hidden

set showcmd             " show command in bottom bar"
set cursorline          " highlight current line"
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Writes the content of the file automatically if you call :make
set autowrite

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Tab, space and end of line symbols
" use `:set list' command to enable
" use `:set nolist' command to disable
set listchars=eol:⏎,tab:\┆\ ,trail:␠,nbsp:⎵

" Yank to system clipboard
" set clipboard=unnamed

" CTRL+Q exit
map Q :q<CR>

" Windows splitting
map <C-w>- :split<CR>
map <C-w>\ :vsplit<CR>

" move vertically by visual line
" if there's a very long line that gets visually wrapped to two lines, j won't
" skip over the "fake" part of the visual line in favor of the next "real" line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" Set zsh shell
set shell=/bin/zsh

" This option forces vim to source .vimrc file if it present in working directory,
" thus providing a place to store project-specific configuration
set exrc

" This option will restrict usage of some commands in non-default .vimrc files;
" commands that write to file or execute shell commands are not allowed and
" map commands are displayed.
set secure

" yank to system clipboard
set clipboard=unnamedplus

" *****************************************************************************
" ncm2 settings
" *****************************************************************************
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
noremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" *****************************************************************************
" LanguageClient-neovim
" *****************************************************************************
" Enable for debug purposes if needed:
" let g:LanguageClient_loggingFile = '/tmp/lc.log'
" let g:LanguageClient_loggingLevel = 'DEBUG'

" If ALE is used, there is little sense to leave diagnostics errors
let g:LanguageClient_diagnosticsEnable = 0

let g:LanguageClient_rootMarkers = {
  \ 'go': ['.git', 'go.mod'],
  \ }

" Language server commands
" Use
" \ 'go': ['bingo', '--trace', '--logfile', '/tmp/bingo.log'],
" for debugging purposes
let g:LanguageClient_serverCommands = {
  \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
  \ 'go': ['bingo'],
  \ 'typescript': ['javascript-typescript-stdio'],
  \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <c-]> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

" *****************************************************************************
" GUI
" *****************************************************************************

" Clear vertical split character
set fillchars+=vert:\

highlight Comment cterm=italic

" Truecolors support
set termguicolors

" Show status even for only 1 window open
" 0: never
" 1: only if there are at least two windows (this one is the default)
" 2: always
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'cool'
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:airline_theme = 'cool'

let g:nightshift = 1

" toggle between light and dark themes
function! ToggleNightMode()
  if (g:nightshift == 0)
    let g:nightshift = 1
    set background=dark
    let g:airline_theme = 'cool'
  else
    let g:nightshift = 0
    set background=light
    let g:airline_theme = 'sol'
  endif
  :AirlineRefresh
endfunc

nmap ,d :call ToggleNightMode()<CR>

set background=dark    " Setting dark mode
colorscheme solarized8
colorscheme desert
" *****************************************************************************
" Line number toggler
" *****************************************************************************
" Set line numbers
nmap <C-L> :call ToggleNumber()<CR>

" toggle between number and relativenumber
function! ToggleNumber()
  if (&number == 1)
    if (&relativenumber != 1)
      set relativenumber
    else
      set norelativenumber
      set nonumber
    endif
  else
    set number
  endif
endfunc

" *****************************************************************************
" Folding
" *****************************************************************************
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" *****************************************************************************
" backup, swap, and undo files
" *****************************************************************************

" Save your backup files to a less annoying place than the current directory.
" If you have .nvim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.nvim/backup or .
if isdirectory($HOME . '.config/nvim/backup') == 0
  :silent !mkdir -p ~/.config/nvim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.config/nvim/backup/
set backupdir^=./.nvim-backup/
set backup

" Save your swap files to a less annoying place than the current directory.
" If you have .nvim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.nvim/swap, ~/tmp or .
if isdirectory($HOME . '/.config/nvim/swap') == 0
  :silent !mkdir -p ~/.config/nvim/swap >/dev/null 2>&1
endif
set directory=./.nvim-swap/
set directory+=~/.config/nvim/swap/
set directory+=~/tmp/
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.config/nvim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backup files, uses .nvim-undo first, then ~/.nvim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.config/nvim/undo') == 0
    :silent !mkdir -p ~/.config/nvim/undo > /dev/null 2>&1
  endif
  set undodir=./.nvim-undo/
  set undodir+=~/.config/nvim/undo/
  set undofile
endif

" *****************************************************************************
" " NERDTree
" " https://github.com/scrooloose/nerdtree
" "
" *****************************************************************************
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = ""
let g:NERDTreeDirArrowCollapsible = ""

" Open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | end

map <F2> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>

" Exclude this directories from tree view
let NERDTreeIgnore = ['node_modules', 'bower_components']
"

" *****************************************************************************
" Automatically removing all trailing whitespace for cirtain files
" TODO: use some list instead of that boring repetition
" *****************************************************************************
autocmd BufWritePre  *.cpp call StripTrailingWhitespaces()
autocmd BufWritePre  *.hpp call StripTrailingWhitespaces()
autocmd BufWritePre  *.h call StripTrailingWhitespaces()
autocmd BufWritePre  *.c call StripTrailingWhitespaces()
autocmd BufWritePre  *.java call StripTrailingWhitespaces()
autocmd BufWritePre  *.js call StripTrailingWhitespaces()
autocmd BufWritePre  *.ts call StripTrailingWhitespaces()
autocmd BufWritePre  *.yml call StripTrailingWhitespaces()
autocmd BufWritePre  *.conf call StripTrailingWhitespaces()
autocmd BufWritePre  *.cfg call StripTrailingWhitespaces()
autocmd BufWritePre  *.sql call StripTrailingWhitespaces()
autocmd BufWritePre  *.go call StripTrailingWhitespaces()
autocmd BufWritePre  *.rs  call StripTrailingWhitespaces()
autocmd BufWritePre  *.vue  call StripTrailingWhitespaces()

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" *****************************************************************************
" ALE
" *****************************************************************************

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Always show sign gutter
let g:ale_sign_column_always = 1

" Error and warning signs
let g:ale_sign_error = ''
let g:ale_sign_warning = ''

" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
highlight ALEErrorSign guifg=#fb4934 guibg=#262626
highlight ALEWarningSign guifg=#fe8019 guibg=#262626

" Set this in your vimrc file to disabling highlighting
let g:ale_set_highlights = 0

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ }

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" Write this in your vimrc file
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1
" For JavaScript/Typescript files, use `eslint` (and only eslint)

let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ }

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" *****************************************************************************
" vim-unimpaired
" *****************************************************************************
" Bubble single lines
" requires tpope's vim-unimpaired installed
" https://github.com/tpope/vim-unimpaired
nmap <C-k> [e
nmap <C-j> ]e
" Bubble multiple lines
vmap <C-k> [egv
vmap <C-j> ]egv

" *****************************************************************************
" Ctrlp plugin settings
" *****************************************************************************
let g:ctrlp_cmd = 'CtrlP'
" To order matching files top to bottom with
let g:ctrlp_match_window = 'bottom,order:ttb'

" lets us change the working directory during a Vim session and make CtrlP
" respect that change
let g:ctrlp_working_path_mode = 0

" Show hidden files
let g:ctrlp_show_hidden = 1

" To make CtrlP wicked fast
" g:ctrlp_show_hidden and g:ctrlp_custom_ignore do not work with custom user commands.
" ag has it's own convention for ignore files: a .agignore file that follows
" the same conventions as .gitignore
if executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif

" Use ripgrep if it's available to make it even faster
" https://github.com/BurntSushi/ripgrep
if executable("rg")
  let g:ctrlp_user_command = 'rg %s --files --color=never'
endif

" Exclude some directories and files
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  'node_modules'
  "\ }

" *****************************************************************************
" Markdown
" *****************************************************************************
let g:markdown_fenced_languages = ['html', 'go', 'javascript', 'typescript', 'python', 'bash=sh', 'rust']

" *****************************************************************************
" Go Language
" *****************************************************************************

" set tab size 4 for Go files
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" Tell vim-go to use goimports when saving the file
let g:go_fmt_command = "goimports"

" Call MetaLinter whenever you save a file
let g:go_metalinter_autosave = 1

" Additional Highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_def_mapping_enabled = 0
let g:go_gocode_propose_source = 0

" Use camelcase tags with :GoAddTags
let g:go_addtags_transform = "camelcase"

" Navigation
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" *****************************************************************************
" Rust Language
" *****************************************************************************
" automatic running of :RustFmt when you save a buffer
" NOTE: make sure rustfmt is installed:
" rustup component add rustfmt-preview
let g:rustfmt_autosave = 1

" set Ctrl-] to navigate to definition
" autocmd FileType rust nmap <c-]> <Plug>(rust-def)


" *****************************************************************************
" https://www.reddit.com/r/vim/comments/9xpb18/file_preview_with_fzf_rg_bat_and_devicons/
" *****************************************************************************

nnoremap <silent> <leader>e :call Fzf_dev()<CR>

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m ' . l:fzf_files_options,
        \ 'down':    '100%' })
endfunction

" *****************************************************************************
" UltiSnips
" *****************************************************************************
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" *****************************************************************************
" Grepper
" *****************************************************************************
nnoremap <leader>g :Grepper -tool rg<cr>
nnoremap <leader>G :Grepper -tool rg -buffers<cr>
nnoremap <leader>* :Grepper -tool rg -cword -noprompt<cr>

" *****************************************************************************
" ListToggle
" *****************************************************************************
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" *****************************************************************************
" Quickfix list buffer mapping
" *****************************************************************************
nmap <silent> <leader>n :cnext<CR>
nmap <silent> <leader>p :cprevious<CR>

" *****************************************************************************
" vim-illuminate
" https://github.com/RRethy/vim-illuminate
" *****************************************************************************
" Time in millis (default 250)
let g:Illuminate_delay = 1000

"  disabled for various filetypes
let g:Illuminate_ftblacklist = ['nerdtree']

" *****************************************************************************
" Clipboard
" *****************************************************************************
set clipboard=unnamedplus

" *****************************************************************************
" Neovim Terminal
" *****************************************************************************
if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <C-v><Esc> <Esc>

	highlight! link TermCursor Cursor
	highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif

" *****************************************************************************
" Disable arrow keys
" *****************************************************************************
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
