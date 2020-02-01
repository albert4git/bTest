
function MyCalc(str)
    return system("echo \'scale=" . g:MyCalcPresition . " ; print " . a:str . "\' | bc -l")
endfunction

" Control the precision with this variable
let g:MyCalcPresition = 2
" Use \C to replace a (block of) visual math expression(s) by the value of its computation
vmap <leader>C :B s/.*/\=MyCalc(submatch(0))/<cr>/<BS>
" Use \C= to add the value instead of replacing
vmap <leader>C= :B s/.*/\=submatch(0) . " = " . MyCalc(submatch(0))/<cr>/<BS>
" Try: :MyCalc 12.7 + sqrt(98)
command! -nargs=+ MyCalc :echo MyCalc("<args>")
" Try_also: :B s/.*/\=MyCalc("12.7 + " . submatch(0))/



function MyCalc(str)
    return system("echo \'scale=" . g:MyCalcPresition . " ; print " . a:str . "\' | bc -l")
endfunction

:B s/.*/\=MyCalc("12.7 + " . submatch(0))/

The expression will be replaced by its result ("22.63" in the example).
The marks '<,'> will appear behind the "B", but that is fine (block marks).
This is useful if you want to, say, add "12.7" to a (column of) number(s).
Observe that the numbers do not have to be integers, like with the <C-A> command.

Both methods work for block of expressions.
So, if you visually select the block

    12.7 + sqrt(98.7)
    57 + 12
    88
    1 == 0
    3*4 == 12
    s(4,2,3)

and type \C you will have the block replaced by the block

    22.63
    69
    88
    0
    1
    -.75

Obs: 's()' stands for the sine function in bc.

*** As a command line calculator:

3) In normal mode, type
:MyCalc 12.7 + sqrt(98.7)
You will get "22.63" in the command line.
This usage mode is similar to vimtip #1235, but doesn't need embedded python.

Requirements:
It uses Dr. Chip visual block plugin vis.vim (vimscript #1195),
and the pretty common UNIX/Linux command line calculator 'bc'
Do a 'man bc' in the shell to know its built-in functions, like 's()' above.
You can easily replace 'bc' by your favorite calculator program.
The precision of the calculator is controlled by the variable g:MyCalcPresition.


Now a question:
Can usage method 2 above be made more user friendly?
The syntax is not really intuitive for non-advanced vim users.
For example it would be nice to use it as
:B s/.*/\=MyCalc(12.7 + submatch(0))/
but this doesn't work, because it tries to
eval first '12.7 + submatch(0)' as a vim expression.

Enjoy!

    Luis.





"++AAA++[#IMODE]+++[VimOmni]++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        imap <expr><M-w> fzf#vim#complete#word({'left': '20%'})
        imap <M-l> <plug>(fzf-complete-line)
        "------------------------------------------------------------
        imap <expr> <M-0> fzf#vim#complete(fzf#wrap({
                                \ 'prefix': '^.*$',
                                \ 'source': 'rg -n ^ --color always',
                                \ 'options': '--ansi --delimiter : --nth 3..',
                                \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

        "**********************************************************************************

        silent! set complete& completeopt=menu infercase noshowfulltag
        "-----------------------------------------------------------------------------------
        " set completeopt+=menu
        " set completeopt+=preview
        " set completeopt=menuone,menu,longest,preview
        "-----------------------------------------------------------------------------------
        " ??? completefunc
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        set complete=.,w,b,t,i,u,kspell
        set complete+=k
        "==================================================================================
        "==================================================================================
        inoremap <silent> <C-o> <C-x><C-o>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-v> <C-x><C-v>
        inoremap <silent> <C-]> <C-x><C-]>
        inoremap <silent> <C-0> <C-x><C-k>
        "inoremap <silent> <C-l> <C-x><C-l>
        "inoremap <silent> <C-u> <C-x><C-u>
        "imap <C-j> <C-X><C-O>
        "set Ctrl+j in insert mode, like VS.Net
        "==================================================================================
        "----------------------------------------------------------------------------------
        inoremap <C-a> <C-o>^
        inoremap <C-e> <End>
        "------------------------------InsertMode Scroll-----------------------------------
        inoremap <M-j> <C-X><C-E>
        inoremap <M-k> <C-X><C-Y>
        "==================================================================================
        "------------------------------------------
        inoremap <M-;> <C-R>=InsertAtEnd(';')<CR>
        inoremap <M-,> <C-R>=InsertAtEnd(',')<CR>
        inoremap <M-d> <C-o>cb<Esc><Right>
        inoremap <C-d> <C-o>cw<Esc><Right>
        inoremap <C-U> <C-G>u<C-U>
"+++++++AAA++}}}
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        hi customGleich     ctermbg = 245 ctermfg=White  guibg=#333333 guifg=#00f5f5
        hi customHash     ctermbg   = 245 ctermfg=White  guibg=#333333 guifg=#6045f5
        hi customDP     ctermbg     = 245 ctermfg=White  guibg=#444444 guifg=#ff3f00
        hi customGrayD     ctermbg  = 245 ctermfg=White  guibg=#444444 guifg=#ddDDdd
        hi customBar     ctermbg    = 245 ctermfg=White  guibg=#333333 guifg=#ff15ee
        hi customStar     ctermbg   = 245 ctermfg=White  guibg=#880055 guifg=#ffff00
        hi customPlus      ctermbg  = 245 ctermfg=White  guibg=#70FF70 guifg=#FF1133
        hi customMinus     ctermbg  = 245 ctermfg=White  guibg=#333333 guifg=#70FF70
        "==================================================================================

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        hi customGleich     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#00f5f5
        hi customHash     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#6045f5
        hi customDP     ctermbg=245 ctermfg=White  guibg=#444444 guifg=#ff3f00
        hi customGrayD     ctermbg=245 ctermfg=White  guibg=#444444 guifg=#ddDDdd
        hi customBar     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#ff15ee
        hi customStar     ctermbg=245 ctermfg=White  guibg=#880055 guifg=#ffff00
        hi customPlus      ctermbg=245 ctermfg=White  guibg=#70FF70 guifg=#FF1133
        hi customMinus     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#70FF70
        "==================================================================================

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                hi customGleich     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#00f5f5
                " hi customHash     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#6045f5
                hi customDP     ctermbg=245 ctermfg=White  guibg=#444444 guifg=#ff3f00
                "hi customGrayD     ctermbg=245 ctermfg=White  guibg=#444444 guifg=#ddDDdd
                "hi customBar     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#ff15ee
                "hi customStar     ctermbg=245 ctermfg=White  guibg=#880055 guifg=#ffff00
                "hi customPlus      ctermbg=245 ctermfg=White  guibg=#70FF70 guifg=#FF1133
                "hi customMinus     ctermbg=245 ctermfg=White  guibg=#333333 guifg=#70FF70
        ""==================================================================================


" caw.vim"{{{
nmap gc <Plug>(caw:prefix)
xmap gc <Plug>(caw:prefix)
nmap gcc <Plug>(caw:i:toggle)
xmap gcc <Plug>(caw:i:toggle)
"}}}

"vim-boxdraw
" gc		|<Plug>(caw:prefix)|
" gcc		|<Plug>(caw:hatpos:toggle)|
" gci		|<Plug>(caw:hatpos:comment)|
" gcui	|<Plug>(caw:hatpos:uncomment)|
" gcI		|<Plug>(caw:zeropos:comment)|
" gcuI	|<Plug>(caw:zeropos:uncomment)|
" gca		|<Plug>(caw:dollarpos:comment)|
" gcua	|<Plug>(caw:dollarpos:uncomment)|
" gcw		|<Plug>(caw:wrap:comment)|
" gcuw	|<Plug>(caw:wrap:uncomment)|
" gcb		|<Plug>(caw:box:comment)|
" gco		|<Plug>(caw:jump:comment-next)|
" gcO		|<Plug>(caw:jump:comment-prev)|
