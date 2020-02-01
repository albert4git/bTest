
"++AAA+++:Ex+:EX+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
" qa starts a recording in register 'a'. q stops it. @a repeats the recording. 5@a repeats
" -- complex diff parts of same file [N]
" :1,2yank a | 7,8yank b
" :new | put a | vnew | put b
"*********************************************************************************************
" -- inserting line number into file
" :g/^/exec "s/^/".strpart(line(".")."    ", 0, 4)
" will comment out lines  _pattern_
" :g/_pattern_/s/^/#/g
"*********************************************************************************************
" vim -c "%s/ABC/DEF/ge | update" file1.c -- execute multiple command on a single file
" vim -s "convert.vim" file.c -- Automate editing of a file (Ex commands in convert.vim)
" gvim -u NONE -U NONE -N -- load VIM without .vimrc and plugins (clean VIM) e.g. for HUGE files
"*********************************************************************************************
" -- format a mysql query
" :%s#\<from\>\|\<where\>\|\<left join\>\|\<\inner join\>#\r&#g
" select * from aTable where ID >9
"*********************************************************************************************
" -- sub "fred" with contents of register "a"
" :s/fred/<c-r>a/g
" -- Search for FRED AND JOE in any ORDER!
" /.*fred\&.*joe
" /^[A-J]/
" /<CTRL-r><CTRL-w>  pull the word under the cursor into search.
"*********************************************************************************************
" -- delete html tags, leave text (non-greedy)
" :%s#<[^>]\+>##g
" --reverse fields separated : by
" :s/\(.*\):\(.*\)/\2 -- \1/
" -- delete multiple duplicate lines [N]
" :%s/^\(.*\)\(\n\1\)\+$/\1/
" -- delete duplicate lines
" :%s/^\(.*\)\n\1$/\1/
" -- convert Abc-yy to Abc-10,11,12 etc
" :let i=10 | 'd,'bg/Abc/s/yy/\=i/ |let i=i+1
" -- Swapping first & last column (4 columns)
" :%s:\(\w\+\)\(.*\s\+\)\(\w\+\)$:\3\2\1:
" 1 2 3 4
" 1 2 3 4
" -- decrement numbers by 3
" :'<,>'s/\d\+/\=(submatch(0)-3)/
" -- delete lines not containing string
" :g!/^dd/d
" -- Join Lines [N]
" :g/fred/,/joe/j
" -- reverse lines right to left (toggles)
" :set rl!
" -- reverse lines top to bottom (toggles)
" :g/^/m0
" -- Reverse a section a to b
" :'d,'bg/^/m'b
" -- duplicate every line
" :g/^/t.
" -- copy (transfer) lines matching fred to EOF
" :g/fred/t$
" -- copy (transfer) lines matching stage to marker a (cannot use .) [C]
" :g/stage/t'a
" -- Automatically underline selecting headings [N]
" :g/^Chapter/t.|s/./-/g
" -- append all lines fred to register a
" :g/fred/y A
" -- filter lines to a file (file must already exist)
" :'a,'bg/^Error/ . w >> errors.txt
" -- Sort each block (note the crucial ;)
" :g/^$/;/^$/-1!sort
" -- sort all lines on second column [N]
" :sort /.*\%2v/
"---------------------------------
"-example, to change the date mark in a file:
":map <F2> msHmtgg/Last [cC]hange:\s*/e+1<CR>"_D"=strftime("%Y %b %d")<CR>p'tzt`s
"**************************************
"++bbb++++++++++++++++++++++++++++++++++}}}
