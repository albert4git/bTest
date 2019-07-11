 .vimrc
" Author: Steve Losh <steve@stevelosh.com>
" Source: http://bitbucket.org/sjl/dotfiles/src/tip/vim/
"
" This file changes a lot.  I'll try to document pieces of it whenever I have
" a few minutes to kill.

" Preamble ---------------------------------------------------------------- {{{
"
set shell=/bin/bash\ --login

filetype off
call pathogen#infect()
filetype plugin indent on
set nocompatible

" }}}
" Basic options ----------------------------------------------------------- {{{

set modelines=0
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set nonumber
set norelativenumber
set laststatus=2
set history=1000
set undofile
set undoreload=10000
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set lazyredraw
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread
set shiftround
set title
set linebreak
set colorcolumn=+1

" Spelling
"
" There are three dictionaries I use for spellchecking:
"
"   /usr/share/dict/words
"   Basic stuff.
"
"   ~/.vim/custom-dictionary.utf-8.add
"   Custom words (like my name).  This is in my (version-controlled) dotfiles.
"
"   ~/.vim-local-dictionary.utf-8.add
"   More custom words.  This is *not* version controlled, so I can stick
"   work stuff in here without leaking internal names and shit.
"
" I also remap zG to add to the local dict (vanilla zG is useless anyway).
set dictionary=/usr/share/dict/words
set spellfile=~/.vim/custom-dictionary.utf-8.add,~/.vim-local-dictionary.utf-8.add
nnoremap zG 2zg

" iTerm2 is currently slow as balls at rendering the nice unicode lines, so for
" now I'll just use ASCII pipes.  They're ugly but at least I won't want to kill
" myself when trying to move around a file.
set fillchars=diff:⣿,vert:│
set fillchars=diff:⣿,vert:\|

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone

" Save when losing focus
au FocusLost * :silent! wall

" Resize splits when the window is resized
" au VimResized * :wincmd =

" Leader
let mapleader = ","
let maplocalleader = "\\"

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

" }}}
" cpoptions+=J, dammit {{{

" Something occasionally removes this.  If I manage to find it I'm going to
" comment out the line and replace all its characters with 'FUCK'.
augroup twospace
    au!
    au BufRead * :set cpoptions+=J
augroup END

" }}}
" Trailing whitespace {{{
" Only shown when not in insert mode so I don't go insane.

augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END

" }}}
" Wildmenu completion {{{

set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files

set wildignore+=*.fasl                           " Lisp FASLs
set wildignore+=*.dx64fsl                        " CCL

" Clojure/Leiningen
set wildignore+=classes
set wildignore+=lib

" }}}
" Line Return {{{

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" }}}
" Tabs, spaces, wrapping {{{

set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap
set textwidth=80
set formatoptions=qrn1j
set colorcolumn=+1

" }}}
" Backups {{{

set backup                        " enable backups
set noswapfile                    " it's 2013, Vim.

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" }}}
" Color scheme {{{

syntax on
set background=dark
let g:badwolf_tabline = 2
let g:badwolf_html_link_underline = 0
colorscheme goodwolf

" Reload the colorscheme whenever we write the file.
augroup color_badwolf_dev
    au!
    au BufWritePost badwolf.vim color badwolf
    au BufWritePost goodwolf.vim color goodwolf
augroup END

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" }}}

" }}}
" Abbreviations ----------------------------------------------------------- {{{

function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction
function! MakeSpacelessBufferIabbrev(from, to)
    execute "iabbrev <silent> <buffer> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

call MakeSpacelessIabbrev('sl/',  'http://stevelosh.com/')
call MakeSpacelessIabbrev('bb/',  'http://bitbucket.org/')
call MakeSpacelessIabbrev('bbs/', 'http://bitbucket.org/sjl/')
call MakeSpacelessIabbrev('gh/',  'http://github.com/')
call MakeSpacelessIabbrev('ghs/', 'http://github.com/sjl/')

iabbrev ldis ಠ_ಠ
iabbrev lsad ಥ_ಥ
iabbrev lhap ಥ‿ಥ
iabbrev lmis ಠ‿ಠ

iabbrev c8 CHIP-8

iabbrev todo TODO

iabbrev sl@ steve@stevelosh.com

silent! digr -. 8230 "U+2026=…    HORIZONTAL ELLIPSIS
silent! digr !, 8816 "U+2270=≰    NEITHER LESS-THAN NOR EQUAL TO
silent! digr !. 8817 "U+2271=≱    NEITHER GREATER-THAN NOR EQUAL TO
silent! digr xs 8339 "U+2093=ₓ    SUBSCRIPT X


" }}}
" Convenience mappings ---------------------------------------------------- {{{

" Fuck you, help key.
noremap  <F1> :checktime<cr>
inoremap <F1> <esc>:checktime<cr>

" Stop it, hash key.
inoremap # X<BS>#

" Kill window
nnoremap K :q<cr>

" Save
nnoremap s :w<cr>

" Man
nnoremap M K

" Clean up windows
nnoremap - :wincmd =<cr>

" Toggle line numbers
nnoremap <leader>n :setlocal number!<cr>

" Sort lines
nnoremap <leader>s vip:sort<cr>
vnoremap <leader>s :sort<cr>

" Tabs
nnoremap <leader>( :tabprev<cr>
nnoremap <leader>) :tabnext<cr>

" My garbage brain can't ever remember digraph codes
inoremap <c-k><c-k> <esc>:help digraph-table<cr>

" Wrap
nnoremap <leader>W :set wrap!<cr>

" Inserting blank lines
" I never use the default behavior of <cr> and this saves me a keystroke...
nnoremap <cr> o<esc>

" Copying/pasting text to the system clipboard.
noremap  <leader>p "+p
vnoremap <leader>y "+y
nnoremap <leader>y VV"+y
nnoremap <leader>Y "+y

" Yank to end of line
nnoremap Y y$

" Reselect last-pasted text
nnoremap gv `[v`]

" I constantly hit "u" in visual mode when I mean to "y". Use "gu" for those rare occasions.
" From https://github.com/henrik/dotfiles/blob/master/vim/config/mappings.vim
vnoremap u <nop>
vnoremap gu u

" Rebuild Ctags (mnemonic RC -> CR -> <cr>)
nnoremap <leader><cr> :silent !myctags >/dev/null 2>&1 &<cr>:redraw!<cr>

" Reselect last-pasted text
nnoremap gv `[v`]

" Highlight Group(s)
nnoremap <F8> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
                        \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
                        \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Clean trailing whitespace
nnoremap <leader>ww mz:%s/\s\+$//<cr>:let @/=''<cr>`z

" Send visual selection to paste.stevelosh.com
vnoremap <leader>P :w !pb && open `pbpaste`<cr>

" Select entire buffer
nnoremap vaa ggvGg_
nnoremap Vaa ggVG

" Fix from spellcheck
" I can never remember if it's zg or z=, and the wrong one adds the word to
" the DB (lol), so fuck it, just add an easier mapping.
nnoremap zz z=
nnoremap z= :echo "use zz you idiot"<cr>

" "Uppercase word" mapping.
"
" This mapping allows you to press <c-u> in insert mode to convert the current
" word to uppercase.  It's handy when you're writing names of constants and
" don't want to use Capslock.
"
" To use it you type the name of the constant in lowercase.  While your
" cursor is at the end of the word, press <c-u> to uppercase it, and then
" continue happily on your way:
"
"                            cursor
"                            v
"     max_connections_allowed|
"     <c-u>
"     MAX_CONNECTIONS_ALLOWED|
"                            ^
"                            cursor
"
" It works by exiting out of insert mode, recording the current cursor location
" in the z mark, using gUiw to uppercase inside the current word, moving back to
" the z mark, and entering insert mode again.
"
" Note that this will overwrite the contents of the z mark.  I never use it, but
" if you do you'll probably want to use another mark.
inoremap <C-u> <esc>mzgUiw`za

" Panic Button
nnoremap <f9> mzggg?G`z

" zt is okay for putting something at the top of the screen, but when I'm
" writing prose I often want to put something at not-quite-the-top of the
" screen.  zh is "zoom to head level"
nnoremap zh mzzt10<c-u>`z

" Diffoff
nnoremap <leader>D :diffoff!<cr>

" Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq

" Reformat line.
" I never use l as a macro register anyway.
nnoremap ql gqq

" Indent/dedent/autoindent what you just pasted.
nnoremap <lt>> V`]<
nnoremap ><lt> V`]>
nnoremap =- V`]=

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Join an entire paragraph.
"
" Useful for writing GitHub comments in actual Markdown and then translating it
" to their bastardized version of Markdown.
nnoremap <leader>j mzvipJ`z

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w

" Substitute
nnoremap <c-s> :%s/
vnoremap <c-s> :s/

" HTML tag closing
inoremap <C-_> <space><bs><esc>:call InsertCloseTag()<cr>a

" Marks and Quotes
noremap ' `
noremap æ '
noremap ` <C-^>

" Select (charwise) the contents of the current line, excluding indentation.
" Great for pasting Python lines into REPLs.
nnoremap vv ^vg_

" Typos
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

" Toggle paste
" For some reason pastetoggle doesn't redraw the screen (thus the status bar
" doesn't change) while :set paste! does, so I use that instead.
" set pastetoggle=<F6>
nnoremap <F6> :set paste!<cr>

" Unfuck my screen
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>

" Pushing
nnoremap <leader>Go :Start! git push origin<cr>
nnoremap <leader>Gu :Start! git push upstream<cr>

" Open current directory in Finder
nnoremap <leader>O :!open .<cr>

" Zip Right
"
" Moves the character under the cursor to the end of the line.  Handy when you
" have something like:
"
"     foo
"
" And you want to wrap it in a method call, so you type:
"
"     println()foo
"
" Once you hit escape your cursor is on the closing paren, so you can 'zip' it
" over to the right with this mapping.
"
" This should preserve your last yank/delete as well.
nnoremap zl :let @z=@"<cr>x$p:let @"=@z<cr>

" Indent from insert mode
" has to be imap because we want to be able to use the "go-indent" mapping
imap <c-l> <c-o>gi

" Insert Mode Completion {{{

inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" }}}

" Window Resizing {{{
" right/up : bigger
" left/down : smaller
nnoremap <m-right> :vertical resize +3<cr>
nnoremap <m-left> :vertical resize -3<cr>
nnoremap <m-up> :resize +3<cr>
nnoremap <m-down> :resize -3<cr>
" }}}

" }}}
" Quick editing ----------------------------------------------------------- {{{

nnoremap <leader>eb :vsplit ~/Dropbox/bitly.txt<cr>
nnoremap <leader>ed :vsplit ~/.vim/custom-dictionary.utf-8.add<cr>
nnoremap <leader>ef :vsplit ~/.config/fish/config.fish<cr>
nnoremap <leader>eg :vsplit ~/.gitconfig<cr>
nnoremap <leader>es :vsplit ~/.stumpwmrc<cr>
nnoremap <leader>eh :vsplit ~/.hgrc<cr>
nnoremap <leader>el :vsplit ~/.lispwords<cr>
nnoremap <leader>em :vsplit ~/.mutt/muttrc<cr>
nnoremap <leader>ep :vsplit ~/.plan/README.markdown<cr>
nnoremap <leader>eq :vsplit ~/Dropbox/quotes.txt<cr>Gzz
nnoremap <leader>et :vsplit ~/.tmux.conf<cr>
nnoremap <leader>ev :vsplit ~/.vimrc<cr>

" }}}
" Status Line ------------------------------------------------------------- {{{

function! StatusLineMode()
    let mode = mode()

    if mode == "n"
        call GoodWolfHL('GWStatusLineMode', 'coal', 'lime', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'lime', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'lime', 'deepgravel')
        return "NORMAL"
    elseif mode == "no"
        call GoodWolfHL('GWStatusLineMode', 'coal', 'lime', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'lime', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'lime', 'deepgravel')
        return "OPERATOR"
    elseif mode == "V" || mode == ""
        call GoodWolfHL('GWStatusLineMode', 'coal', 'dirtyblonde', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'dirtyblonde', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'dirtyblonde', 'deepgravel')
        return "VISUAL"
    elseif mode == "s" || mode == "S" || mode == ""
        call GoodWolfHL('GWStatusLineMode', 'coal', 'dirtyblonde', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'dirtyblonde', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'dirtyblonde', 'deepgravel')
        return "SELECT"
    elseif mode == "i"
        call GoodWolfHL('GWStatusLineMode', 'coal', 'tardis', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'tardis', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'tardis', 'deepgravel')
        return "INSERT"
    elseif mode == "r" || mode == "Rv"
        call GoodWolfHL('GWStatusLineMode', 'coal', 'taffy', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'taffy', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'taffy', 'deepgravel')
        return "REPLACE"
    elseif mode == "t"
        call GoodWolfHL('GWStatusLineMode', 'coal', 'tardis', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'tardis', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'tardis', 'deepgravel')
        return "TERMINAL"
    else
        call GoodWolfHL('GWStatusLineMode', 'coal', 'lime', 'bold')
        call GoodWolfHL('GWStatusLineModeX', 'lime', 'deepergravel')
        call GoodWolfHL('GWStatusLineModeY', 'lime', 'deepgravel')
        return "OTHER"
    endif
endfunction

function! SetStatusLine(winnr)
    let s = ""

    if a:winnr == winnr()
        "let errors = SyntasticStatuslineFlag()
	let errors = ""

        let s .= "%#GWStatusLineMode#"
        let s .= " "
        let s .= "%{StatusLineMode()}"
        let s .= " "
        let s .= "%#GWStatusLineModeX#"
        let s .= " "

        if strlen(errors) != 0
            let s .= "%#Error#"
            let s .= errors
            let s .= "%#GWStatusLineModeX# "
        endif

        let s .= "%f"
        let s .= " %m%r%h%w"
        let s .= "%="

        let s .= " %y"
        let s .= " \[%{&fileencoding?&fileencoding:&encoding}/%{&fileformat}\] "

        let s .= "%#GWStatusLineModeY#"
        let s .= ""
        let s .= "%#GWStatusLineMode#"
        let s .= " %c/"
        let s .= "%l"        " Current line
        let s .= "/"
        let s .= "%L"        " Total lines
        let s .= " "
    else
        let s .= "%#StatusLineNC#"
        let s .= "%f"
        let s .= " %m%r%h%w"
        let s .= "%="
        let s .= " %y"
        let s .= " \[%{&fileencoding?&fileencoding:&encoding}/%{&fileformat}\] "
    endif

    return s
endfunction

function! RefreshStatusLine()
    for nr in range(1, winnr('$'))
        call setwinvar(nr, '&statusline', '%!SetStatusLine(' . nr . ')')
    endfor
endfunction

augroup statusline
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * call RefreshStatusLine()
augroup END

" set statusline+=%=

" }}}

" Searching and movement -------------------------------------------------- {{{

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set scrolloff=5
set sidescroll=1
set sidescrolloff=10

set virtualedit+=block

noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

runtime macros/matchit.vim
map <tab> %
silent! unmap [%
silent! unmap ]%

" Made D behave
nnoremap D d$

" Don't move on *
" I'd use a function for this but Vim clobbers the last search when you're in
" a function so fuck it, practicality beats purity.
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" Jumping to tags.
"
" Basically, <c-]> jumps to tags (like normal) and <c-\> opens the tag in a new
" split instead.
"
" Both of them will align the destination line to the upper middle part of the
" screen.  Both will pulse the cursor line so you can see where the hell you
" are.  <c-\> will also fold everything in the buffer and then unfold just
" enough for you to see the destination line.
"
function! JumpTo(jumpcommand)
    execute a:jumpcommand
    call FocusLine()
    Pulse
endfunction
function! JumpToInSplit(jumpcommand)
    execute "normal! \<c-w>v"
    execute a:jumpcommand
    Pulse
endfunction

function! JumpToTag()
    call JumpTo("normal! \<c-]>")
endfunction
function! JumpToTagInSplit()
    call JumpToInSplit("normal! \<c-]>")
endfunction

nnoremap <c-]> :silent! call JumpToTag()<cr>
nnoremap <c-\> :silent! call JumpToTagInSplit()<cr>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L
vnoremap L g_

" Heresy
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" gi already moves to "last place you exited insert mode", so we'll map gI to
" something similar: move to last change
nnoremap gI `.

" Fix linewise visual selection of various text objects
nnoremap VV V
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV

" Directional Keys {{{

" It's 2013.
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <leader>v <C-w>v

" }}}
" Visual Mode */# from Scrooloose {{{

function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>

" }}}
" List navigation {{{

nnoremap <left>  :cprev<cr>zvzz
nnoremap <right> :cnext<cr>zvzz
nnoremap <up>    :lprev<cr>zvzz
nnoremap <down>  :lnext<cr>zvzz

" }}}

" }}}


"-Folding ----------------------------------------------------------------- {{{

set foldlevelstart=0

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Make zO recursively open whatever fold we're in, even if it's partially open.
nnoremap zO zczO

" "Focus" the current line.  Basically:
"
" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a bit (25 lines) down from the top of the screen.
" 4. Pulse the cursor line.  My eyes are bad.
"
" This mapping wipes out the z mark, which I never use.
"
" I use :sus for the rare times I want to actually background Vim.
function! FocusLine()
    let oldscrolloff = &scrolloff
    set scrolloff=0
    execute "keepjumps normal! mzzMzvzt25\<c-y>`z:Pulse\<cr>"
    let &scrolloff = oldscrolloff
endfunction
nnoremap <c-z> :call FocusLine()<cr>

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()

" }}}

" Filetype-specific ------------------------------------------------------- {{{

" Arduino {{{

augroup ft_arduino
    au!

    au FileType arduino setlocal noexpandtab shiftwidth=8 tabstop=8 softtabstop=8 foldmethod=syntax
    au FileType arduino inoremap <buffer> ☃ <esc>A;<cr>
    au FileType arduino inoremap <buffer> ☂ <esc>mzA;<esc>`z
augroup END

" }}}
" Assembly {{{

augroup ft_asm
    au!
    au FileType asm setlocal noexpandtab shiftwidth=8 tabstop=8 softtabstop=8
augroup END

" }}}
" C {{{

augroup ft_c
    au!
    au FileType c setlocal foldmethod=marker foldmarker={,}
    au FileType c setlocal ts=8 sts=8 sw=8 noexpandtab
augroup END

" }}}
" C++ {{{

augroup ft_cpp
    au!
    au FileType cpp setlocal foldmethod=marker foldmarker={,}
    au FileType cpp setlocal ts=8 sts=8 sw=8 noexpandtab
augroup END

" }}}
" C# {{{

let g:OmniSharp_selector_ui = 'ctrlp'

augroup ft_csharp
    au!
    au FileType cs setlocal foldmethod=marker foldmarker={,}
    au FileType cs setlocal ts=4 sts=4 sw=4 expandtab
    au FileType cs setlocal foldtext=MyFoldText()
    " au FileType cs inoremap <c-n> <c-x><c-o>

    au FileType cs nnoremap <buffer> <c-]> :OmniSharpGotoDefinition<cr>
    au FileType cs nnoremap <buffer> M :OmniSharpDocumentation<cr>

    au FileType cs nnoremap <buffer> gi mz=ap`z

    au FileType cs setlocal ts=4 sw=4 sts=4 noexpandtab
augroup END

" }}}
" Clojure {{{

" extra folding {{{
let g:clojure_fold_extra = [ 
            \ 'defgauge',
            \ 'defsketch'
            \
            \ ]
" }}}

augroup ft_clojure
    au!

    au BufNewFile,BufRead *.edn set filetype=clojure

    au FileType clojure silent! call TurnOnClojureFolding()
    au FileType clojure compiler clojure
    au FileType clojure setlocal isk-=.

    au FileType clojure iabbrev <buffer> defun defn

    " Things that should be indented 2-spaced
    au FileType clojure setlocal lispwords+=when-found,defform,when-valid,try,while-let,try+,throw+

    au FileType clojure RainbowParenthesesActivate
    au syntax clojure RainbowParenthesesLoadRound

    " Paredit
    au FileType clojure call EnableParedit()
    au FileType clojure nnoremap <buffer> <localleader>( :call PareditToggle()<cr>
    " )

    " Duplicate
    au FileType clojure nnoremap <buffer> [] :call DuplicateLispForm()<cr>

    " Indent top-level form.
    au FileType clojure nmap <buffer> gi mz99[(v%='z

augroup END

" }}}
" Common Lisp {{{

" Helper Functions {{{
function! HighlightLispRepl() "{{{
    " set syntax=lisp
    syn match replPrompt /\v^\[([a-z A-Z])+\] [-._a-zA-Z0-9]+\>/
    syn match replComment /\v^;.*/

    " syn match replResult /\v^#\<[^>]+\>$/
    hi def link replResult Debug
    hi def link replComment Comment
endfunction "}}}
function! MapLispReplKeys() "{{{
    nnoremap <buffer> <silent> <localleader>q :call QuickloadLispSystem()<cr>
    nnoremap <buffer> <silent> <localleader>Q :call QuickloadLispPrompt()<cr>
endfunction "}}}
function! InitializeLispRepl() "{{{
    call MapLispReplKeys()
    call HighlightLispRepl()
endfunction "}}}

function! OpenLispReplSBCL() "{{{
    NeoRepl sbcl-vlime
endfunction "}}}

function! OpenLispReplSBCLRaw() "{{{
    NeoRepl sbcl-vlime-raw
endfunction "}}}

function! OpenLispReplCCL() "{{{
    NeoRepl ccl-vlime
endfunction "}}}
function! OpenLispReplECL() "{{{
    NeoRepl ecl-nrepl
    call InitializeLispRepl()
endfunction "}}}
function! OpenLispReplABCL() "{{{
    NeoRepl abcl-nrepl
    call InitializeLispRepl()
endfunction "}}}

function! SetLispWords() "{{{
    setlocal isk+=.

    if exists("b:did_set_lisp_words")
        return
    endif

    let b:did_set_lisp_words = 1

    setlocal lispwords+=block

    setlocal lispwords+=when-let
    setlocal lispwords+=test
    setlocal lispwords+=.let*
    setlocal lispwords+=define-compiler-macro

    " optima
    setlocal lispwords+=optima:match
    setlocal lispwords+=match,match*,defun-match,defun-match*
    setlocal lispwords+=ematch,ematch*,defun-ematch,defun-ematch*
    setlocal lispwords+=cmatch,cmatch*,defun-cmatch,defun-cmatch*

    " 1am
    setlocal lispwords+=test

    " sketch
    setlocal lispwords+=with-pen
    setlocal lispwords+=with-font

    " charms
    setlocal lispwords+=with-curses

    " bones
    setlocal lispwords+=rule

    " cl-arrows
    setlocal lispwords+=->
    setlocal lispwords+=->>
    setlocal lispwords+=-<>
    setlocal lispwords+=-<>>

    " alexandria
    setlocal lispwords+=define-constant
    setlocal lispwords+=switch
    setlocal lispwords+=cswitch
    setlocal lispwords+=eswitch
    setlocal lispwords+=with-gensyms
    setlocal lispwords+=once-only

    " more shit
    setlocal lispwords+=define-test
    setlocal lispwords+=recursively
endfunction "}}}

function! SendLispForm() "{{{
    let view = winsaveview()

    execute "normal! vab\<esc>"
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}

function! SelectToplevelLispForm() "{{{
    execute "normal v\<Plug>(sexp_outer_top_list)"
endfunction "}}}
function! SelectLispExpression() "{{{
    execute "normal v\<Plug>(sexp_inner_element)"
endfunction "}}}

function! HyperspecLispExpression(vertical) "{{{
    let z = @z

    call SelectLispExpression()
    normal! gv"zy

    if a:vertical
        vnew
    else
        new
    endif

    set buftype=nofile

    call termopen('clhs ' . @z)

    normal! i

    let @z = z
endfunction "}}}

function! SendToplevelLispForm() "{{{
    let view = winsaveview()

    call SelectToplevelLispForm()
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}
function! IndentToplevelLispForm() "{{{
    let view = winsaveview()

    call SelectToplevelLispForm()
    execute "normal! gv="

    call winrestview(view)
endfunction "}}}

function! DisassembleLispSymbol() "{{{
    let old_z = @z

    normal! "zyiw
    call NeoReplSendRaw("(disassemble '" . @z . ")\n")

    let @z = old_z
endfunction "}}}

function! DuplicateLispForm() " {{{
    let old_z = @z

    " save our position
    normal! mz

    " yank the form into the z register and paste it out
    execute "normal v\<Plug>(sexp_outer_list)"
    normal! "zy
    normal! "zP

    " select the thing we just pasted, move to the right of it and insert the
    " line break
    execute "normal v\<Plug>(sexp_outer_list)\<esc>"
    execute "normal! a\<cr>\<esc>"

    " fix indentation
    call IndentToplevelLispForm()

    " jump back to our previous position and move to the next form,
    " to get to the correct final place
    normal! `z
    call SexpForward()

    let @z = old_z
endfunction " }}}

function! QuickloadLispSystem() " {{{
    let systems = split(system('ls -1 *.asd | grep -v test | cut -d. -f1 | uniq')) " its fine
    if len(systems) == 0
        echom "Could not find any .asd files..."
        return
    elseif len(systems) > 1
        echom "Found too many any .asd files..."
        return
    endif

    call NeoReplSendRaw("(ql:quickload :" . systems[0] . ")\n")
endfunction " }}}
function! QuickloadLispPrompt() " {{{
    call NeoReplSendRaw("(ql:quickload :" . input("? ") . ")\n")
endfunction " }}}

" }}}
" Folding {{{
let g:lisp_fold_extra = [ 
            \ 'macrolet>',
            \ 'test>',
            \ 'eval-when>',
            \ 'eval-dammit>',
            \
            \ 'declaim',
            \
            \ 'macro-map'
            \ ]
" }}}

augroup ft_commonlisp " {{{
    au!

    au BufNewFile,BufRead *.asd,*.ros set filetype=lisp
    au BufNewFile,BufRead *.paren set filetype=lisp
    au BufNewFile,BufRead .abclrc set filetype=lisp
    au BufNewFile,BufRead .stumpwmrc set filetype=lisp

    au FileType lisp nnoremap <buffer> U :syntax sync fromstart<cr>:redraw!<cr>:call TurnOnLispFolding()<cr>

    au FileType lisp call SetLispWords()
    au FileType lisp call EnableParedit()
    au FileType lisp silent! call TurnOnLispFolding()

    au FileType lisp RainbowParenthesesActivate
    au syntax lisp RainbowParenthesesLoadRound

    " Force omnicompletion (vlime's)
    au FileType lisp inoremap <c-n> <c-x><c-o>

    " lol, vim ignores indentexpr if lisp is set
    " au FileType lisp setlocal nolisp
    au FileType lisp setlocal iskeyword+=!,?,%,-

    " stay with lispindent for now
    au FileType lisp setlocal lisp
    au FileType lisp setlocal equalprg=lispindent

    " Fix windows
    au FileType lisp nnoremap <buffer> <localleader>W <c-w>j<c-w>J<c-w>k<c-w>H

    " scratch buffer
    au FileType lisp nnoremap <buffer> <leader><tab> :e scratch.lisp<cr>

    " Open REPLs
    au FileType lisp nnoremap <buffer> <silent> <localleader>Os :call OpenLispReplSBCL()<cr>
    au FileType lisp nnoremap <buffer> <silent> <localleader>Oc :call OpenLispReplCCL()<cr>
    au FileType lisp nnoremap <buffer> <silent> <localleader>Oe :call OpenLispReplECL()<cr>
    au FileType lisp nnoremap <buffer> <silent> <localleader>Oa :call OpenLispReplABCL()<cr>
    au FileType lisp nnoremap <buffer> <silent> <localleader>Ors :call OpenLispReplSBCLRaw()<cr>

    " Misc mappings
    " au FileType lisp nnoremap <buffer> gi :call IndentToplevelLispForm()<cr>
    au FileType lisp nnoremap <buffer> <localleader>h :call HyperspecLispExpression(0)<cr>
    au FileType lisp nnoremap <buffer> <localleader>H :call HyperspecLispExpression(1)<cr>
    au FileType lisp nnoremap <buffer> <silent> <localleader>q :call QuickloadLispSystem()<cr>
    au FileType lisp nnoremap <buffer> <silent> <localleader>Q :call QuickloadLispPrompt()<cr>
    au FileType lisp nnoremap <buffer> [] :call DuplicateLispForm()<cr>
    au FileType lisp nnoremap <buffer> <localleader>( :call PareditToggle()<cr>
    ")

    " Navigate trees of sexps with arrows
    au FileType lisp call s:vim_sexp_mappings()
    au FileType lisp noremap <buffer> <left>  :<c-u>call SexpBack()<cr>
    au FileType lisp noremap <buffer> <right> :<c-u>call SexpForward()<cr>
    au FileType lisp noremap <buffer> <up>    :<c-u>call SexpUp()<cr>
    au FileType lisp noremap <buffer> <down>  :<c-u>call SexpDown()<cr>
augroup END " }}}

" }}}
" Confluence {{{

augroup ft_c
    au!

    au BufRead,BufNewFile *.confluencewiki setlocal filetype=confluencewiki

    " Wiki pages should be soft-wrapped.
    au FileType confluencewiki setlocal wrap linebreak nolist
augroup END

" }}}
" Cram {{{

let cram_fold=1

augroup ft_cram
    au!

    au BufNewFile,BufRead *.t set filetype=cram
    au Syntax cram setlocal foldlevel=1
    au FileType cram nnoremap <buffer> <localleader>ee :e<cr>
augroup END

" }}}
" CSS and LessCSS {{{

augroup ft_css
    au!

    au BufNewFile,BufRead *.less setlocal filetype=less

    au Filetype less,css setlocal foldmethod=marker
    au Filetype less,css setlocal foldmarker={,}
    au Filetype less,css setlocal omnifunc=csscomplete#CompleteCSS
    au Filetype less,css setlocal iskeyword+=-

    " Use <localleader>S to sort properties.  Turns this:
    "
    "     p {
    "         width: 200px;
    "         height: 100px;
    "         background: red;
    "
    "         ...
    "     }
    "
    " into this:

    "     p {
    "         background: red;
    "         height: 100px;
    "         width: 200px;
    "
    "         ...
    "     }
    au BufNewFile,BufRead *.less,*.css nnoremap <buffer> <localleader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au BufNewFile,BufRead *.less,*.css inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
augroup END

" }}}
" Diff {{{

" This is from https://github.com/sgeb/vim-diff-fold/ without the extra
" settings crap.  Just the folding expr.

function! DiffFoldLevel()
    let l:line=getline(v:lnum)

    if l:line =~# '^\(diff\|Index\)'     " file
        return '>1'
    elseif l:line =~# '^\(@@\|\d\)'  " hunk
        return '>2'
    elseif l:line =~# '^\*\*\* \d\+,\d\+ \*\*\*\*$' " context: file1
        return '>2'
    elseif l:line =~# '^--- \d\+,\d\+ ----$'     " context: file2
        return '>2'
    else
        return '='
    endif
endfunction

augroup ft_diff
    au!

    autocmd FileType diff setlocal foldmethod=expr
    autocmd FileType diff setlocal foldexpr=DiffFoldLevel()
augroup END

" }}}
" Django {{{

augroup ft_django
    au!

    au BufNewFile,BufRead urls.py           setlocal nowrap
    au BufNewFile,BufRead urls.py           normal! zR
    au BufNewFile,BufRead dashboard.py      normal! zR
    au BufNewFile,BufRead local_settings.py normal! zR

    au BufNewFile,BufRead admin.py     setlocal filetype=python.django
    au BufNewFile,BufRead urls.py      setlocal filetype=python.django
    au BufNewFile,BufRead models.py    setlocal filetype=python.django
    au BufNewFile,BufRead views.py     setlocal filetype=python.django
    au BufNewFile,BufRead settings.py  setlocal filetype=python.django
    au BufNewFile,BufRead settings.py  setlocal foldmethod=marker
    au BufNewFile,BufRead forms.py     setlocal filetype=python.django
    au BufNewFile,BufRead common_settings.py  setlocal filetype=python.django
    au BufNewFile,BufRead common_settings.py  setlocal foldmethod=marker
augroup END

" }}}
" DTrace {{{

augroup ft_dtrace
    au!

    autocmd BufNewFile,BufRead *.d set filetype=dtrace
augroup END

" }}}
" EQ {{{

augroup ft_eq
    au!

    autocmd BufNewFile,BufRead eqlog_*.txt set filetype=eq

    vnoremap <localleader>d ::w !~/src/dotfiles/bin/eq-dotcount<cr>
augroup END

" }}}
" Firefox {{{

augroup ft_firefox
    au!
    au BufRead,BufNewFile ~/Library/Caches/*.html setlocal buftype=nofile
augroup END

" }}}
" Fish {{{

augroup ft_fish
    au!

    au BufNewFile,BufRead *.fish setlocal filetype=fish

    au FileType fish setlocal foldmethod=marker foldmarker={{{,}}}
augroup END

" }}}
" GDL {{{

augroup ft_gdl
    au!

    au FileType gdl nnoremap <localleader>= mzvap=`z

    au FileType gdl RainbowParenthesesActivate
    au syntax gdl RainbowParenthesesLoadRound

    au FileType gdl call EnableParedit()
augroup END

" }}}
" GLSL {{{

augroup ft_glsl
    au!

    au BufNewFile,BufRead *.shader setlocal filetype=glsl

    au FileType glsl setlocal foldmethod=marker foldmarker={,}
    au FileType glsl setlocal ts=8 sts=8 sw=8 noexpandtab
augroup END

" }}}
" gnuplot {{{

function! OpenGnuplotRepl() "{{{
    NeoRepl gnuplot
    set syntax=gnuplot
    " syn match replPrompt /\v^\*/
    " hi def link replPrompt SpecialChar

    " syn match replResult /\v^#\<[^>]+\>$/
    " hi def link replResult Debug
endfunction "}}}

function! SendGNUPlotParagraph() "{{{
    let view = winsaveview()

    execute "normal! ^vip\<esc>"
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}
function! SendGNUPlotBuffer() "{{{
    let view = winsaveview()

    execute "normal! ggVG"
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}

augroup ft_gnuplot
    au!

    au BufNewFile,BufRead *.gp setlocal filetype=gnuplot

    au FileType gnuplot nnoremap <buffer> <silent> <localleader>o :call OpenGnuplotRepl()<cr>

    au FileType gnuplot nnoremap <buffer> <silent> <localleader>e :call SendGNUPlotParagraph()<cr>

    au FileType gnuplot setlocal foldmethod=marker foldmarker={{{,}}}
augroup END

" }}}
" hgrc {{{

augroup ft_hgrc
    au!

    " s/bbs/ghs/
    au BufReadPost,BufNewFile hgrc nnoremap <buffer> <localleader>g yypciwgit<esc>wwcwghs<esc>A.git<esc>
augroup END

" }}}
" HTML, Django, Jinja, Dram {{{

let g:html_indent_tags = ['p', 'li']

augroup ft_html
    au!

    au BufNewFile,BufRead *.html setlocal filetype=htmldjango
    au BufNewFile,BufRead *.dram setlocal filetype=htmldjango

    au FileType html,jinja,htmldjango setlocal foldmethod=manual

    " Use <localleader>f to fold the current tag.
    au FileType html,jinja,htmldjango nnoremap <buffer> <localleader>f Vatzf

    " Use <localleader>t to fold the current templatetag.
    au FileType html,jinja,htmldjango nmap <buffer> <localleader>t viikojozf

    " Indent tag
    au FileType html,jinja,htmldjango nnoremap <buffer> <localleader>= Vat=

    " Django tags
    au FileType jinja,htmldjango inoremap <buffer> <c-t> {%<space><space>%}<left><left><left>

    " Django variables
    au FileType jinja,htmldjango inoremap <buffer> <c-b> {{<space><space>}}<left><left><left>
augroup END

" }}}
" Java {{{

augroup ft_java
    au!

    au FileType java setlocal foldmethod=marker
    au FileType java setlocal foldmarker={,}
    au FileType java inoremap <c-n> <c-x><c-]>
augroup END

" }}}
" Javascript {{{

augroup ft_javascript
    au!

    au FileType javascript setlocal foldmethod=marker
    au FileType javascript setlocal foldmarker={,}
    au FileType javascript call MakeSpacelessBufferIabbrev('clog', 'console.log();<left><left>')

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au Filetype javascript inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
    " }

    " Prettify a hunk of JSON with <localleader>p
    au FileType javascript nnoremap <buffer> <localleader>p ^vg_:!python -m json.tool<cr>
    au FileType javascript vnoremap <buffer> <localleader>p :!python -m json.tool<cr>
augroup END

" }}}
" Latex {{{

let g:tex_flavor = 'latex'

augroup ft_latex
    au!
augroup END

" }}}
" Lilypond {{{

augroup ft_lilypond
    au!

    au FileType lilypond setlocal foldmethod=marker foldmarker={,}
augroup END

" }}}
" Mail {{{

augroup ft_mail
    au!

    au Filetype mail setlocal spell
augroup END

" }}}
" Makefile {{{

augroup ft_make
    au!

    au Filetype make setlocal shiftwidth=8
augroup END

" }}}
" Markdown {{{

augroup ft_markdown
    au!

    au BufNewFile,BufRead *.m*down setlocal filetype=markdown foldlevel=1

    au Filetype markdown setlocal spell

    " Use <localleader>1/2/3 to add headings.
    au Filetype markdown nnoremap <buffer> <localleader>1 yypVr=:redraw<cr>
    au Filetype markdown nnoremap <buffer> <localleader>2 yypVr-:redraw<cr>
    au Filetype markdown nnoremap <buffer> <localleader>3 mzI###<space><esc>`zllll
    au Filetype markdown nnoremap <buffer> <localleader>4 mzI####<space><esc>`zlllll
augroup END

" }}}
" Mercurial {{{

augroup ft_mercurial
    au!

    au BufNewFile,BufRead *hg-editor-*.txt setlocal filetype=hgcommit
augroup END

" }}}
" Mutt {{{

augroup ft_muttrc
    au!

    au BufRead,BufNewFile *.muttrc set ft=muttrc

    au FileType muttrc setlocal foldmethod=marker foldmarker={{{,}}}
augroup END

" }}}
" Nand2Tetris HDL {{{

augroup ft_n2thdl
    au!

    au BufNewFile,BufRead *.hdl set filetype=n2thdl
augroup END

" }}}
" Nginx {{{

augroup ft_nginx
    au!

    au BufRead,BufNewFile /etc/nginx/conf/*                      set ft=nginx
    au BufRead,BufNewFile /etc/nginx/sites-available/*           set ft=nginx
    au BufRead,BufNewFile /usr/local/etc/nginx/sites-available/* set ft=nginx
    au BufRead,BufNewFile vhost.nginx                            set ft=nginx

    au FileType nginx setlocal foldmethod=marker foldmarker={,}
augroup END

" }}}
" PandaBT {{{

augroup ft_pandabt
    au!
    au BufNewFile,BufRead *.BT.txt set filetype=pandabt

    au FileType pandabt setlocal noexpandtab shiftwidth=8
augroup END

" }}}
" Pentadactyl {{{

augroup ft_pentadactyl
    au!
    au BufNewFile,BufRead .pentadactylrc set filetype=pentadactyl
    au BufNewFile,BufRead ~/Library/Caches/TemporaryItems/pentadactyl-*.tmp set nolist wrap linebreak columns=100 colorcolumn=0
augroup END

" }}}
" .plan {{{

function! PlanLinkPaste()
    execute "normal! gg}}O[]: \<esc>\"*p0"
    normal! a
endfunction

augroup ft_plan
    au!

    au BufNewFile,BufRead ~/.plan/README.markdown nnoremap <buffer> <localleader>l :call PlanLinkPaste()<cr>
augroup END

" }}}
" Postgresql {{{

augroup ft_postgres
    au!

    au BufNewFile,BufRead *.sql set filetype=pgsql
    au BufNewFile,BufRead *.pgsql set filetype=pgsql

    au FileType pgsql set foldmethod=indent
    au FileType pgsql set softtabstop=2 shiftwidth=2
    au FileType pgsql setlocal commentstring=--\ %s comments=:--

    " kill pager with q
    au FileType pgsql nnoremap <buffer> <silent> <localleader>q :call SendToTmuxRaw("q")<cr>
augroup END

" }}}
" Prolog {{{

augroup ft_prolog
    au!

    au BufNewFile,BufRead *.pl set filetype=prolog
augroup END

" }}}
" Python {{{

function! SelectTopLevelPythonHunk() "{{{
    " oh darling what have I done

    " if we're on toplevel line that ends in a :, drop down one line before
    " we move on.  this is bad and i feel bad.
    let line = getline(".")
    if len(line) > 0 && line[0] != " " && line[len(line) - 1] == ":"
        normal! j
    endif

    normal! v

    " use the non-bang version of normal here because we need to use the
    " indentation script.  this is also bad and i still feel bad.
    normal ai

    " keep chomping upwards in the indentation stack til we get to something
    " that's at the top level.  its bad.
    while getline(".")[0] == " "
        normal ai
    endwhile
endfunction "}}}

function! OpenPythonRepl() "{{{
    "fucking kill me
    NeoRepl fish
endfunction "}}}
function! SendPythonLine() "{{{
    let view = winsaveview()

    execute "normal! ^vg_\<esc>"
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}
function! SendPythonParagraph() "{{{
    let view = winsaveview()

    execute "normal! ^vip\<esc>"
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}
function! SendPythonTopLevelHunk() "{{{
    let view = winsaveview()
    let old_z = @z

    call SelectTopLevelPythonHunk()
    normal! gv"zy
    call NeoReplSendRaw("%cpaste\n" . @z . "\n--\n")

    let @z = old_z
    call winrestview(view)
endfunction "}}}
function! SendPythonSelection() "{{{
    let view = winsaveview()
    let old_z = @z

    normal! gv"zy
    call NeoReplSendRaw("%cpaste\n" . @z . "\n--\n")

    let @z = old_z
    call winrestview(view)
endfunction "}}}

function! SendPythonBuffer() "{{{
    let view = winsaveview()

    execute "normal! ggVG\<esc>"

    normal! gv"zy
    call NeoReplSendRaw("%cpaste\n" . @z . "\n--\n")

    call winrestview(view)
endfunction "}}}

augroup ft_python
    au!

    au FileType python setlocal define=^\s*\\(def\\\\|class\\)

    " Jesus tapdancing Christ, built-in Python syntax, you couldn't let me
    " override this in a normal way, could you?
    au FileType python if exists("python_space_error_highlight") | unlet python_space_error_highlight | endif

    " Strip REPL-session marks from just-pasted text
    au FileType python nnoremap <localleader>s mz`[v`]:v/\v^(\>\>\>\|[.][.][.])/d<cr>gv:s/\v^(\>\>\> \|[.][.][.] \|[.][.][.]$)//<cr>:noh<cr>`z

        " Set up some basic neorepl mappings.
        " key  desc                   mnemonic
        " \o - connect neorepl        [o]pen repl
        " \l - send current line      [l]ine
        " \p - send current paragraph [p]aragraph
        " \e - send top-level hunk    [e]val
        " \e - send selected hunk     [e]val
        " \r - send entire file       [r]eload file
        " \c - send ctrl-l            [c]lear
        au FileType python nnoremap <buffer> <silent> <localleader>o :call OpenPythonRepl()<cr>
        au FileType python nnoremap <buffer> <silent> <localleader>l :call SendPythonLine()<cr>
        au FileType python nnoremap <buffer> <silent> <localleader>p :call SendPythonParagraph()<cr>
        au FileType python nnoremap <buffer> <silent> <localleader>e :call SendPythonTopLevelHunk()<cr>
        au FileType python vnoremap <buffer> <silent> <localleader>e :<c-u>call SendPythonSelection()<cr>
        au FileType python nnoremap <buffer> <silent> <localleader>r :call SendPythonBuffer()<cr>
        au FileType python nnoremap <buffer> <silent> <localleader>c :call NeoReplSendRaw("")<cr>

augroup END

" }}}
" QuickFix {{{

augroup ft_quickfix
    au!
    au Filetype qf setlocal colorcolumn=0 nolist nocursorline nowrap tw=0

    " vimscript is a joke
    au Filetype qf nnoremap <buffer> <cr> :execute "normal! \<lt>cr>"<cr>
augroup END

" }}}
" ReStructuredText {{{

augroup ft_rest
    au!

    au Filetype rst nnoremap <buffer> <localleader>1 yypVr=:redraw<cr>
    au Filetype rst nnoremap <buffer> <localleader>2 yypVr-:redraw<cr>
    au Filetype rst nnoremap <buffer> <localleader>3 yypVr~:redraw<cr>
    au Filetype rst nnoremap <buffer> <localleader>4 yypVr`:redraw<cr>
augroup END

" }}}
" Rubby {{{

augroup ft_ruby
    au!
    au Filetype ruby setlocal foldmethod=syntax
    au BufRead,BufNewFile Capfile setlocal filetype=ruby
augroup END

" }}}
" Scala {{{

augroup ft_scala
    au!

    au FileType scala setlocal foldmethod=syntax
    au FileType scala setlocal foldlevel=1
    au FileType scala setlocal cc=100 tw=100
    au FileType scala setlocal expandtab

    au FileType scala nnoremap <buffer> <leader>s :SortSimpleScalaImports<cr>
    au FileType scala nnoremap <buffer> <c-]> :call LanguageClient_textDocument_definition()<CR>
    au FileType scala nnoremap <buffer> <localleader>r :call LanguageClient_textDocument_references()<CR>
    au FileType scala inoremap <buffer> <c-n> <c-x><c-o>

    au FileType scala setlocal omnifunc=LanguageClient#complete
augroup END

" }}}
" Scheme {{{

function! OpenSchemeRepl() "{{{
    NeoRepl scheme
    set syntax=scheme
    syn match replPrompt /\v^\*/
    syn match replPrompt /\v^[-_a-zA-Z]+\>/

    syn match replResult /\v^#\<[^>]+\>$/
    hi def link replResult Debug
endfunction "}}}
function! SendSchemeForm() "{{{
    let view = winsaveview()

    execute "normal! vab\<esc>"
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}
function! SendToplevelSchemeForm() "{{{
    let view = winsaveview()

    " If we're on the first char of the form, calling PareditFindDefunBck will
    " move us to the previous form, which we don't want.  So instead we'll just
    " always move a char to the right.
    silent! normal! l

    call PareditFindDefunBck()
    execute "normal! vab\<esc>"
    call NeoReplSendSelection()

    call winrestview(view)
endfunction "}}}
function! SendSchemeBuffer() "{{{
    call NeoReplSendRaw('(load "'. expand("%:p") . '")' . "\n")
endfunction "}}}
function! DescribeSchemeSymbol() "{{{
    let old_z = @z

    normal! "zyiw
    call NeoReplSendRaw("(describe '" . @z . ")\n")

    let @z = old_z
endfunction "}}}
function! DescribeSchemePrompt() "{{{
    call NeoReplSendRaw("(describe '" . input("? ") . ")\n")
endfunction "}}}

augroup ft_scheme
    au!

    " key  desc                   mnemonic
    " \o - connect neorepl        [o]pen scheme
    " \f - send current form      [f]orm
    " \e - send top-level form    [e]val
    " \r - send entire file       [r]eload file
    " \c - send ctrl-l            [c]lear
    " \d - describe symbol        [d]escribe
    " \D - describe prompt        [d]escribe

    au FileType scheme nnoremap <buffer> <silent> <localleader>o :call OpenSchemeRepl()<cr>

    " Send the current form to the REPL
    au FileType scheme nnoremap <buffer> <silent> <localleader>f :call SendSchemeForm()<cr>

    " Send the current top-level form to the REPL
    au FileType scheme nnoremap <buffer> <silent> <localleader>e :call SendToplevelSchemeForm()<cr>

    " Send the entire buffer to the REPL ([r]eload)
    au FileType scheme nnoremap <buffer> <silent> <localleader>r :call SendSchemeBuffer()<cr>

    " Clear the REPL
    au FileType scheme nnoremap <buffer> <silent> <localleader>c :call NeoReplSendRaw("")<cr>

    " Describe symbol under the cursor
    au FileType scheme nnoremap <buffer> <silent> <localleader>d :call DescribeSchemeSymbol()<cr>

    " Describe the last thing we typed
    au FileType scheme inoremap <buffer> <silent> <c-d> <esc>mzb:call DescribeSchemeSymbol()<cr>`za

    " Describe prompt
    au FileType scheme nnoremap <buffer> <silent> <localleader>D :call DescribeSchemePrompt()<cr>

    au FileType scheme RainbowParenthesesActivate
    au syntax scheme RainbowParenthesesLoadRound
    au syntax scheme RainbowParenthesesLoadSquare
    au syntax scheme RainbowParenthesesLoadBraces

    au FileType scheme silent! call TurnOnLispFolding()

    au FileType scheme call EnableParedit()

    " Indent top-level form.
    au FileType scheme nmap <buffer> gi mz:silent normal99[(<cr>v%='z
    " ])

    " au FileType lisp setlocal equalprg=LISP=sbcl\ lispindent

    " Navigate trees of sexps with arrows
    au FileType scheme call s:vim_sexp_mappings()
    au FileType scheme noremap <buffer> <left> :<c-u>call SexpBack()<cr>
    au FileType scheme noremap <buffer> <right> :<c-u>call SexpForward()<cr>
    au FileType scheme noremap <buffer> <up> :<c-u>call SexpUp()<cr>
    au FileType scheme noremap <buffer> <down> :<c-u>call SexpDown()<cr>
augroup END

" }}}
" ShaderLab {{{

augroup ft_shaderlab " {{{
    au!

    au FileType shaderlab setlocal shiftwidth=4
    au FileType shaderlab setlocal expandtab
augroup END " }}}

" }}}
" Shen {{{

" Helper Functions {{{
function! HighlightShenRepl() "{{{
    syn match replPrompt /\v^\(\d+-\)/
    " syn match replComment /\v^;.*/

    " syn match replResult /\v^#\<[^>]+\>$/
    hi def link replResult Debug
    hi def link replComment Comment
endfunction "}}}

function! OpenShenRepl() "{{{
    NeoRepl rlwrap ./shen
    call HighlightShenRepl()
endfunction "}}}

function! SetShenLispWords() "{{{
    if exists("b:did_set_lisp_words")
        return
    endif

    let b:did_set_lisp_words = 1

    " setlocal lispwords+=block
endfunction "}}}
" }}}

augroup ft_shen " {{{
    au!

    " au FileType shen nnoremap <buffer> U :syntax sync fromstart<cr>:redraw!<cr>:call TurnOnLispFolding()<cr>

    au FileType shen call SetShenLispWords()
    au FileType shen call EnableParedit()
    au FileType shen silent! call TurnOnLispFolding()

    " au FileType shen RainbowParenthesesActivate
    " au syntax shen RainbowParenthesesLoadRound

    " au FileType shen setlocal equalprg=lispindent

    " Handy stuff
    au FileType shen nnoremap <buffer> [] :call DuplicateLispForm()<cr>

    " [o]pen repl
    " [s]end to repl
    " [c]lear repl
    au FileType shen nnoremap <buffer> <silent> <localleader>o :call OpenShenRepl()<cr>
    au FileType shen nnoremap <buffer> <silent> <localleader>e :call SendToplevelLispForm()<cr>
    au FileType shen nnoremap <buffer> <silent> <localleader>c :call NeoReplSendRaw("")<cr>
    au FileType shen nnoremap <buffer> gi :call IndentToplevelLispForm()<cr>

    " Navigate trees of sexps with arrows
    au FileType shen call s:vim_sexp_mappings()
    au FileType shen noremap <buffer> <left>  :<c-u>call SexpBack()<cr>
    au FileType shen noremap <buffer> <right> :<c-u>call SexpForward()<cr>
    au FileType shen noremap <buffer> <up>    :<c-u>call SexpUp()<cr>
    au FileType shen noremap <buffer> <down>  :<c-u>call SexpDown()<cr>
augroup END " }}}

" }}}
" Standard In {{{

augroup ft_stdin
    au!

    " Treat buffers from stdin (e.g.: echo foo | vim -) as scratch.
    au StdinReadPost * :set buftype=nofile
augroup END

" }}}
" stevelosh.com Blog Entries {{{

augroup ft_steveloshcom
    au!
    au BufRead,BufNewFile */stevelosh/content/blog/20*/*/*.html set ft=markdown
    au BufRead,BufNewFile */stevelosh/content/projects/*.html set ft=markdown
augroup END

" }}}
" Vagrant {{{

augroup ft_vagrant
    au!
    au BufRead,BufNewFile Vagrantfile set ft=ruby
augroup END

" }}}
" Vim {{{

augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker keywordprg=:help
    au FileType help setlocal textwidth=78
    au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif

    au FileType vim vnoremap <localleader>S y:@"<CR>
    au FileType vim nnoremap <localleader>S ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>

    au FileType vim inoremap <c-n> <c-x><c-n>
augroup END

" }}}
" YAML {{{

augroup ft_yaml
    au!

    au FileType yaml set shiftwidth=2
augroup END

" }}}
" Wisp {{{

augroup ft_wisp
    au!

    au BufRead,BufNewFile *.wisp set ft=clojure
augroup END

" }}}
" XML {{{

augroup ft_xml
    au!

    au FileType xml setlocal foldmethod=manual

    " Use <localleader>f to fold the current tag.
    au FileType xml nnoremap <buffer> <localleader>f Vatzf

    " Indent tag
    au FileType xml nnoremap <buffer> <localleader>= Vat=
augroup END

" }}}

" }}}
" Plugin settings --------------------------------------------------------- {{{

" Ack {{{

nnoremap <leader>a :Ack!<space>
let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'

" }}}
" Clam {{{

nnoremap ! :Clam<space>
vnoremap ! :ClamVisual<space>
let g:clam_autoreturn = 1
let g:clam_debug = 1
let g:clam_winwidth = 84

" }}}
" Commentary {{{

nmap <leader>c <Plug>CommentaryLine
xmap <leader>c <Plug>Commentary

augroup plugin_commentary
    au!
    au FileType htmldjango setlocal commentstring={#\ %s\ #}
    au FileType clojurescript setlocal commentstring=;\ %s
    au FileType lisp setlocal commentstring=;;\ %s
    au FileType puppet setlocal commentstring=#\ %s
    au FileType fish setlocal commentstring=#\ %s
    au FileType gnuplot setlocal commentstring=#\ %s
    au FileType cs setlocal commentstring=//\ %s
    au FileType arduino setlocal commentstring=//\ %s
    au FileType pandabt setlocal commentstring=//\ %s
augroup END

" }}}
" Ctrl-P {{{

let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_split_window = 0
let g:ctrlp_max_height = 20
let g:ctrlp_extensions = ['tag']

let g:ctrlp_map = '<leader>,'
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

let g:ctrlp_prompt_mappings = {
\ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
\ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
\ 'PrtHistory(-1)':       ['<c-n>'],
\ 'PrtHistory(1)':        ['<c-p>'],
\ 'ToggleFocus()':        ['<c-tab>'],
\ }

let my_ctrlp_ffind_command = "ffind --semi-restricted --dir %s --type e -B -f"
let g:ctrlp_user_command = my_ctrlp_ffind_command

" }}}
" DelimitMate {{{

let delimitMate_excluded_ft = "clojure,lisp"
let delimitMate_expand_cr = 1

" }}}
" Fugitive {{{

nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gco :Gcheckout<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gl :Shell git gl -18<cr>:wincmd \|<cr>

augroup ft_fugitive
    au!

    au BufNewFile,BufRead .git/index setlocal nolist
augroup END

" "Hub"
vnoremap <leader>H :Gbrowse<cr>
nnoremap <leader>H V:Gbrowse<cr>

" "(Upstream) Hub"
vnoremap <leader>u :Gbrowse @upstream<cr>
nnoremap <leader>u V:Gbrowse @upstream<cr>

" }}}
" Gundo {{{

nnoremap <F5> :GundoToggle<CR>

let g:gundo_debug = 1
let g:gundo_preview_bottom = 1
let g:gundo_tree_statusline = "Gundo"
let g:gundo_preview_statusline = "Gundo Preview"

" }}}
" HTML5 {{{

let g:event_handler_attributes_complete = 0
let g:rdfa_attributes_complete = 0
let g:microdata_attributes_complete = 0
let g:atia_attributes_complete = 0

" }}}
" Language Server Protocol {{{

let g:LanguageClient_serverCommands = {
    \ 'scala': ['netcat', 'localhost', '62831'],
    \ 'java': ['netcat', 'localhost', '62831'],
    \ }
let g:LanguageClient_autoStart = 1

nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>

" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" }}}
" MiniYank {{{

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
nmap gp <Plug>(miniyank-cycle)
nnoremap gP g-

" }}}
" NeoRepl {{{

nnoremap <leader>S 0v$:call NeoReplSendSelection()<cr>

" }}}
" NERD Tree {{{

noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>
noremap  <S-F2> :NERDTreeFind<cr>
inoremap <S-F2> <esc>:NERDTreeFind<cr>

augroup ps_nerdtree
    au!

    au Filetype nerdtree setlocal nolist
    au Filetype nerdtree nnoremap <buffer> H :vertical resize -10<cr>
    au Filetype nerdtree nnoremap <buffer> L :vertical resize +10<cr>
    " au Filetype nerdtree nnoremap <buffer> K :q<cr>
augroup END

let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak', '.*\.pdf$', '.*\.mid$',
                    \ '^tags$',
                    \ '^.*\.meta$',
                    \ '^.*\.fasl$',
                    \ '^.*\.dx64fsl$',
                    \ '.*\.bcf$', '.*\.blg$', '.*\.fdb_latexmk$', '.*\.bbl$', '.*\.aux$', '.*\.run.xml$', '.*\.fls$',
                    \ '.*\.midi$']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'

" }}}
" Paredit {{{

let g:paredit_smartjump = 1
let g:paredit_shortmaps = 0
let g:paredit_electric_return = 1
let g:paredit_matchlines = 200

let g:paredit_disable_lisp = 1
let g:paredit_disable_clojure = 1

function! EnableParedit()
    call PareditInitBuffer()

    " Quit fucking with my split-line mapping, paredit.
    nunmap <buffer> S

    " Also quit fucking with my save file mapping.
    nunmap <buffer> s

    " Please just stop
    nunmap <buffer> <leader>W
    nunmap <buffer> <leader>O
    nunmap <buffer> <leader>S

    " Oh my god will you fuck off already
    " nnoremap <buffer> dp :diffput<cr>
    " nnoremap <buffer> do :diffobtain<cr>

    " Eat shit
    nunmap <buffer> [[
    nunmap <buffer> ]]

    " Better mappings
    noremap <buffer> () :<c-u>call PareditWrap("(", ")")<cr>
    noremap <buffer> )( :<c-u>call PareditSplice()<cr>
    noremap <buffer> (( :<c-u>call PareditMoveLeft()<cr>
    noremap <buffer> )) :<c-u>call PareditMoveRight()<cr>
    noremap <buffer> (j :<c-u>call PareditJoin()<cr>
    noremap <buffer> (s :<c-u>call PareditSplit()<cr>
    noremap <buffer> )j :<c-u>call PareditJoin()<cr>
    noremap <buffer> )s :<c-u>call PareditSplit()<cr>
    " ))
endfunction

" }}}
" Python-Mode {{{

let g:pymode_doc = 1
let g:pymode_doc_bind = 'M'
let g:pydoc = 'pydoc'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 0
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_print_as_function = 0
let g:pymode_syntax_space_errors = 0
let g:pymode_run = 0
let g:pymode_lint = 0
let g:pymode_breakpoint = 0
let g:pymode_utils_whitespaces = 0
let g:pymode_virtualenv = 0
let g:pymode_folding = 0

let g:pymode_options_indent = 0
let g:pymode_options_fold = 0
let g:pymode_options_other = 0
let g:pymode_options = 0

let g:pymode_rope = 0
let g:pymode_rope_global_prefix = "<localleader>R"
let g:pymode_rope_local_prefix = "<localleader>r"
let g:pymode_rope_auto_project = 1
let g:pymode_rope_enable_autoimport = 0
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os", "shutil", "datetime"]
let g:pymode_rope_confirm_saving = 1
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 1
let g:pymode_rope_goto_def_newwin = 0
let g:pymode_rope_always_show_complete_menu = 0

" }}}
" Rainbow Parentheses {{{

let g:rbpt_max = 1

" }}}
" Scala {{{

let g:scala_use_builtin_tagbar_defs = 0
let g:scala_use_default_keymappings = 0

" }}}
" Scratch {{{

command! ScratchToggle call ScratchToggle()

function! ScratchToggle()
    if exists("w:is_scratch_window")
        unlet w:is_scratch_window
        exec "q"
    else
        exec "normal! :Sscratch\<cr>\<C-W>L"
        let w:is_scratch_window = 1
    endif
endfunction

nnoremap <silent> <leader><tab> :ScratchToggle<cr>

" }}}
" Secure Modelines {{{

let g:secure_modelines_allowed_items = [
            \ "textwidth",   "tw",
            \ "foldmethod",  "fdm",
            \ "foldnextmax",  "fdn",
            \ "lispwords",  "lw",
            \ ]

" }}}
" Sexp {{{

function! s:vim_sexp_mappings() " {{{
    xmap <silent><buffer>   af   <Plug>(sexp_outer_list)
    omap <silent><buffer>   af   <Plug>(sexp_outer_list)
    xmap <silent><buffer>   if   <Plug>(sexp_inner_list)
    omap <silent><buffer>   if   <Plug>(sexp_inner_list)
    xmap <silent><buffer>   aF   <Plug>(sexp_outer_top_list)
    omap <silent><buffer>   aF   <Plug>(sexp_outer_top_list)
    xmap <silent><buffer>   iF   <Plug>(sexp_inner_top_list)
    omap <silent><buffer>   iF   <Plug>(sexp_inner_top_list)
    xmap <silent><buffer>   as   <Plug>(sexp_outer_string)
    omap <silent><buffer>   as   <Plug>(sexp_outer_string)
    xmap <silent><buffer>   is   <Plug>(sexp_inner_string)
    omap <silent><buffer>   is   <Plug>(sexp_inner_string)
    xmap <silent><buffer>   ae   <Plug>(sexp_outer_element)
    omap <silent><buffer>   ae   <Plug>(sexp_outer_element)
    xmap <silent><buffer>   ie   <Plug>(sexp_inner_element)
    omap <silent><buffer>   ie   <Plug>(sexp_inner_element)

    nmap <silent><buffer>   [[   <Plug>(sexp_swap_element_backward)
    xmap <silent><buffer>   [[   <Plug>(sexp_swap_element_backward)
    nmap <silent><buffer>   ]]   <Plug>(sexp_swap_element_forward)
    xmap <silent><buffer>   ]]   <Plug>(sexp_swap_element_forward)

    nmap <silent><buffer>   {    <Plug>(sexp_move_to_prev_top_element)
    xmap <silent><buffer>   {    <Plug>(sexp_move_to_prev_top_element)
    omap <silent><buffer>   {    <Plug>(sexp_move_to_prev_top_element)
    nmap <silent><buffer>   }    <Plug>(sexp_move_to_next_top_element)
    xmap <silent><buffer>   }    <Plug>(sexp_move_to_next_top_element)
    omap <silent><buffer>   }    <Plug>(sexp_move_to_next_top_element)

    " nmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
    " xmap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
    " omap <silent><buffer> (               <Plug>(sexp_move_to_prev_bracket)
    " nmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
    " xmap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
    " omap <silent><buffer> )               <Plug>(sexp_move_to_next_bracket)
    " nmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
    " xmap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
    " omap <silent><buffer> <M-b>           <Plug>(sexp_move_to_prev_element_head)
    " nmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
    " xmap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
    " omap <silent><buffer> <M-w>           <Plug>(sexp_move_to_next_element_head)
    " nmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
    " xmap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
    " omap <silent><buffer> g<M-e>          <Plug>(sexp_move_to_prev_element_tail)
    " nmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
    " xmap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
    " omap <silent><buffer> <M-e>           <Plug>(sexp_move_to_next_element_tail)
    " nmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
    " xmap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
    " omap <silent><buffer> [[              <Plug>(sexp_move_to_prev_top_element)
    " nmap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
    " xmap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
    " omap <silent><buffer> ]]              <Plug>(sexp_move_to_next_top_element)
    " nmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
    " xmap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
    " omap <silent><buffer> [e              <Plug>(sexp_select_prev_element)
    " nmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
    " xmap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
    " omap <silent><buffer> ]e              <Plug>(sexp_select_next_element)
    " nmap <silent><buffer> ==              <Plug>(sexp_indent)
    " nmap <silent><buffer> =-              <Plug>(sexp_indent_top)
    " nmap <silent><buffer> <LocalLeader>i  <Plug>(sexp_round_head_wrap_list)
    " xmap <silent><buffer> <LocalLeader>i  <Plug>(sexp_round_head_wrap_list)
    " nmap <silent><buffer> <LocalLeader>I  <Plug>(sexp_round_tail_wrap_list)
    " xmap <silent><buffer> <LocalLeader>I  <Plug>(sexp_round_tail_wrap_list)
    " nmap <silent><buffer> <LocalLeader>[  <Plug>(sexp_square_head_wrap_list)
    " xmap <silent><buffer> <LocalLeader>[  <Plug>(sexp_square_head_wrap_list)
    " nmap <silent><buffer> <LocalLeader>]  <Plug>(sexp_square_tail_wrap_list)
    " xmap <silent><buffer> <LocalLeader>]  <Plug>(sexp_square_tail_wrap_list)
    " nmap <silent><buffer> <LocalLeader>{  <Plug>(sexp_curly_head_wrap_list)
    " xmap <silent><buffer> <LocalLeader>{  <Plug>(sexp_curly_head_wrap_list)
    " nmap <silent><buffer> <LocalLeader>}  <Plug>(sexp_curly_tail_wrap_list)
    " xmap <silent><buffer> <LocalLeader>}  <Plug>(sexp_curly_tail_wrap_list)
    " nmap <silent><buffer> <LocalLeader>w  <Plug>(sexp_round_head_wrap_element)
    " xmap <silent><buffer> <LocalLeader>w  <Plug>(sexp_round_head_wrap_element)
    " nmap <silent><buffer> <LocalLeader>W  <Plug>(sexp_round_tail_wrap_element)
    " xmap <silent><buffer> <LocalLeader>W  <Plug>(sexp_round_tail_wrap_element)
    " nmap <silent><buffer> <LocalLeader>e[ <Plug>(sexp_square_head_wrap_element)
    " xmap <silent><buffer> <LocalLeader>e[ <Plug>(sexp_square_head_wrap_element)
    " nmap <silent><buffer> <LocalLeader>e] <Plug>(sexp_square_tail_wrap_element)
    " xmap <silent><buffer> <LocalLeader>e] <Plug>(sexp_square_tail_wrap_element)
    " nmap <silent><buffer> <LocalLeader>e{ <Plug>(sexp_curly_head_wrap_element)
    " xmap <silent><buffer> <LocalLeader>e{ <Plug>(sexp_curly_head_wrap_element)
    " nmap <silent><buffer> <LocalLeader>e} <Plug>(sexp_curly_tail_wrap_element)
    " xmap <silent><buffer> <LocalLeader>e} <Plug>(sexp_curly_tail_wrap_element)
    " nmap <silent><buffer> <LocalLeader>h  <Plug>(sexp_insert_at_list_head)
    " nmap <silent><buffer> <LocalLeader>l  <Plug>(sexp_insert_at_list_tail)
    " nmap <silent><buffer> <LocalLeader>@  <Plug>(sexp_splice_list)
    " nmap <silent><buffer> <LocalLeader>o  <Plug>(sexp_raise_list)
    " xmap <silent><buffer> <LocalLeader>o  <Plug>(sexp_raise_list)
    " nmap <silent><buffer> <LocalLeader>O  <Plug>(sexp_raise_element)
    " xmap <silent><buffer> <LocalLeader>O  <Plug>(sexp_raise_element)
    " nmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
    " xmap <silent><buffer> <M-k>           <Plug>(sexp_swap_list_backward)
    " nmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
    " xmap <silent><buffer> <M-j>           <Plug>(sexp_swap_list_forward)
    " nmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
    " xmap <silent><buffer> <M-S-j>         <Plug>(sexp_emit_head_element)
    " nmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
    " xmap <silent><buffer> <M-S-k>         <Plug>(sexp_emit_tail_element)
    " nmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
    " xmap <silent><buffer> <M-S-h>         <Plug>(sexp_capture_prev_element)
    " nmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
    " xmap <silent><buffer> <M-S-l>         <Plug>(sexp_capture_next_element)
    " imap <silent><buffer> <BS>            <Plug>(sexp_insert_backspace)
    " imap <silent><buffer> "               <Plug>(sexp_insert_double_quote)
    " imap <silent><buffer> (               <Plug>(sexp_insert_opening_round)
    " imap <silent><buffer> )               <Plug>(sexp_insert_closing_round)
    " imap <silent><buffer> [               <Plug>(sexp_insert_opening_square)
    " imap <silent><buffer> ]               <Plug>(sexp_insert_closing_square)
    " imap <silent><buffer> {               <Plug>(sexp_insert_opening_curly)
    " imap <silent><buffer> }               <Plug>(sexp_insert_closing_curly)
endfunction " }}}

let g:sexp_filetypes = ''
let g:sexp_mappings = {}
let g:sexp_insert_after_wrap = 0
let g:sexp_enable_insert_mode_mappings = 0

" wew lads
function! SexpUp()
    execute "normal \<Plug>(sexp_move_to_prev_bracket)"
    execute "normal! v"
    execute "normal \<Plug>(sexp_inner_element)"
    execute "normal! o\<esc>"
endfunction

function! SexpDown()
    execute "normal! v"
    execute "normal \<Plug>(sexp_inner_element)"
    execute "normal! \<esc>v"
    execute "normal \<Plug>(sexp_inner_list)"
    execute "normal! o\<esc>"
endfunction

function! SexpForward()
    execute "normal \<Plug>(sexp_move_to_next_element_head)"
endfunction

function! SexpBack()
    execute "normal \<Plug>(sexp_move_to_prev_element_head)"
endfunction

" }}}

" Supertab {{{

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabCrMapping = 1

"}}}

" Splice {{{

let g:splice_prefix = "-"

let g:splice_initial_mode = "grid"

let g:splice_initial_layout_grid = 0
let g:splice_initial_layout_loupe = 0
let g:splice_initial_layout_compare = 0
let g:splice_initial_layout_path = 0

let g:splice_initial_diff_grid = 1
let g:splice_initial_diff_loupe = 0
let g:splice_initial_diff_compare = 1
let g:splice_initial_diff_path = 0

let g:splice_initial_scrollbind_grid = 0
let g:splice_initial_scrollbind_loupe = 0
let g:splice_initial_scrollbind_compare = 0
let g:splice_initial_scrollbind_path = 0

let g:splice_wrap = "nowrap"

" }}}
" Targets {{{

let g:targets_pairs = '()b {}B []r <>'

" }}}
" Vlime {{{

let g:vlime_window_settings = {
        \ "sldb": {
            \ "pos": "belowright",
            \ "vertical": v:false
        \ },
        \ "xref": {
            \ "pos": "belowright",
            \ "size": 5,
            \ "vertical": v:false
        \ },
        \ "repl": {
            \ "pos": "belowright",
            \ "vertical": v:false
        \ },
        \ "inspector": {
            \ "pos": "belowright",
            \ "vertical": v:false
        \ },
        \ "arglist": {
            \ "pos": "topleft",
            \ "size": 2,
            \ "vertical": v:false
        \ }
    \ }

let g:vlime_compiler_policy = {
            \ "DEBUG": 2,
            \ "SAFETY": 3,
            \ "SPEED": 1
            \ }

" let g:vlime_indent_keywords = {"defsystem": 1}


"============================================
        set omnifunc=syntaxcomplete#Complete
        set completeopt=menu
"============================================

function! CleanVlimeWindows()
    call vlime#plugin#CloseWindow("preview")
    call vlime#plugin#CloseWindow("notes")
    call vlime#plugin#CloseWindow("xref")
    wincmd =
endfunction

function! MapVlimeKeys()
    nnoremap <silent> <buffer> <c-]> :call vlime#plugin#FindDefinition(vlime#ui#CurAtom())<cr>
    nnoremap <silent> <buffer> -     :call CleanVlimeWindows()<cr>
endfunction

augroup CustomVlimeInputBuffer
    autocmd!
    " autocmd FileType vlime_input inoremap <silent> <buffer> <tab> <c-r>=VlimeKey("tab")<cr>
    "
    autocmd FileType vlime_input setlocal omnifunc=vlime#plugin#CompleteFunc
    autocmd FileType vlime_input setlocal indentexpr=vlime#plugin#CalcCurIndent()
    autocmd FileType vlime_input inoremap <c-n> <c-x><c-o>
augroup end

augroup LocalVlime
    autocmd!

    " Settings
    au FileType vlime_sldb setlocal nowrap
    au FileType vlime_repl setlocal nowrap winfixheight

    " Keys for Lisp files
    au FileType lisp nnoremap <buffer> <localleader>e :call vlime#plugin#Compile(vlime#ui#CurTopExpr(v:true))<cr>
    au FileType lisp nnoremap <buffer> <localleader>f :call vlime#plugin#CompileFile(expand("%:p"))<cr>
    au FileType lisp nnoremap <buffer> <localleader>S :call vlime#plugin#SendToREPL(vlime#ui#CurTopExpr())<cr>
    au FileType lisp nnoremap <buffer> <localleader>i :call vlime#plugin#Inspect(vlime#ui#CurExprOrAtom())<cr>
    au FileType lisp nnoremap <buffer> <nowait> <localleader>I :call vlime#plugin#Inspect()<cr>
    au FileType lisp nnoremap <buffer> M :call vlime#plugin#DocumentationSymbol(vlime#ui#CurAtom())<cr>
    au FileType lisp setlocal indentexpr=vlime#plugin#CalcCurIndent()
    au FileType lisp nnoremap <buffer> gi :call IndentToplevelLispForm()<cr>

    " Keys for the REPL
    au FileType vlime_repl      nnoremap <buffer> i :call vlime#ui#repl#InspectCurREPLPresentation()<cr>
    au FileType vlime_repl      nnoremap <buffer> <2-LeftMouse> :call vlime#ui#repl#InspectCurREPLPresentation()<cr>

    " Keys for the Inspector
    au FileType vlime_inspector nnoremap <buffer> <2-LeftMouse> :call vlime#ui#inspector#InspectorSelect()<cr>

    " Universal keys, for all kinds of Vlime windows
    au FileType lisp,vlime_repl,vlime_inspector,vlime_sldb,vlime_notes,vlime_xref,vlime_preview call MapVlimeKeys()

    " Fix <cr>
    au FileType vlime_xref      nnoremap <buffer> <cr> :call vlime#ui#xref#OpenCurXref()<cr>
    au FileType vlime_notes     nnoremap <buffer> <cr> :call vlime#ui#compiler_notes#OpenCurNote()<cr>
    au FileType vlime_sldb      nnoremap <buffer> <cr> :call vlime#ui#sldb#ChooseCurRestart()<cr>
    au FileType vlime_inspector nnoremap <buffer> <cr> :call vlime#ui#inspector#InspectorSelect()<cr>

    " Fix d
    au FileType vlime_sldb      nnoremap <buffer> <nowait> d :call vlime#ui#sldb#ShowFrameDetails()<cr>

    " Fix s
    au FileType vlime_sldb      nnoremap <buffer> <nowait> s :call vlime#ui#sldb#StepCurOrLastFrame("step")<cr>

    " Fix p
    au FileType vlime_inspector nnoremap <buffer> p :call vlime#ui#inspector#InspectorPop()<cr>
augroup end

" }}}
" Windowswap {{{

let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>W :call WindowSwap#EasyWindowSwap()<CR>

" }}}

" }}}
" Text objects ------------------------------------------------------------ {{{

" Folds {{{

onoremap if :<c-u>normal! [zv]z<cr>
onoremap af :<c-u>normal! [zV]z<cr>
vnoremap if :<c-u>normal! ]zv[z<cr>
vnoremap af :<c-u>normal! ]zV[z<cr>

" }}}
" Shortcut for [] {{{


onoremap ir i[
onoremap ar a[
vnoremap ir i[
vnoremap ar a[

" }}}
" Numbers {{{

" Motion for numbers.  Great for CSS.  Lets you do things like this:
"
" margin-top: 200px; -> daN -> margin-top: px;
"              ^                          ^
" TODO: Handle floats.

onoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
xnoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
onoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
onoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>

function! s:NumberTextObject(whole)
    let num = '\v[0-9]'

    " If the current char isn't a number, walk forward.
    while getline('.')[col('.') - 1] !~# num
        normal! l
    endwhile

    " Now that we're on a number, start selecting it.
    normal! v

    " If the char after the cursor is a number, select it.
    while getline('.')[col('.')] =~# num
        normal! l
    endwhile

    " If we want an entire word, flip the select point and walk.
    if a:whole
        normal! o

        while col('.') > 1 && getline('.')[col('.') - 2] =~# num
            normal! h
        endwhile
    endif
endfunction

" }}}

" }}}
" Mini-plugins ------------------------------------------------------------ {{{
" Stuff that should probably be broken out into plugins, but hasn't proved to be
" worth the time to do so just yet.

" Synstack {{{

" Show the stack of syntax hilighting classes affecting whatever is under the
" cursor.
function! SynStack()
  echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), " > ")
endfunc

nnoremap <F7> :call SynStack()<CR>

" }}}
" Diffwhite Toggle {{{

set diffopt-=iwhite
let g:diffwhitespaceon = 0
function! ToggleDiffWhitespace()
    if g:diffwhitespaceon
        set diffopt-=iwhite
        let g:diffwhitespaceon = 0
    else
        set diffopt+=iwhite
        let g:diffwhitespaceon = 1
    endif
    diffupdate
endfunc

" TODO: Figure out the diffexpr shit necessary to make this buffer-local.
" nnoremap <leader>W :call ToggleDiffWhitespace()<CR>

" }}}
" Virtualedit Toggle {{{

set virtualedit=block
let g:virtualeditallon = 0

function! ToggleVirtualEdit()
    if g:virtualeditallon
        set virtualedit=block
        let g:virtualeditallon = 0
    else
        set virtualedit=all
        let g:virtualeditallon = 1
    endif
endfunc

nnoremap <leader>V :call ToggleVirtualEdit()<cr>

" TODO: Figure out the diffexpr shit necessary to make this buffer-local.
" nnoremap <leader>W :call ToggleDiffWhitespace()<CR>

" }}}
" Error Toggles {{{

command! ErrorsToggle call ErrorsToggle()
function! ErrorsToggle() " {{{
  if exists("w:is_error_window")
    unlet w:is_error_window
    exec "q"
  else
    exec "Errors"
    lopen
    let w:is_error_window = 1
  endif
endfunction " }}}

command! LocationToggle call LocationToggle()
function! LocationToggle() " {{{
  if exists("w:is_location_window")
    unlet w:is_location_window
    exec "q"
  else
    lopen
    let w:is_location_window = 1
  endif
endfunction " }}}

command! -bang -nargs=? QFixToggle call QFixToggle(<bang>0)
function! QFixToggle(forced) " {{{
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction " }}}

" nmap <silent> <f3> :ErrorsToggle<cr>
nmap <silent> <f4> :QFixToggle<cr>
nmap <silent> <f3> :LocationToggle<cr>

" }}}
" Hg (Mercurial) {{{
"
" \hc - hg commit
" \hd - hg diff
" \hs - hg status
"
" \hpd - hg push default
" \hpu - hg push upstream
" \hpg - hg push git
" \hpp - push everything lol
"
" \hB - hg blame (current file)
" \hD - hg diff (current file)
"
" \h<space> - raw hg commands

nnoremap <leader>hc :Start hg commit<cr> 

nnoremap <leader>hpd :Start! hg push default<cr>
nnoremap <leader>hpu :Start! hg push upstream<cr>
nnoremap <leader>hpg :Start! hg push git<cr>
nnoremap <leader>hpp :Start! hg paths -q \| xargs -n1 hg push<cr>

function! s:HgDiff() " {{{
    diffthis

    let fn = expand('%:p')
    let ft = &ft

    wincmd v
    edit __hgdiff_orig__

    setlocal buftype=nofile

    normal ggdG
    execute "silent r!hg cat --rev . " . fn
    normal ggdd

    execute "setlocal ft=" . ft

    diffthis
    diffupdate
endfunction " }}}
command! -nargs=0 HgDiff call s:HgDiff()

" Diff the current file
nnoremap <leader>hD :HgDiff<cr>

" Diff the entire repo
nnoremap <leader>hd :wa<cr>:Clam hg diff<cr>:set ft=diff nowrap foldlevel=1<cr>gg

function! s:HgBlame() " {{{
    let fn = expand('%:p')

    wincmd v
    wincmd h
    edit __hgblame__
    vertical resize 28

    setlocal scrollbind winfixwidth nolist nowrap nonumber buftype=nofile ft=none

    normal ggdG
    execute "silent r!hg blame -undq " . fn
    normal ggdd
    execute ':%s/\v:.*$//'

    wincmd l
    setlocal scrollbind
    syncbind
endfunction " }}}
command! -nargs=0 HgBlame call s:HgBlame()
nnoremap <leader>hB :HgBlame<cr>

function! s:HgStatus() " {{{
    Clam hg status
endfunction " }}}
command! -nargs=0 HgStatus call s:HgStatus()
nnoremap <leader>hs :HgStatus<cr>

" Bare hg commands
nnoremap <leader>h<space> :!hg<space>

" }}}
" J {{{

function! s:JumpTo(dest)
  call system("tmux split-window -h 'j " . a:dest . "; and myctags &; and nvim .'")
endfunction

command! -nargs=1 J call s:JumpTo(<f-args>)

" }}}
" Ack motions {{{

" Motions to Ack for things.  Works with pretty much everything, including:
"
"   w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
"
" Awesome.
"
" Note: If the text covered by a motion contains a newline it won't work.  Ack
" searches line-by-line.

nnoremap <silent> <leader>A :set opfunc=<SID>AckMotion<CR>g@
xnoremap <silent> <bs> :<C-U>call <SID>AckMotion(visualmode())<CR>

" nnoremap <leader>A :Ack! '\b<c-r><c-w>\b'<cr>
" nnoremap <bs> :Ack! '\b<c-r><c-w>\b'<cr>

" With C-R C-W, according to the help: "With CTRL-W the part of the word that
" was already typed is not inserted again."  Because we're using \b to ack for
" word boundaries, the command string looks like `:Ack! '\b` at this point, and
" so if the word we're on happens to start with a lowercase b (e.g. "bonkers")
" it will be skipped, and we'll end up with `:Ack! '\bonkers` and find nothing.
" It took me a good long time to notice this one.  Computers are total fucking
" garbage.
nnoremap <bs> viw:<C-U>call <SID>AckMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
    if a:type ==# 'v'
        silent execute "normal! `<" . a:type . "`>y"
    elseif a:type ==# 'char'
        silent execute "normal! `[v`]y"
    endif
endfunction

function! s:AckMotion(type) abort
    let reg_save = @@

    call s:CopyMotionForType(a:type)

    execute "normal! :Ack! --literal " . shellescape(@@) . "\<cr>"

    let @@ = reg_save
endfunction

" }}}
" Pulse Line {{{

function! s:Pulse() " {{{
    redir => old_hi
        silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    let steps = 8
    let width = 1
    let start = width
    let end = steps * width
    let color = 233

    for i in range(start, end, width)
        execute "hi CursorLine ctermbg=" . (color + i)
        redraw
        sleep 6m
    endfor
    for i in range(end, start, -1 * width)
        execute "hi CursorLine ctermbg=" . (color + i)
        redraw
        sleep 6m
    endfor

    execute 'hi ' . old_hi
endfunction " }}}
command! -nargs=0 Pulse call s:Pulse()

" }}}
" Highlight Word {{{
"
" This mini-plugin provides a few mappings for highlighting words temporarily.
"
" Sometimes you're looking at a hairy piece of code and would like a certain
" word or two to stand out temporarily.  You can search for it, but that only
" gives you one color of highlighting.  Now you can use <leader>N where N is
" a number from 1-6 to highlight the current word in a specific color.

function! HiInterestingWord(n) " {{{
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction " }}}

" Mappings {{{

nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>

" }}}
" Default Highlights {{{

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

" }}}

" }}}
" MS to UTC {{{

function! MS2UTC(ms)
    let seconds = strpart(a:ms, 0, strlen(a:ms) - 3)
    return substitute(system("date -ur " . seconds), "\n\n*", "", "")
endfunction

function! MS2UTCWord()
    return MS2UTC(expand("<cword>"))
endfunction

function! ReplaceMS2UTCWord()
    let res = MS2UTC(expand("<cword>"))
    execute 'normal! ciw"' . res . '"'
endfunction

" nnoremap <leader>U :echo MS2UTCWord()<cr>
nnoremap <leader>U :call ReplaceMS2UTCWord()<cr>

" }}}

" }}}
" Environments (GUI/Console) ---------------------------------------------- {{{

if has('gui_running')
    " GUI Vim

    set guifont=Menlo\ Regular\ for\ Powerline:h12

    " Remove all the UI cruft
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    highlight SpellBad term=underline gui=undercurl guisp=Orange

    " Different cursors for different modes.
    set guicursor=n-c:block-Cursor-blinkon0
    set guicursor+=v:block-vCursor-blinkon0
    set guicursor+=i-ci:ver20-iCursor

    if has("gui_macvim")
        " Full screen means FULL screen
        set fuoptions=maxvert,maxhorz

        " Use the normal HIG movements, except for M-Up/Down
        let macvim_skip_cmd_opt_movement = 1
        no   <D-Left>       <Home>
        no!  <D-Left>       <Home>
        no   <M-Left>       <C-Left>
        no!  <M-Left>       <C-Left>

        no   <D-Right>      <End>
        no!  <D-Right>      <End>
        no   <M-Right>      <C-Right>
        no!  <M-Right>      <C-Right>

        no   <D-Up>         <C-Home>
        ino  <D-Up>         <C-Home>
        imap <M-Up>         <C-o>{

        no   <D-Down>       <C-End>
        ino  <D-Down>       <C-End>
        imap <M-Down>       <C-o>}

        imap <M-BS>         <C-w>
        inoremap <D-BS>     <esc>my0c`y
    else
        " Non-MacVim GUI, like Gvim
    end
else
    " Console Vim
    " For me, this means iTerm2, possibly through tmux

    " Mouse support
    set mouse=a
endif

" }}}
" Neovim ------------------------------------------------------------------ {{{

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <leader><esc> <esc>
    " nnoremap <bs> <c-w>h
    let g:terminal_scrollback_buffer_size = 10000
    letNVIM_TUI_ENABLE_CURSOR_SHAPE=1
    set inccommand=nosplit
else
    set encoding=utf-8
endif

source ~/.vimrc_local

" }}}
