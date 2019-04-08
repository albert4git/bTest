
"===================================================================================================
ab funcion function
ab funicton function
ab funciton function
ab fucntion function
ab dupate update
ab upate update
ab udpate update

iabbrev yyy "---------------------------------------------------------------------------------
iabbrev yyy1 "---------------------------------------------------------------------------------------------
iabbrev yyy2 "--------------------------------------------------------------------------------------------------{{{
iabbrev yyy3 "....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8....+....9....+...10<esc>
iabbrev AB Alf B.
iabbrev a@    albert@sv.com
iabbrev c@ Copyright 2018 Albert, all rights reserved.
autocmd FileType vim :iabbrev <buffer> iff if ()<left>
autocmd FileType c,cpp :iabbrev <buffer> iff if () { }<left>

iabbrev adate  <c-r>=strftime("%F")<cr>
iabbrev cdate  <c-r>=strftime("%c")<cr>

cabbrev sta vertical sta
cabbrev h vertical help
"===================================================================================================
iabbrev str START
iabbrev strt START
iabbrev stp STOP
iabbrev que question
iabbrev #i #include
iabbrev #d #define
iabbrev cmnt /*<CR><CR>*/<Up>

"===================================================================================================
function! EatChar(pat)
        let c = nr2char(getchar(0))
        return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
        execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction
function! MakeSpacelessBufferIabbrev(from, to)
        execute "iabbrev <silent> <buffer> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

call MakeSpacelessIabbrev('bb/',  'http://bitbucket.org/')
call MakeSpacelessIabbrev('gh/',  'http://github.com/')
call MakeSpacelessIabbrev('ghs/', 'http://github.com/sjl/')

