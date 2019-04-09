
"===============================================================================================================

function! WrapWordWith()
python3 << endPython

import vim
from itertools import dropwhile

def python_input(message = 'input'):
    vim.command('call inputsave()')
    vim.command("let user_input = input('" + message + ": ')")
    vim.command('call inputrestore()')
    return vim.eval('user_input')

def wrap_with():
    the_chars = {"[": "]", "['": "']", '["': '"]', "(": ")", "('": "')", '("': '")', "": ")"}
    the_word = vim.eval('expand("<cword>")')
    current_line = vim.current.line
    wrap_name = python_input("Wrap with")
    cursor_pos = vim.current.window.cursor
    open_char_gen = dropwhile(lambda x: x not in ["[", "(", "'", '"'], wrap_name)
    open_char = "".join(open_char_gen)
    courtesy_opener = "" if open_char else "("
    vim.current.buffer[cursor_pos[0] - 1] = current_line.replace(the_word, "{}{}{}{}".format(wrap_name, courtesy_opener, the_word, the_chars[open_char]))

wrap_with()

endPython
endfunction

   Alf ([Borman])

command! WrapWith call WrapWordWith()
nnoremap ;w :WrapWith<CR>
"let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Wrap word under cursor with method <Leader>ww', 'normal <Leader>ww']]
"===============================================================================================================


command! WrapWordWith call WrapWordWith()
nnoremap ;w :WrapWordWith<CR>
cabbrev W2 call WrapWordWith()<CR>
"let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Wrap word under cursor with method <Leader>ww', 'normal <Leader>ww']]
"===============================================================================================================

        VimTip	{{{1 692: runtime syntax check for php
        map <C-B> :!php -l %<CR>

        " Indent from insert mode
        imap <c-l> <c-o>gi
        " Substitute
        nnoremap <C-s> :%s/
        " InsertUperCase
        inoremap <C-u> <esc>mzgUiw`za

        "===================================================================================================
        nmap \sh :source ~/.vim/stuff/vimsh/vimsh.vim<enter>
        nmap \te :source ~/.vim/stuff/tetris.vim<enter>
        nmap \tl :source ~/.vim/stuff/taglist.vim<enter>:Tlist<enter>
        nmap \sc :runtime autoload/syntaxcomplete.vim<enter>
        nmap \pb :ProjectBrowse .<enter>
        nmap \ss :set spell<enter>
        nmap \us :set nospell<enter>
        nmap \sw :set wrap<enter>
        nmap \uw :set nowrap<enter>
        nmap \ls1 :set ls=1<enter>
        nmap \ls2 :set ls=2<enter>
        "in case i forget

        "Use this vmap to enclose a block with fold markers:
        vmap <leader>v mz:<esc>'<OXXX <esc>'>oXXX <esc>`z?XXX<cr>A<space>

        map <A-e> :!echo <cword> \| ispell -d british -a -- <return>
        map <A-d> :!echo <cword> \| ispell -d danish -a -- <return>


        "VimTip{{{1 792: Preloading registers
        let @s="%!sort -u"
        " will reverse all the lines in a file. Useful for certain files like logs.
        let @r="g/^/m0"

        "---LineTransporter------------------------------------------------------------------------
        nnoremap <C-down> :m .+1<CR>==
        nnoremap <C-up> :m .-2<CR>==
        "---------------------------------------------------------------
        " <A-k>   Move current line/selection up
        " <A-j>   Move current line/selection down
        " <A-h>   Move current character/selection left
        " <A-l>   Move current character/selection right

        "---------------------------------------------------------------------------------- 
                " Tabularize {
                " nmap <Leader>a& :Tabularize /&<CR>
                " vmap <Leader>a& :Tabularize /&<CR>
                " nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
                " vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
                " nmap <Leader>a=> :Tabularize /=><CR>
                " vmap <Leader>a=> :Tabularize /=><CR>
                " nmap <Leader>a: :Tabularize /:<CR>
                " vmap <Leader>a: :Tabularize /:<CR>
                " nmap <Leader>a:: :Tabularize /:\zs<CR>
                " vmap <Leader>a:: :Tabularize /:\zs<CR>
                " nmap <Leader>a, :Tabularize /,<CR>
                " vmap <Leader>a, :Tabularize /,<CR>
                " nmap <Leader>a,, :Tabularize /,\zs<CR>
                " vmap <Leader>a,, :Tabularize /,\zs<CR>
                " nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
                " vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
                " }
        "---------------------------------------------------------------------------------- 

        " tabularize around : or =
        vnoremap <Leader>i :Tabularize /:\zs/l0r1<CR>
        vnoremap <Leader>tt :Tabularize /:\zs/l0r1<CR>
        vnoremap <Leader>t= :Tabularize /=\zs/l0r1<cr>
        vnoremap <Leader>t, :Tabularize /,\zs/l0r1<cr>
        nnoremap <Leader>t :Tabularize<CR>
"===================================================================================================
" function! Open(url)
"         silent execute '!open ' . a:url
"         redraw!
" endfunction
" autocmd BufEnter term://* nnoremap <buffer> gx viW"xy \| :call Open(@x)<CR>

"===================================================================================================
"So in normal mode it pressing \ it selects current word and open it as address in web browser.
"nmap \\ yiW:!xdg-open <c-r>" &<cr>
"===================================================================================================

" function! HandleURL()
"         let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
"         echo s:uri
"         if s:uri != ""
"                 silent exec "!xdg-open '".s:uri."'"
"         else
"                 echo "No URI found in line."
"         endif
" endfunction
" map <leader>o :call HandleURL()<cr>

" nmap <leader>g :call Google()<CR>
" fun! Google()
"     let keyword = expand("<cword>")
"     let url = "http://www.google.com/search?q=" . keyword
"     let path = "C:/Program Files/Mozilla Firefox/"
"     exec 'silent !"' . path . 'firefox.exe" ' . url
" endfun
