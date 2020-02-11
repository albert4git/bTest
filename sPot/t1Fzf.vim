function! s:escape(path)
  return substitute(a:path, ' ', '\\ ', 'g')
endfunction

function! AgHandler(line)
  let parts = split(a:line, ':')
  let [fn, lno] = parts[0 : 1]
  execute 'e '. s:escape(fn)
  execute lno
  normal! zz
endfunction

command! -nargs=+ Fag call fzf#run({
  \ 'source': 'ag "<args>"',
  \ 'sink': function('AgHandler'),
  \ 'options': '+m',
  \ 'tmux_height': '60%'
\ })

    " Likewise, Files command with preview window
    command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

---------------------------------+------------------------------------------
 Mapping                          | Description                              ~
 ---------------------------------+------------------------------------------
 <plug>(fzf-maps-n)               | Normal mode mappings
 <plug>(fzf-maps-i)               | Insert mode mappings
 <plug>(fzf-maps-x)               | Visual mode mappings
 <plug>(fzf-maps-o)               | Operator-pending mappings
 <plug>(fzf-complete-word)        |  `cat /usr/share/dict/words`
 <plug>(fzf-complete-path)        | Path completion using  `find`  (file + dir)
 <plug>(fzf-complete-file)        | File completion using  `find`
 <plug>(fzf-complete-file-ag)     | File completion using  `ag`
 <plug>(fzf-complete-line)        | Line completion (all open buffers)
 <plug>(fzf-complete-buffer-line) | Line completion (current buffer only)
 ---------------------------------+------------------------------------------

    let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-i': 'split',
      \ 'ctrl-s': 'vsplit' }
    let g:fzf_layout = { 'down': '~20%' }

    function! s:escape(path)
      return substitute(a:path, ' ', '\\ ', 'g')
    endfunction

    function! GrepHandler(line)
      let parts = split(a:line, ':')
      let [fn, lno] = parts[0 : 1]
      execute 'e '. s:escape(fn)
      execute lno
      normal! zz
    endfunction

    command! -nargs=+ FGrep call fzf#run({
      \ 'source': 'grep -srnw --exclude-dir={build,vendor,node_modules,.git} --include=*.{rb,erb,vcl,conf,jade,js,styl,php,json,config,html} --exclude={*.min.js,tags} "<args>"',
      \ 'sink': function('GrepHandler'),
    \ })

"---------------------------------------------------------------------------------
"---------------------------------------------------------------------------------
    nmap <C-p> :FZF<cr>
    imap <c-x><c-l> <plug>(fzf-complete-line)

    function! BufGet()
            return map(getline(1, '$'), "printf('%5d %s', v:key + 1, v:val)")
    endfunction

    function! LineOpen(e)
            execute 'normal! '. matchstr(a:e, '[0-9]+'). 'G'
    endfunction

    nnoremap f :call fzf#run({
                            \ 'source': BufGet(),
                            \ 'sink': function('LineOpen'),
                            \ 'options': '+m',
                            \ 'tmux_height': '40%'
                            \ })
"---------------------------------------------------------------------------------
function! s:escape(path)
  return substitute(a:path, ' ', '\\ ', 'g')
endfunction

function! AgHandler(line)
  let parts = split(a:line, ':')
  let [fn, lno] = parts[0 : 1]
  execute 'e '. s:escape(fn)
  execute lno
  normal! zz
endfunction

command! -nargs=+ Fag call fzf#run({
  \ 'source': 'ag "<args>"',
  \ 'sink': function('AgHandler'),
  \ 'options': '+m',
  \ 'tmux_height': '60%'
\ })
"---------------------------------------------------------------------------------
    " Mapping selecting mappings
    "
    nmap <leader><tab> <plug>(fzf-maps-n)
    xmap <leader><tab> <plug>(fzf-maps-x)
    omap <leader><tab> <plug>(fzf-maps-o)

    " Insert mode completion
    imap <c-x><c-k> <plug>(fzf-complete-word)
    imap <c-x><c-f> <plug>(fzf-complete-path)
    imap <c-x><c-j> <plug>(fzf-complete-file-ag)
    imap <c-x><c-l> <plug>(fzf-complete-line)

    " Advanced customization using autoload functions
    inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
"---------------------------------------------------------------------------------

" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

" Override Colors command. You can safely do this in your .vimrc as fzf.vim
" will not override existing commands.
command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
"---------------------------------------------------------------------------------


Commands
Command 	List
Files [PATH] 	Files (similar to :FZF)
GFiles [OPTS] 	Git files (git ls-files)
GFiles? 	Git files (git status)
Buffers 	Open buffers
Colors 	Color schemes
Ag [PATTERN] 	ag search result (ALT-A to select all, ALT-D to deselect all)
Rg [PATTERN] 	rg search result (ALT-A to select all, ALT-D to deselect all)
Lines [QUERY] 	Lines in loaded buffers
BLines [QUERY] 	Lines in the current buffer
Tags [QUERY] 	Tags in the project (ctags -R)
BTags [QUERY] 	Tags in the current buffer
Marks 	Marks
Windows 	Windows
Locate PATTERN 	locate command output
History 	v:oldfiles and open buffers
History: 	Command history
History/ 	Search history
Snippets 	Snippets (UltiSnips)
Commits 	Git commits (requires fugitive.vim)
BCommits 	Git commits for the current buffer
Commands 	Commands
Maps 	Normal mode mappings
Helptags 	Help tags 1
Filetypes 	File types

    Most commands support CTRL-T / CTRL-X / CTRL-V key bindings to open in a new tab, a new split, or in a new vertical split
    Bang-versions of the commands (e.g. Ag!) will open fzf in fullscreen
    You can set g:fzf_command_prefix to give the same prefix to the commands
        e.g. let g:fzf_command_prefix = 'Fzf' and you have FzfFiles, etc.

(1: Helptags will shadow the command of the same name from pathogen. But its functionality is still available via call pathogen#helptags(). ↩)
Customization
Global options

See README-VIM.md of the main fzf repository for details.

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

Command-local options

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

Advanced customization

You can use autoload functions to define your own commands.

" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

" Override Colors command. You can safely do this in your .vimrc as fzf.vim
" will not override existing commands.
command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

Mappings
Mapping 	Description
<plug>(fzf-maps-n) 	Normal mode mappings
<plug>(fzf-maps-i) 	Insert mode mappings
<plug>(fzf-maps-x) 	Visual mode mappings
<plug>(fzf-maps-o) 	Operator-pending mappings
<plug>(fzf-complete-word) 	cat /usr/share/dict/words
<plug>(fzf-complete-path) 	Path completion using find (file + dir)
<plug>(fzf-complete-file) 	File completion using find
<plug>(fzf-complete-file-ag) 	File completion using ag
<plug>(fzf-complete-line) 	Line completion (all open buffers)
<plug>(fzf-complete-buffer-line) 	Line completion (current buffer only)
Usage

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

Completion helper

fzf#vim#complete is a helper function for creating custom fuzzy completion using fzf. If the first parameter is a command string or a Vim list, it will be used as the source.

" Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')

For advanced uses, you can pass an options dictionary to the function. The set of options is pretty much identical to that for fzf#run only with the following exceptions:

    reducer (funcref)
        Reducer transforms the output lines of fzf into a single string value
    prefix (string or funcref; default: \k*$)
        Regular expression pattern to extract the completion prefix
        Or a function to extract completion prefix
    Both source and options can be given as funcrefs that take the completion prefix as the argument and return the final value
    sink or sink* are ignored

" Global line completion (not just open buffers. ripgrep required.)
inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
  \ 'prefix': '^.*$',
  \ 'source': 'rg -n ^ --color always',
  \ 'options': '--ansi --delimiter : --nth 3..',
  \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

Reducer example

function! s:make_sentence(lines)
  return substitute(join(a:lines), '^.', '\=toupper(submatch(0))', '').'.'
endfunction

inoremap <expr> <c-x><c-s> fzf#vim#complete({
  \ 'source':  'cat /usr/share/dict/words',
  \ 'reducer': function('<sid>make_sentence'),
  \ 'options': '--multi --reverse --margin 15%,0',
  \ 'left':    20})

Status line of terminal buffer

When fzf starts in a terminal buffer (see fzf/README-VIM.md), you may want to customize the statusline of the containing buffer.
Hide statusline

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

Custom statusline

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction