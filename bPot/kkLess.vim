" ---------------------------------------------------------------------------
" See 'm' companion script for installation and usage instructions.
"
" Modified By: huyz 2011-07-04
"   Fixed bugs and improved the one distributed with vim.
" Improvements:
" - don't quit immediately when hitting bottom of last file; just display
"   message
" - don't remap H or z, as I like to use them sometimes
" Bugs Fixed:
" - ':p' doesn't work as help says. So we map 'p' instead
" - now starts first file on first line, as it does subsequent files
" Bugs Remaining:
" - doesn't show filename when first starting.
" - 'g' has a one-second delay
" - redraw() gives error if non-first file has fileencoding in modeline
" - Returning to file with 'p' doesn't put you at the same spot you left it
" ---------------------------------------------------------------------------

" Vim script to work like "less"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2006 Dec 05

" Avoid loading this file twice, allow the user to define his own script.
if exists("loaded_less")
finish
endif
let loaded_less = 1

" If not reading from stdin, skip files that can't be read.
" Exit if there is no file at all.
if argc() > 0
  let s:i = 0
  while 1
    if filereadable(argv(s:i))
      if s:i != 0
	sleep 3
      endif
      break
    endif
    if isdirectory(argv(s:i))
      echomsg "Skipping directory " . argv(s:i)
    elseif getftime(argv(s:i)) < 0
      echomsg "Skipping non-existing file " . argv(s:i)
    else
      echomsg "Skipping unreadable file " . argv(s:i)
    endif
    echo "\n"
    let s:i = s:i + 1
    if s:i == argc()
      quit
    endif
    next
  endwhile
endif

set nocp
syntax on
set so=0
set hlsearch
set incsearch
nohlsearch
" Don't remember file names and positions
set viminfo=
set nows
" Inhibit screen updates while searching
let s:lz = &lz
set lz

" Used after each command: put cursor at end and display position
if &wrap
  noremap <SID>L L0:redraw<CR>:file<CR>
" huyz 2011-07-03 Go to first line (just like in NextPage())
"  au VimEnter * normal! L0
  au VimEnter * normal! 1GL0
else
  noremap <SID>L Lg0:redraw<CR>:file<CR>
" huyz 2011-07-03 Go to first line (just like in NextPage())
"  au VimEnter * normal! Lg0
  au VimEnter * normal! 1GLg0
endif

" When reading from stdin don't consider the file modified.
au VimEnter * set nomod

" Can't modify the text
set noma

" Give help
noremap h :call <SID>Help()<CR>
" huyz 2002-07-04 No need for that mapping
"map H h
fun! s:Help()
  echo "<Space>   One page forward          b         One page backward"
  echo "d         Half a page forward       u         Half a page backward"
  echo "<Enter>   One line forward          k         One line backward"
  echo "G         End of file               g         Start of file"
  echo "N%        percentage in file"
  echo "\n"
  echo "/pattern  Search for pattern        ?pattern  Search backward for pattern"
  echo "n         next pattern match        N         Previous pattern match"
  echo "\n"
  echo ":n<Enter> Next file                 p         Previous file"
  echo "\n"
  echo "q         Quit                      v         Edit file"
  let i = input("Hit Enter to continue")
endfun

" Scroll one page forward
" huyz 2011-07-03 We don't want <SID>L at all times because
" we want to display messages.
"noremap <script> <Space> :call <SID>NextPage()<CR><SID>L
noremap <script> <Space> :call <SID>NextPage()<CR>
map <C-V> <Space>
map f <Space>
map <C-F> <Space>
" huyz 2002-07-04 No need for that mapping
"map z <Space>
map <Esc><Space> <Space>

" huyz 2011-07-03 Modified to not quit immediately
fun! s:NextPage()
  if line(".") == line("$")
    if argidx() + 1 >= argc()
"      quit
      echomsg "END OF FILES. Hit 'q' to quit."
    else
      next
      1
      call s:DisplayStatus()
    endif
  else
    exe "normal! \<C-F>"
    call s:DisplayStatus()
  endif
endfun
fun! s:DisplayStatus()
  if &wrap
    exe "normal! L0"
  else
    exe "normal! Lg0"
  endif
  redraw
  file
endfun

" Re-read file and page forward "tail -f"
map F :e<CR>G<SID>L:sleep 1<CR>F

" Scroll half a page forward
noremap <script> d <C-D><SID>L
map <C-D> d

" Scroll one line forward
noremap <script> <CR> <C-E><SID>L
map <C-N> <CR>
map e <CR>
map <C-E> <CR>
map j <CR>
map <C-J> <CR>

" Scroll one page backward
noremap <script> b <C-B><SID>L
map <C-B> b
map w b
map <Esc>v b

" Scroll half a page backward
noremap <script> u <C-U><SID>L
noremap <script> <C-U> <C-U><SID>L

" Scroll one line backward
noremap <script> k <C-Y><SID>L
map y k
map <C-Y> k
map <C-P> k
map <C-K> k

" Redraw
noremap <script> r <C-L><SID>L
noremap <script> <C-R> <C-L><SID>L
noremap <script> R <C-L><SID>L

" Start of file
noremap <script> g gg<SID>L
map < g
map <Esc>< g

" End of file
noremap <script> G G<SID>L
map > G
map <Esc>> G

" Go to percentage
noremap <script> % %<SID>L
" huyz 2011-07-03 We need something instead of :prev
"map p %
map p :previous<CR>

" Search
noremap <script> / H$:call <SID>Forward()<CR>/
if &wrap
  noremap <script> ? H0:call <SID>Backward()<CR>?
else
  noremap <script> ? Hg0:call <SID>Backward()<CR>?
endif

fun! s:Forward()
  " Searching forward
  noremap <script> n H$nzt<SID>L
  if &wrap
    noremap <script> N H0Nzt<SID>L
  else
    noremap <script> N Hg0Nzt<SID>L
  endif
  cnoremap <silent> <script> <CR> <CR>:cunmap <lt>CR><CR>zt<SID>L
endfun

fun! s:Backward()
  " Searching backward
  if &wrap
    noremap <script> n H0nzt<SID>L
  else
    noremap <script> n Hg0nzt<SID>L
  endif
  noremap <script> N H$Nzt<SID>L
  cnoremap <silent> <script> <CR> <CR>:cunmap <lt>CR><CR>zt<SID>L
endfun

call s:Forward()

" Quitting
" huyz 2011-07-03 We really want to quit
"noremap q :q<CR>
noremap q :qall<CR>

" Switch to editing (switch off less mode)
map v :silent call <SID>End()<CR>
fun! s:End()
  set ma
  if exists('s:lz')
    let &lz = s:lz
  endif
  unmap h
" huyz 2011-07-03
endfun

" au! CursorHold, CursorHoldI * checktime
" au! FocusGained, BufEnter * :checktime

colorscheme desert
" source ~/git/bTest/bPot/aaGruvbox.vim

"autocmd! FileType log set ft=vim
"set autoread | au CursorHold * checktime | call feedkeys("lh")
set autoread | au CursorHold * checktime | call feedkeys("G")
set nu

"-Always open read-only when a swap file is found
let v:swapchoice = 'o'
"set ft = markdown
set noswapfile

nnoremap  <Esc><Esc> :<C-u>set nopaste<CR>:nohlsearch<CR>
silent! set wrapscan ignorecase smartcase incsearch hlsearch magic

hi cu1     ctermbg=1   ctermfg=White
hi cu2     ctermbg=2  ctermfg=White
hi cu3     ctermbg=9  ctermfg=White

hi cu4     ctermbg=237 ctermfg=14
hi cu5     ctermbg=237 ctermfg=202
hi cu6     ctermbg=233 ctermfg=190
hi cu7     ctermbg=234

call matchadd('cu1', 'WARN')
call matchadd('cu2', 'INF')
call matchadd('cu3', 'DEB')

call matchadd('cu4', ' | ')
call matchadd('cu6', ':')
call matchadd('cu6', '-')
call matchadd('cu6', '>')
call matchadd('cu6', '2019')

"call matchadd('cu5', '[0-9]')

set signcolumn=yes
"hi signcolumn     ctermbg=10
hi signcolumn     ctermbg=23
"hi LineNr         ctermbg=199 ctermfg=16
hi LineNr         ctermbg=190 ctermfg=19
hi CursorLine     ctermbg=8
set colorcolumn=92,100,112,120



" vim: sw=2
