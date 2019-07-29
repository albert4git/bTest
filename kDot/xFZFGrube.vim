
        "####GRUBE#################################################################################
        " Advanced customization using autoload functions
        inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
        "inoremap <expr> <c-k> fzf#vim#complete('cat /usr/share/dict/words')

        "==========================================================================================
        " Insert mode completion
        imap <c-k> <plug>(fzf-complete-word)
        imap <c-f> <plug>(fzf-complete-path)
        imap <c-j> <plug>(fzf-complete-file-ag)
        imap <c-l> <plug>(fzf-complete-line)
        "==========================================================================================
        imap <expr><C-k> fzf#vim#complete#word({'left': '18%'})
        imap <C-l> <plug>(fzf-complete-line)
        "==========================================================================================
        


        function! s:make_sentence(lines)
                return substitute(join(a:lines), '^.', '\=toupper(submatch(0))', '').'.'
        endfunction

        inoremap <expr> <c-q> fzf#vim#complete({
                                \ 'source':  'cat /usr/share/dict/words',
                                \ 'reducer': function('<sid>make_sentence'),
                                \ 'options': '--multi --reverse --margin 15%,0',
                                \ 'left':    20})




        autocmd! FileType fzf
        autocmd  FileType fzf set laststatus=0 noshowmode noruler
                                \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


        function! s:fzf_statusline()
                " Override statusline as you like
                highlight fzf1 ctermfg=161 ctermbg=251
                highlight fzf2 ctermfg=23 ctermbg=251
                highlight fzf3 ctermfg=237 ctermbg=251
                setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
        endfunction

        autocmd! User FzfStatusLine call <SID>fzf_statusline()

       "=====================================================================================
       nnoremap <C-P> :MyFind0<CR>
       nnoremap <Leader><C-P> :MyFind1<CR>
       command! -bang -nargs=* MyFind0 call MyFind(0, <q-args>, <bang>0)
       command! -bang -nargs=* MyFind1 call MyFind(1, <q-args>, <bang>0)
       function! MyFind(numArg, qArg, bangArg)
               let cmd='rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!{.git,node_modules}/*" --color "always" '
               if a:numArg == 1
                       let cmd.='--no-ignore '
               endif
               call fzf#vim#grep(cmd.shellescape(a:qArg), 1,
                                       \ a:bangArg ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
                                       \         : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
                                       \ a:bangArg)
       endfunction

       "============================================================================================

       "============================================================================================
       function! s:git_other_branch()
               return split(system("git branch | grep -v '*' | tr -d ' '"))
       endfunction

       function! s:git_ls_branch_diff(branch)
               return split(system('git diff-tree --no-commit-id --name-only -r --diff-filter=ACMR '.a:branch.'..HEAD'))
       endfunction

       function! s:fzf_git_ls_branch_diff(branch)
               call fzf#run({
                                       \   'source': <sid>git_ls_branch_diff(a:branch),
                                       \   'sink': 'e',
                                       \   'options': '+m',
                                       \   'down': '~40%'
                                       \})
       endfunction

       nnoremap <silent> <Leader>b :call fzf#run({
                               \   'source': <sid>git_other_branch(),
                               \   'sink': function('<sid>fzf_git_ls_branch_diff'),
                               \   'options': '+m',
                               \   'down': '~40%'
                               \})<CR>
       "============================================================================================
       " function! Sink(line)
       "         call fzf#run({'sink': function('Sink'), 'right': '30%'})
       "         if has('nvim')
       "                 call feedkeys('i', 'n')
       "         endif
       " endfunction
       "============================================
       command! -bang -nargs=? Zbb call fzf#run({
                               \'source': 'ag "<args>"',
                               \'sink': function('Sink'),
                               \'right': '30%'})

       "###GRUBE####################################################################################

       ""============================================================================================
       " function! s:make_sentence(lines)
       "         return substitute(join(a:lines), '^.', '\=toupper(submatch(0))', '').'.'
       " endfunction

       " inoremap <expr> <C-q> fzf#vim#complete({
       "                         \ 'source':  'cat /usr/share/dict/words',
       "                         \ 'reducer': function('<sid>make_sentence'),
       "                         \ 'options': '--multi --reverse --margin 15%,0',
       "                         \ 'left':    20})

       "============================================================================================
        command! -bang MyStuff
                                \ call fzf#run(fzf#wrap('my-stuff', {'dir': '~/git/'}, <bang>0))

       "============================================================================================
       "================
       "=========

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

       "=========
       "================
