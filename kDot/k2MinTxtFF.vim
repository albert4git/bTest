:help various-motions
:help sign-support
:help virtualedit
:help map-alt-keys
:help error-messages
:help development
:help tips
:help 24.8
:help 24.9
:help usr_12.txt
:help usr_26.txt
:help usr_32.txt
:help usr_42.txt

        " Plug 'unblevable/quick-scope'
        " let g:qs_highlight_on_keys = ['f', 'F']
        " augroup qs_colors
        "         autocmd!
        "         autocmd ColorScheme * highlight QuickScopePrimary  ctermfg=155 cterm=underline
        "         autocmd ColorScheme * highlight QuickScopeSecondary  ctermfg=81 cterm=underline
        " augroup END

#### 3. Use Quickfix
* **Move your cursor inside Quickfix window to use these key bindings**

| Key | Action | Note | 
| --- | --- | --- | 
| s | `:CodeQueryAgain Symbol` | |
| x | `:CodeQueryAgain Text` | use `:Ack!` by default. #1 | 
| c | `:CodeQueryAgain Call` | |
| r | `:CodeQueryAgain Caller` | |
| e | `:CodeQueryAgain Callee` | |
| d | `:CodeQueryAgain Definition` | |
| C | `:CodeQueryAgain Class` | |
| M | `:CodeQueryAgain Member` | |
| P | `:CodeQueryAgain Parent` | |
| D | `:CodeQueryAgain Child` | |
| m | `:CodeQueryMenu Unite Magic` | |
| q | `:cclose` | |
| \ | `:CodeQueryFilter` | |
| p | `<CR><C-W>p` | Preview |
| u | `:colder \| CodeQueryShowQF` | Older Quickfix Result | 
| \<C-R> | `:cnewer \| CodeQueryShowQF` | Newer Quickfix Result | 
" <>hall1
" <>kosmos
" <>chemie
" <>boy

<mods>  The command modifiers, if specified. Otherwise, expands to
nothing. Supported modifiers are |:aboveleft|, |:belowright|,
|:botright|, |:browse|, |:confirm|, |:hide|, |:keepalt|,
|:keepjumps|, |:keepmarks|, |:keeppatterns|, |:leftabove|,
|:lockmarks|, |:noswapfile| |:rightbelow|, |:silent|, |:tab|,
|:topleft|, |:verbose|, and |:vertical|.
Note that these are not yet supported: |:noautocmd|,
|:sandbox| and |:unsilent|.
Examples: >

command! -nargs=+ -complete=file MyEdit
                        \ for f in expand(<q-args>, 0, 1) |
                        \ exe '<mods> split ' . f |
                        \ endfor

function! SpecialEdit(files, mods)
        for f in expand(a:files, 0, 1)
                exe a:mods . ' split ' . f
        endfor
endfunction
command! -nargs=+ -complete=file Sedit
                        \ call SpecialEdit(<q-args>, <q-mods>)

"--------------------------------------------------------------------------------- 
:inoremap <C-E> <C-X><C-E>
:inoremap <C-Y> <C-X><C-Y>
   
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 

Sometimes you want to write a mapping that makes a change somewhere in the
file and restores the cursor position, without scrolling the text.  For
example, to change the date mark in a file: >
   :map <F2> msHmtgg/Last [cC]hange:\s*/e+1<CR>"_D"=strftime("%Y %b %d")<CR>p'tzt`s

Breaking up saving the position:
	ms	store cursor position in the 's' mark
	H	go to the first line in the window
	mt	store this position in the 't' mark

Breaking up restoring the position:
	't	go to the line previously at the top of the window
	zt	scroll to move this line to the top of the window
	`s	jump to the original position of the cursor
"--------------------------------------------------------------------------------- 
To count how often any pattern occurs in the current buffer use the substitute
command and add the 'n' flag to avoid the substitution.  The reported number
of substitutions is the number of items.  Examples: >

	:%s/./&/gn		characters
	:%s/\i\+/&/gn		words
	:%s/^//n		lines
	:%s/the/&/gn		"the" anywhere
	:%s/\<the\>/&/gn	"the" as a word

"--------------------------------------------------------------------------------- 
	Create a file "subs.vim" containing substitute commands and a :update
	command: >
		:%s/Jones/Smith/g
		:%s/Allen/Peter/g
		:update
<
	Execute Vim on all files you want to change, and source the script for
	each argument: >

		vim *.let
		argdo source subs.vim
"--------------------------------------------------------------------------------- 


       "========================================================
       " autocmd! FileType fzf
       "   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
       "   :Ag! - Start fzf in fullscreen and display the preview window above
       command! -bang -nargs=* FFAg
                               \ call fzf#vim#ag(<q-args>,
                               \                 <bang>0 ? fzf#vim#with_preview('up:60%')
                               \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
                               \                 <bang>0)

       " Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
       command! -bang -nargs=* FFRg
                               \ call fzf#vim#grep(
                               \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
                               \   <bang>0 ? fzf#vim#with_preview('up:60%')
                               \           : fzf#vim#with_preview('right:50%:hidden', '?'),
                               \   <bang>0)

       " Likewise, Files command with preview window
       command! -bang -nargs=? -complete=dir Files
                               \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
       "========================================================

       "============================================================================================
        "" Look for files under current directory
        " :FZF
        "" Look for files under your home directory
        " :FZF ~
        "" With options
        " :FZF --no-sort --reverse --inline-info /tmp
        "" Bang version starts fzf in fullscreen mode
        " :FZF!
       "============================================================================================

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
"==================================================================================================

        "----------------------------------------------------------------------------------
        " :Delete: Delete a buffer and the file on disk simultaneously.
        " :Unlink: Like :Delete, but keeps the now empty buffer.
        " :Move: Rename a buffer and the file on disk simultaneously.
        " :Rename: Like :Move, but relative to the current file's containing directory.
        " :Chmod: Change the permissions of the current file.
        " :Mkdir: Create a directory, defaulting to the parent of the current file.
        " :Cfind: Run find and load the results into the quickfix list.
        " :Clocate: Run locate and load the results into the quickfix list.
        " :Lfind/:Llocate: Like above, but use the location list.
        " :Wall: Write every open window. Handy for kicking off tools like guard.
        " :SudoWrite: Write a privileged file with sudo.
        " :SudoEdit: Edit a privileged file with sudo.
"-----------------------------------------------------------------"
" :Keep                                                           "
" :Reject                                                         "
" :Restore                                                        "
" :Doline s/^/--                                                  "
" :SaveList                                                       "
" :SaveList curlist                                               "
" :SaveListAdd curlist                                            "
" :LoadList curlist                                               "
" :ListLists                                                      "


" nmap <Leader>f :GFiles<CR>
" nmap <Leader>F :Files<CR>
" nmap <Leader>t :BTags<CR>
" nmap <Leader>T :Tags<CR>
" nmap <Leader>m :Methods<CR>
" nmap <Leader>b :Buffers<CR>
" nmap <Leader>l :BLines<CR>
" nmap <Leader>L :Lines<CR>
" nmap <Leader>h :History<CR>
" nmap <Leader>H :GHistory<CR>
" nmap <Leader>: :History:<CR>
" nmap <Leader>M :Maps<CR>
" nmap <Leader>C :Commands<CR>
" nmap <Leader>' :Marks<CR>
" nmap <Leader>s :Filetypes<CR>
" nmap <Leader>S :Snippets<CR>
" nmap <Leader><Leader>h :Helptags!<CR>

        "---------------------------------------------------------------
        "nnoremap T :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
        "================================================================="
        "  s - open entry in a new horizontal window                      "
        "  v - open entry in a new vertical window                        "
        "  t - open entry in a new tab                                    "
        "  o - open entry and come back                                   "
        "  O - open entry and close the location/quickfix window          "
        "  p - open entry in a preview window                             "
        "================================================================="
"==================================================================================================
" nmap <Leader>s :FFFiletypes<CR>
" nmap <Leader>m :FFMaps<CR>
" nmap <Leader>: :FFHistory:<CR>
" nmap <Leader>/ :FFHistory/<CR>
" nmap <Leader>C :FFCommands<CR>
" nmap <Leader>H :FFHelptags!<CR>
" nmap <Leader>a :FFAg<Space>
" nmap <Leader>l :FFBLines<CR>
" nmap <Leader>L :FFLines<CR>
" nmap <Leader>k :FFMarks<CR>
" nmap <Leader>t :FFBTags<CR>
" nmap <Leader>T :FFTags<CR>
" nmap <Leader>b :FFBuffers<CR>
" nmap <Leader>h :FFHistory<CR>
" nmap <Leader>f :FFGFiles<CR>
" nmap <Leader>F :FFFiles<CR>

"==================================================================================================


"==================================================================================================
"::::::::::::::::::::::::::::::-STOP1-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
" nnoremap <c-p> :Files<CR>
" nnoremap <c-l> :Lines<CR>
" nnoremap <c-c> :Commits<CR>
" nnoremap <c-k> :Commands<CR>
"---!!!???----------------------------------------------------------------------------------
" <leader>gl to view history
" ]q and [q to move between versions (unimpaired.vim)
" <leader>gd to open diff
" :q to end diff
" <leader>ge to return to my working copy.
"==================================================================================================
" *[q*     |:cprevious|
" *]q*     |:cnext|
" *[Q*     |:cfirst|
" *]Q*     |:clast|
" *[l*     |:lprevious|
" *]l*     |:lnext|
" *[L*     |:lfirst|
" *]L*     |:llast|
" *[<C-L>* |:lpfile|
" *]<C-L>* |:lnfile|
"==================================================================================================

"==================================================================================================

        "==================================================================================
        "::::::::::::::::::::::::::::::-UNITE-:::::::::::::::::::::::::::::::::::::::::::::
        "==================================================================================
        nnoremap <C-p> :Unite help buffer file_mru file file_rec bookmark <CR>
        nnoremap \\ :Unite help buffer file_mru file file_rec bookmark <CR>
        nnoremap <Leader>\ :Unite -silent -vertical -winwidth=40  -direction=botright -toggle outline<CR>
        nnoremap <Leader>h :UniteWithCursorWord -silent help<CR>
        nnoremap <Leader>u :Unite help file_mru file buffer file_rec bookmark <CR>
        " nnoremap <Leader>r :<C-u>Unite -buffer-name=register register<CR>
        " nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        nnoremap <Leader>j :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>' :Unite bookmark <CR>
        "------------------------------------------------------------------
        noremap  ,r :Ranger <CR>
        "==========================================================================================
        "nnoremap <Leader>' <Plug>BookmarkShowAll

       "============================================================================================
        command! FZFLib call fzf#run({'source': 'find ~/git/bTest/  -type f', 'sink':  'edit'})

       "============================================================================================
        command! FZFLL call fzf#run({'source': split(system( "fd vim$")), 'sink': 'e', 'down': '40%'})

       "============================================================================================
        command! FZFLS call fzf#run({'source': 'git ls-files', 'sink': 'e', 'left': '40%'})
       "============================================================================================


       "============================================================================================
       "=========
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
       "=========
       "============================================================================================

"=================================================================================================
"=================================================================================================
Configure

sample .vimrc:

let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/Code")

Project  'scratch'

Project  'dotfiles'
File     'dotfiles/vimrc'                       , 'vimrc'
File     'dotfiles/gvimrc'                      , 'gvimrc'
File     'dotfiles/zshrc'                       , 'zshrc'

Project  'gollum'
File     'gollum/Todo.md'                       , 'todo'
Callback 'gollum'                               , 'RemoveTextWidth'

function! RemoveTextWidth(...) abort
  setlocal textwidth=0
endfunction

Project  'octopress'
Project  'gsource'
Project  'markup'
Project  'glib'
Project  'reloadlive'
Project  'flashcards'
Project  'leitner'
Callback 'leitner'                              , ['AddSpecToPath', 'RemoveTextWidth']

function! AddSpecToPath(tile) abort
  setlocal path+=spec
endfunction

Project  '~/.vim/bundle/vim-fenced-code-blocks' , 'fenced'
Project  '~/.vim/bundle/vim-project'            , 'project'
Project  '~/.vim/bundle/vim-bookmarks'          , 'bookmarks'
Project  '~/.vim/bundle/ctrlp.vim'              , 'ctrlp'
Project  '~/.vim/bundle/ctrlp-z'                , 'ctrlp-z'
Project  '~/.vim/bundle/vim-eval'               , 'eval'

Interactive

From the cmdline mode.

ProjectPath uses the cwd and the arguments are not quoted.

:ProjectPath .
:ProjectPath /etc myconfig
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 

" Autocmds {
    autocmd FileType javascript noremap <buffer>  <Leader>js :call JsBeautify()<cr>
    autocmd FileType html noremap <buffer> <Leader>js :call HtmlBeautify()<cr>
    autocmd FileType css noremap <buffer> <Leader>js :call CSSBeautify()<cr>
    autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
    autocmd FileType gitcommit setlocal colorcolumn=50

    au BufNewFile,BufRead *.wsgi set filetype=python
    augroup golang_au
        autocmd!
        " Display real tabs like 4 spaces, don't list trailing characters
        au BufNewFile,BufReadPost *.go setl noexpandtab tabstop=4 nolist
    augroup END
    augroup javascript_au
        autocmd!
        " Add debugger key command for JS
        au BufNewFile,BufReadPost *.js nnoremap <Leader>b :call InsertDebugLine("debugger;", line('.'))<return>
    augroup END
    augroup less_au
        autocmd!
        " Function to compile Less to CSS
        function! LessToCss()
            let current_file = shellescape(expand('%:p'))
            let filename = shellescape(expand('%:r'))
            let command = "silent !lessc " . current_file . " " . filename . ".css"
            execute command
        endfunction
        " Auto-compile less files on save.
        autocmd BufWritePost,FileWritePost *.less call LessToCss()
    augroup END
    augroup python_au
        autocmd!
        " Add remote debugger key command for Python
        au BufNewFile,BufReadPost *.py nnoremap <Leader>rb :call InsertDebugLine("import rpdb; rpdb.set_trace()  # XXX BREAKPOINT", line('.'))<return>
        au BufNewFile,BufReadPost *.py nnoremap <Leader>bb :call InsertDebugLine("import pudb; pudb.set_trace()  # XXX BREAKPOINT", line('.'))<return>
    augroup END
    augroup reopen_au
        autocmd!
        " Re-open VIM to the last spot you had open.
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
            \| exe "normal! g'\"" | endif

        " Jump to the top of git COMMIT_EDITMSG files.
        au BufReadPost COMMIT_EDITMSG
        \ exe "normal! gg"
    augroup END
    augroup unite_au
        autocmd!
        function! s:unite_settings()
            " Put settings that execute inside the unite buffer here
        endfunction
        autocmd FileType unite call s:unite_settings()
    augroup END
" }
"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 

python3 << EOF import vim import git def is_git_repo(): try: _ = git.Repo('.',
search_parent_directories=True).git_dir return "1" except: return "0"
vim.command("let g:pymode_rope = " + is_git_repo()) EOF
"---------------------------------------------------------------------------------
"--------------------------------------------------------------------------------- 
You should also install pynvim, which is the Python client and plugin host for
Neovim. You can install it with pip:

pip install pynvim

Finally, you should set the variable g:python3_host_prog to the location of
Python executable. If your Python executable path is ~/anaconda3/bin/python,
you should add the following setting in your init.vim:

let g:python3_host_prog=expand('~/anaconda3/bin/python')

After that, open Neovim and run :checkhealth provider and make sure there is
no error in the part about Python 3. A sample output is shown below:

## Python 3 provider (optional)
  - INFO: Using: g:python3_host_prog = "D:/Anaconda/python"
  - INFO: Executable: D:\Anaconda\python
  - INFO: Python version: 3.6.5
  - INFO: pynvim version: 0.3.2
  - OK: Latest pynvim is installed.

"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
" from
" http://codeseekah.com/2012/03/04/vim-scripting-with-python-lookup-ip-country/

python << en

import vim, urllib

def getCountryFromIP( ip ):
  # use the minimal http://www.hostip.info/use.html API
  return urllib.urlopen('http://api.hostip.info/country.php?ip='+ip).read()

def getWordUnderCursor():
  return vim.eval("expand('')")
  
def lookupIPUnderCursor():
  ip = getWordUnderCursor()
  print "Looking up " + ip + "..."
  country = getCountryFromIP( ip )
  vim.command( "redraw" ) # discard previous messages
  print "Country: " + country
en


nmap  .IP :python lookupIPUnderCursor()

"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
"===============================================================================================================
" generate a random integer from range [Low, High] using Python
function! RandInt(Low, High) abort
python3 << EOF
import vim
import random

# using vim.eval to import variable outside Python script to python
idx = random.randint(int(vim.eval('a:Low')), int(vim.eval('a:High')))

# using vim.command to export variable inside Python script to vim script so
# we can return its value in vim script
vim.command("let index = {}".format(idx))
EOF

return index
endfunction

let s:candidate_airlinetheme = ['alduin', 'ayu_mirage', 'base16_flat',
    \ 'monochrome', 'base16_grayscale', 'lucius', 'base16_tomorrow',
    \ 'base16color', 'biogoo', 'distinguished', 'gruvbox', 'jellybeans',
    \ 'luna', 'raven', 'seagull', 'solarized_flood', 'term', 'vice', 'zenburn']

let s:idx = RandInt(0, len(s:candidate_airlinetheme)-1)
let s:theme = s:candidate_airlinetheme[s:idx]
let g:airline_theme=s:theme


"===============================================================================================================
:call Facebook()
Now, the way you call the function is not so good. So we define a command:
command! -nargs=0 Facebook call Facebook() 


"===============================================================================================================
 tpope/vim-dadbod
"===============================================================================================================
:DB postgresql:///foobar
:DB redis:

If additional arguments are provided, they are interpreted as a query string to pass to the database. Results are displayed in a preview window.

:DB sqlite:myfile.sqlite3 select count(*) from widgets
:DB redis:/// CLIENT LIST

Give a range to run part or all of the current buffer as a query.

:%DB mysql://root@localhost/bazquux

Use < to pass in a filename.

:DB mongodb:///test < big_query.js

There's also a special assignment syntax for saving a URL to a Vim variable for later use.

:DB g:prod = postgres://user:pass@db.example.com/production_database
:DB g:prod drop table users

A few additional URL like formats are accepted for interop:

    :DB jdbc:sqlserver://...
    :DB dbext:profile=profile_name
    :DB dbext:type=PGSQL:host=...
    :DB $DATABASE_URL (with optional dotenv.vim support)
"===============================================================================================================
"===============================================================================================================
        " " <Leader>t 翻译光标下的文本，在命令行回显
        " nmap <silent> <Leader>t <Plug>Translate
        " vmap <silent> <Leader>t <Plug>TranslateV
        " " Leader>w 翻译光标下的文本，在窗口中显示
        " nmap <silent> <Leader>w <Plug>TranslateW
        " vmap <silent> <Leader>w <Plug>TranslateWV
        " " Leader>r 替换光标下的文本为翻译内容
        " nmap <silent> <Leader>r <Plug>TranslateR
        " vmap <silent> <Leader>r <Plug>TranslateRV
        " " Babylon English Chinese S.bgl 

        " 英 [yīng] (surname); England; English; a hero; brave; flower; leaf; petal
        " 英国 [yīng guó] Britain; England; English
        " 英文 [yīng wén] English (language)
        " 英语 [yīng yǔ] English (language)
        " 美国 [měi guó] America; American; USA; United States


        if exists('s:loaded_vimafter')
                silent doautocmd VimAfter VimEnter *
        else
                let s:loaded_vimafter = 1
                augroup VimAfter
                        autocmd!
                        autocmd VimEnter * source ~/.vim/after/vimrc.vim
                augroup END
        endif

        :Alias   -range   dg   <c-r>=&l:diff?"diffget":"dg"<cr>
        :Alias   -buffer  spl  setlocal\ spell<bar>setlocal\ spelllang=en
        :Alias            w!!  write\ !sudo\ tee\ >\ /dev/null\ %
        :Alias            F    find\ *<c-r>=Eatchar("\ ")<cr>
        :Alias            th   tab\ help
        :Alias            sft  setfiletype
        :Alias -range     il   ilist\ /\v/<left><c-r>=EatChar("\ ")<cr>
        :Alias -range     dl   dlist\ //<left><c-r>=EatChar("\ ")<cr>
        :Alias            g    Silent git
        :Alias            gbl  Silent\ tig\ blame\ +<c-r>=line('.')<cr>\ --\ %<c-left><c-left><left>
        :Alias -range     tl   !translate\ -no-warn\ -no-ansi\ -brief\ -to

"===============================================================================================================
"===============================================================================================================
