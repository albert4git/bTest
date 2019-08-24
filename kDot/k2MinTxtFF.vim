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
