
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


        "####GRUBE#################################################################################
