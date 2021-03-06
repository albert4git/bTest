"---------------------------------------------------------------------------------
" how many occurrences of the current search pattern?           {{{2
command! -range=% CountMatches          <line1>,<line2>s///n
"---------------------------------------------------------------------------------
" die, trailing whitespace! die!                                {{{2
command! -range=% NukeTrailingWhitespace <line1>,<line2>s/\s\+$//
"---------------------------------------------------------------------------------
" where's that non-ascii character?                             {{{2
command! FindNonAscii                   normal /[^\x00-\x7f]<cr>
command! FindControlChars               normal /[\x00-\x08\x0a-\x1f\x7f]<cr>
"---------------------------------------------------------------------------------
" convert \uXXXX to actual characters                           {{{2
command! -range=% ExpandUnicode         <line1>,<line2>s/\\u\([0-9a-fA-F]\{4}\)/\=nr2char(str2nr(submatch(1), 16))/gc
"---------------------------------------------------------------------------------
" diffoff used to set wrap as a side effect                     {{{2
command! Diffoff                        diffoff | setlocal nowrap
"---------------------------------------------------------------------------------
" :TimeB SomeOtherCommand                                        {{{2
command! -nargs=+ -complete=command TimeB
        \ let start = reltime() |
        \ exec <q-args> |
        \ echomsg reltimestr(reltime(start)) . " seconds"

"===============================================================================================================
"=============================================PyF3==============================================================
"===============================================================================================================
command! ThePS call ThePythonSearcher()
function! ThePythonSearcher()
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
" xnoremap y :call EnhancedYank()<CR>
" xnoremap <Leader>" :call EnhancedYankToRegister()<CR>
" xnoremap <Leader>p "pp
" nnoremap <Leader>p "pp
"===============================================================================================================
function! MiniPy3()
python3 << EOF
import sys;
print(sys.version);
EOF
endfunction
command! -register MiniPy3 call MiniPy3()

"===============================================================================================================
"Examples:
":call Exec('buffers')
"This will include the output of :buffers into the current buffer.
"
"Also try:
":call Exek('ls')
":call Exek('autocmd')
"
funct! Exek(command)
    redir =>output
    silent exec a:command
    redir END
    let @o = output
    execute "put o"
    return ''
endfunct!

""++AAA++???++[TEMPLATE]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"" Utility functions
"function! GetSynUnder()
"        return synIDattr(synID(line('.'), col('.'), 1), 'name')
"endfunction

"function! GetCharUnder()
"        return strpart(getline('.'), col('.') - 1, 1)
"endfunction

"function! GetCharBefore(offset)
"        return strpart(getline('.'), col('.') - (a:offset + 1), 1)
"endfunction

"function! GetCharAfter()
"        return strpart(getline('.'), col('.'), 1)
"endfunction

"function! AtEnd()
"        return col('$') == col('.')
"endfunction

"function! GetStringBeforeCursor(offset)
"        return strpart(getline('.'), 0, col('.') - a:offset)
"endfunction

"function! GetStringAfterCursor()
"        return strpart(getline('.'), col('.'))
"endfunction

"function! GetWordBeforeCursor(keep_spaces)
"        let regexp = '^.*\(\<\w\+\)'
"        if !a:keep_spaces
"                let regexp .= '\s*'
"        endif
"        let regexp .= '$'
"        return substitute(GetStringBeforeCursor(0), regexp, '\1', '')
"endfunction

"function! GetExactWordBeforeCursor(offset)
"        return substitute(GetStringBeforeCursor(a:offset), '^.*\(\<\w\+\)\s*$', '\1', '')
"endfunction

"function! GetFirstWord()
"        return substitute(getline('.'), '^\W*\(\<\w\+\).*$', '\1', '')
"endfunction

"function! CountOccurances(haystack, needle)
"        let occurances = 0
"        let lastpos = 0
"        let firstiter = 1
"        while lastpos > -1
"                if firstiter
"                        let lastpos = match(a:haystack, a:needle, lastpos)
"                else
"                        let lastpos = match(a:haystack, a:needle, lastpos + 1)
"                endif
"                let firstiter = 0
"                if lastpos > -1
"                        let occurances = occurances + 1
"                endif
"        endwhile
"        return occurances
"endfunction

"function! InsideTag()
"        let str = GetStringBeforeCursor(0) . GetCharUnder()
"        return str =~ '^.*<[^/>]*$'
"endfunction

"function! InsideQuote(char)
"        let str = GetStringBeforeCursor(0) . GetCharUnder()
"        if !InsideTag()
"                let tags_complete = CountOccurances(str, '<[^/>]*>')
"                let tags_incomplete = CountOccurances(str, '<\w')
"                let tags = tags_incomplete - tags_complete
"                return (CountOccurances(str, a:char) - tags) % 2 != 0
"        else
"                return CountOccurances(str, a:char) % 2 != 0
"        endif
"endfunction

"" Insert ending characters
"function! InsertAtEnd(char)
"        let line = getline('.')
"        if line =~ a:char . '$'
"                return "\<Right>\<Left>"
"        else
"                let extra = ''
"                if AtEnd()
"                        let extra = "\<Right>"
"                endif
"                if line =~ ';\s*$'
"                        return "\<C-o>mk\<End>\<Left>i" . a:char . "\<C-o>`ki" . extra
"                else
"                        return "\<C-o>mk\<End>i" . a:char . "\<C-o>`ki" . extra
"                endif
"        endif
"endfunction

""::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"" Template and tag expansion
"function! ExpandTemplate(ignore_quote)
"        if a:ignore_quote || GetSynUnder() == 'htmlString' || (!InsideQuote("'") && !InsideQuote('"'))
"                let cword = GetExactWordBeforeCursor(1)
"                if exists('g:template' . &ft . cword)
"                        return "\<C-W>" . g:template{&ft}{cword}
"                elseif exists('g:template_' . cword)
"                        return "\<C-W>" . g:template_{cword}
"                endif
"        endif
"        return ExpandTag(' ')
"endfunction
"" inoremap <silent> <Space> <C-R>=ExpandTemplate(0)<CR>

""::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"" Vim templates
"let g:template{'vim'}{'f'} = "function! ()\<CR>endfunction\<Up>\<End>\<Left>\<Left>"
"let g:template{'vim'}{'r'} = "return "

"" Python templates
"let g:template{'python'}{'f'} = "def ():\<CR>\<Tab>pass\<Up>\<End>" . repeat("\<Left>", 3)
"let g:template{'python'}{'fi'} = "def __init__(self):\<CR>\<Tab>pass\<Up>\<End>" . repeat("\<Left>", 2)
"let g:template{'python'}{'cl'} = "class ():\<CR>\<Tab>pass\<Up>\<End>" . repeat("\<Left>", 3)
"let g:template{'python'}{'p'} = 'pass'
"let g:template{'python'}{'s'} = 'self.'
"let g:template{'python'}{'t'} = g:template{'python'}{'s'}
""::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

""++AAA9++}}}

"===============================================================================================================

"===============================================================================================================
