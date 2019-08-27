
" how many occurrences of the current search pattern?           {{{2
command! -range=% CountMatches          <line1>,<line2>s///n

" die, trailing whitespace! die!                                {{{2
command! -range=% NukeTrailingWhitespace <line1>,<line2>s/\s\+$//

" where's that non-ascii character?                             {{{2
command! FindNonAscii                   normal /[^\x00-\x7f]<cr>
command! FindControlChars               normal /[\x00-\x08\x0a-\x1f\x7f]<cr>

" convert \uXXXX to actual characters                           {{{2
command! -range=% ExpandUnicode         <line1>,<line2>s/\\u\([0-9a-fA-F]\{4}\)/\=nr2char(str2nr(submatch(1), 16))/gc

" diffoff used to set wrap as a side effect                     {{{2
command! Diffoff                        diffoff | setlocal nowrap

" See :help DiffOrig                                            {{{2
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis

" :Time SomeOtherCommand                                        {{{2
command! -nargs=+ -complete=command TimeB
        \ let start = reltime() |
        \ exec <q-args> |
        \ echomsg reltimestr(reltime(start)) . " seconds"


function! s:Margin(...)
        if a:0
                let &colorcolumn=join(range(a:1+1,a:1+256),",")
        else
                echo min(split(&colorcolumn, ',')) - 1
        endif
endf
command! -nargs=? -bar Margin  call s:Margin(<args>)
command! -bar MarginOff        set colorcolumn=


"===============================================================================================================
"===============================================================================================================

function! PrintCountry()
        python print("Hello from Python source code!")
        python3 print("Hello from Python3 source code!")
endfunction
command! -nargs=0 PrintCountry call PrintCountry()
"===============================================================================================================
"=============================================PP3===============================================================
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

command! WrapWordWith call WrapWordWith()
" nnoremap ;w :WrapWordWith<CR>
cabbrev w3 call WrapWordWith()<CR>
"===============================================================================================================
"===============================================================================================================

function! TheSilverSearcher()
python3 << endPython

import vim

def python_input(message = 'input'):
        vim.command('call inputsave()')
        vim.command("let user_input = input('" + message + ": ')")
        vim.command('call inputrestore()')
        return vim.eval('user_input')

def silver_search():
        search_args = python_input("Search For")
        if search_args:
                vim.command('silent grep! "{}"'.format(search_args))
                vim.command('redraw!')
                vim.command('redrawstatus!')
                vim.command('copen')

silver_search()

endPython
endfunction

command TheSS call TheSilverSearcher()

"===============================================================================================================
"===============================================================================================================
function! EnhancedYank() range
        normal! ""gvy
        let selection = getreg('"')
        let @p = selection
        let @+ = selection
endfunction

function! EnhancedYankToRegister()
        normal! ""gvy
        let selection = getreg('"')
        call inputsave()
        let g:regToYank = input('Register to yank to: ')
        call inputrestore()
        exe "let @" . g:regToYank . " = '" . selection . "'"
endfunction

"===============================================================================
" Function Keymappings
"===============================================================================
xnoremap y :call EnhancedYank()<CR>
xnoremap <Leader>" :call EnhancedYankToRegister()<CR>
xnoremap <Leader>p "pp
nnoremap <Leader>p "pp

"===============================================================================================================

function! MiniPy3()
python3 << EOF
import sys;
print(sys.version);
EOF
endfunction
command! -register MiniPy3 call MiniPy3()

"===============================================================================================================
function! ColorizeSignColumn()
python << endpython
import vim, struct, hashlib
fname = vim.eval("expand('%:t')")
hash_byte = hashlib.sha1(fname).hexdigest()[0]
fname_color = struct.unpack('B', hash_byte)[0]
vim.command(":hi SignColumn ctermbg={}".format(fname_color))
vim.command("autocmd FileType python highlight ColorColumn ctermbg={}".format(fname_color))
endpython
endfunction

command! CColorizeSignColumn call ColorizeSignColumn()
autocmd BufEnter * :call ColorizeSignColumn()
"===============================================================================================================
