

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
