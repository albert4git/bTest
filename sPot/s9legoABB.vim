
"===================================================================================================
ab funcion function
ab funicton function
ab funciton function
ab fucntion function
ab teh the
ab fro for

iabbrev yyy "---------------------------------------------------------------------------------
iabbrev yyy1 "---------------------------------------------------------------------------------------------
iabbrev yyy2 "--------------------------------------------------------------------------------------------------{{{
iabbrev yyy3 "++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{<CR>"++AAAx++}}}

iabbrev yyy4 "======================================================================================================
iabbrev yyy5 ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

iabbrev a@    albert@sv.com
iabbrev c@ Copyright 2018 Albert, all rights reserved.

autocmd FileType vim :iabbrev <buffer> iff if ()<left>
autocmd FileType c,cpp :iabbrev <buffer> iff if () { }<left>

"===================================================================================================
iabbrev adate  <c-r>=strftime("%F")<cr>
iabbrev cdate  <c-r>=strftime("%c")<cr>

"===================================================================================================
:iab ff0 if ()<Left>
:iab ff1 for (i = 0; i < ; ++i)
"===================================================================================================

iabbrev str START
iabbrev stp STOP
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


"---------------------------------------------------------------------------------- 
let g:wrap_char = '#'
let g:wrap_char = '"'
command! BoxIt call BoxIt()
function! BoxIt() range
        let lines = getline(a:firstline,a:lastline)
        let maxl = 0
        for l in lines
                let maxl = len(l)>maxl? len(l):maxl
        endfor
        let h = repeat(g:wrap_char, maxl+4)
        for i in range(len(lines))
                let ll = len(lines[i])
                let lines[i] = g:wrap_char . ' ' . lines[i] . repeat(' ', maxl-ll) . ' ' . g:wrap_char
        endfor  
        let result = [h]
        call extend(result, lines)
        call add(result,h)
        execute a:firstline.','.a:lastline . ' d'
        let s = a:firstline-1<0?0:a:firstline-1
        call append(s, result)
endfunction

"============================================================
"-------- BoxMyCenter("GoldShnitt")--------------------------
"============================================================
" call BoxMy("Gold Stuck.chen")


command! BoxMyC call BoxMyC()

function! BoxMyC(...)
        " get the arguments properly 
        if (a:0 == 0) 
                let argString = "" 
                let argChar = "-" 
        elseif (a:0 == 1) 
                let argString = a:1 
                let argChar = "-"
        elseif (a:0 == 2) 
                let argString = a:1 
                let argChar = strpart(a:2, 0, 1)
        else 
                echom "Too many arguments" 
                return
        endif

        " Get the characters to use at the beginning and the end of the title
        let result = substitute(&commentstring, "commentstring=", "", "") 
        let resultList = split(result, "%s") 
        let Comment = resultList[0] 
        if (len(resultList)>1) 
                let EndComment = resultList[1] 
        else 
                let EndComment = Comment
        endif

        " create the comment title 
        let nb = (80 - strlen(argString) - len(Comment) - len(EndComment)) / 2 
        let i = 0 
        let commentString = argString

        while i < nb 
                let i = i + 1 
                let commentString = argChar . commentString . argChar
        endwhile

        " append one more char if necessary 
        if strlen(argString) % 2 != 0 
                let commentString = commentString . argChar 
        endif

        let commentString = Comment . commentString . EndComment

        " Put the title in the buffer 
        exe ":normal o" 
        exe ":normal i" . commentString

endfunction

"==========================================================================================
" We define <leader>b as a shortcut to create/delete a box.
" nnoremap <leader>b :<c-u>call BoxC()<cr>

" ############################################################################## 
" snow2
" ############################################################################## 

command! BoxC call BoxC()
function! BoxC()

        " PREPARATIONS

        " prefix is the number we hit before <leader>b
        let prefix=v:count1

        " We define the Firstchar() function that returns the first character
        " of the current line.
        function! Firstchar()
                execute "normal! _"
                return matchstr(getline('.'), '\%' . col('.') . 'c.')
        endfunction

        " We define the Gcc() function that comments an uncommented line.
        function! Gcc()
                if Firstchar() !=# s:commentchar
                        execute "normal gcc"
                endif
        endfunction

        " We define the InsertCommentChar() function that inserts a
        " comment character manually, because the gcc mapping is unable to
        " comment an empty line.
        function! InsertCommentChar()
                if getline('.') =~ '\v(\s*|^$)'
                        execute "normal! i\<c-r>a\e"
                endif
        endfunction

        " We store the character under the cursor inside the s:firstchar variable.
        let s:firstchar = Firstchar()

        " We open a new line.
        execute "normal! o"

        " We check whether this new line is empty and add the character 'a' in
        " this case.
        if getline('.') =~ '\v(\s*|^$)'
                execute "normal! ia\e"
        endif

        " We comment this new line.
        execute "normal gcc"

        " We store the comment character inside the s:commentchar variable.
        " For example, if we are in a python file, then s:commentchar = #
        let s:commentchar = Firstchar()

        " We delete this new line and go back where we were.
        execute "normal! ddk"

        " CREATION OF A BOX

        " If firstchar and commentchar are different, it means that we were not on
        " a commented line when we invoked the function. So we create a box.
        if s:firstchar !=# s:commentchar

                " We call the gcc mapping to comment the lines.
                execute "normal ".prefix."gcc"

                " We create the upper border and put the mark a on the line.
                execute "normal! O\ea  \e78i#\ema"

                " We create the lower border and put the mark b on the line.
                execute "normal! ".prefix."jo\ea  \e78i#\emb"

                " We put the comment character inside the register a.
                call setreg("a", s:commentchar)

                " We ask the global command to insert the comment character on every
                " empty line inside the box.
                'a,'b g/^$/call InsertCommentChar()

                " We go on the upper border and comment it if it's not.
                execute "normal! 'a"
                call Gcc()

                " Same thing for lower border.
                execute "normal! 'b"
                call Gcc()

        else

                " DESTRUCTION OF A BOX

                " If firstchar and commentchar are different, it means we were not on a
                " commented line when we invoked the function, thus we want to undo
                " a box, not create one.

                " First, we delete the borders and put the marks a and b around it.
                execute "silent! normal! ?###\rddma/###\rddkmb"

                " Then, we uncomment every line that was inside the box.
                'a,'b g/^/execute "normal gcc"

        endif

endfunction

"--------------------------------------------------------------------------------- 



