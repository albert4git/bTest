  "============================================================================

   " statusline

   "============================================================================

   let g:currentmode={

       \ 'n'  : 'N ',

       \ 'no' : 'N·Operator Pending ',

       \ 'v'  : 'V ',

       \ 'V'  : 'V·Line ',

       \ '' : 'V·Block ',

       \ 's'  : 'Select ',

       \ 'S'  : 'S·Line ',

       \ '' : 'S·Block ',

       \ 'i'  : 'I ',

       \ 'R'  : 'R ',

       \ 'Rv' : 'V·Replace ',

       \ 'c'  : 'Command ',

       \ 'cv' : 'Vim Ex ',

       \ 'ce' : 'Ex ',

       \ 'r'  : 'Prompt ',

       \ 'rm' : 'More ',

       \ 'r?' : 'Confirm ',

       \ '!'  : 'Shell ',

       \ 't'  : 'Terminal '

       \}

   function! ChangeStatuslineColor()

     if (mode() =~# '\v(n|no)')

       exe 'hi! StatusLine ctermfg=008'

     elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')

       exe 'hi! StatusLine ctermfg=005'

     elseif (mode() ==# 'i')

       exe 'hi! StatusLine ctermfg=004'

     else

       exe 'hi! StatusLine ctermfg=006'

     endif

     return ''

 endfunction

 function! LinterStatus() abort

     let l:counts = ale#statusline#Count(bufnr(''))

     let l:all_errors = l:counts.error + l:counts.style_error

     let l:all_non_errors = l:counts.total - l:all_errors

     return l:counts.total == 0 ? 'OK' : printf(

     \   'W:%d E:%d',

     \   all_non_errors,

     \   all_errors

     \)

 endfunction

set statusline=

set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color

set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode

set statusline+=\|\ 

set statusline+=%(%{&buflisted?bufnr('%'):''}\ \|\ %)

set statusline+=%< " Truncate line here

set statusline+=%f\  " File path, as typed or relative to current directory

set statusline+=%{&modified?'+\ ':''}

set statusline+=%{&readonly?'\ ':''}

set statusline+=%= " Separation point between left and right aligned items

set statusline+=[%{&filetype!=#''?&filetype:'none'}]

set statusline+=%2v: " Virtual column number

set statusline+=%3l

set statusline+=\ [%2p%%] " Percentage through file in lines as in |CTRL-G|

set statusline+=%{LinterStatus()}
