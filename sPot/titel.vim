<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8" />
		<title>Titel</title>
	</head>
	<body>
	servus
	</body>
</html>



" -- reverse lines right to left (toggles)
" :set rl!
" -- reverse lines top to bottom (toggles)
" :g/^/m0




#CCC
" -- copy (transfer) lines matching fred to EOF
" :g/fred/t$
" -- copy (transfer) lines matching stage to marker a (cannot use .) [C]
" :g/stage/t'a
" -- Automatically underline selecting headings [N]
" :g/^Chapter/t.|s/./-/g

" -- Reverse file (m = move)
:g/^/m0

" -- Reverse a section a to b
:'d,'bg/^/m'b

" -- duplicate every line
:g/^/t.


" -- Titlise Visually Selected Text (map for .vimrc)
vmap ,c :s/\<\(.\)\(\k*\)\>/\u\1\L\2/g<CR>
" -- Title Case A Line Or Selection (better)
vnoremap <F6> :s/\%V\<\(\w\)\(\w*\)\>/\u\1\L\2/ge<cr> [N]
" -- titlise a line
nmap ,t :s/.*/\L&/<bar>:s/\<./\u&/g<cr>  [N]

first:last

hallo:adios

hallo:adios
first:last

" -- delete multiple duplicate lines [N]
:%s/^\(.*\)\(\n\1\)\+$/\1/

" : reverse fields separated by :
:s/\(.*\):\(.*\)/\2 -- \1/
" -- delete duplicate lines
:%s/^\(.*\)\n\1$/\1/
" -- delete html tags possibly multi-line (non-greedy)
:%s#<\_.\{-1,}>##g


" -- Swapping first & last column (4 columns)
" :%s:\(\w\+\)\(.*\s\+\)\(\w\+\)$:\3\2\1:
" 1 2 3 4
" 1 2 3 4
" 1 2 3 4

" -- decrement numbers by 3
:'<,>'s/\d\+/\=(submatch(0)-3)/
7
12
17
22



" +---+---------------+-----------------+---------------------+------------------+------------+----------+
" | H | [RUN]         | [FZF]           | [FIND]              | [FUNC]           | [Fugitive] | [EUNUCH] |
" +===+===============+=================+=====================+==================+============+==========+
" | Abc-10 | [?]#REPL      | :MMBLines F7,\\ | :                   | :TableModeToggle | :Gwrite    |          |
" | Abc-11 |               | :FZFDefinitions | :NV                 | :DimInactive     | :Gdiff     |          |
" | Abc-12 | [?]#Linting   | :FZFFreshMru    | :SS                 | :Clap yanks      | :Gstatus   |          |
" | Abc-13 | [n]#Jedi      | :FZFMru         | :MAg                | :SignatureListM  | :Glog      |          |
" | Abc-14 | [x]#LSP       | :MGit           | :MMRg               |                  | :FZF!      |          |
" | Abc-15 | [t]#Coc       | :MLibList       | :FindNonAscii       |                  | :Buffers   |          |
" | Abc-16 | [x]#EasyAlign | :MPlugHelp      | ?scope              |                  | :GFiles?   |          |
" | Abc-17 | [x]#leon      | :MTag           | :TagbarToggle       |                  |            |          |
" | Abc-18 | []#EndTO      | :MRU            | :AG mao ~/Documents |                  |            |          |
" | Abc-19 |               | :VSearchMe v*   | :MMLocate           |                  |            |          |
" | Abc-20 |               | :MMFiles        |                     |                  |            |          |
" | Abc-21 |               | :               |                     |                  |            |          |
" | Abc-22 |               | :               | ABOLISH             |                  |            |          |
" +---+---------------+-----------------+---------------------+------------------+------------+----------+

joe

fred " # convert yy to 10,11,12 etc joe
fred

" # convert yy to 10,11,12 etc
" :let i=10 | 'd,'bg/Abc/s/yy/\=i/ |let i=i+1
