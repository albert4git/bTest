:h 42 -- also http://www.google.com/search?q=42 -- Make all other tips superfluous
:h holy-grail
"*********************************************************************************************
" -- Titlise Visually Selected Text (map for .vimrc)
vmap ,c :s/\<\(.\)\(\k*\)\>/\u\1\L\2/g<CR>
" -- Title Case A Line Or Selection (better)
vnoremap <F6> :s/\%V\<\(\w\)\(\w*\)\>/\u\1\L\2/ge<cr> [N]
" -- titlise a line
nmap ,t :s/.*/\L&/<bar>:s/\<./\u&/g<cr>  [N]

:h \_ -- help
"++AAA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
:vmap // y/<C-R>"<CR> -- search for visually highlighted text -- visual searching
:vmap <silent> //    y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR> -- with spec chars
/<\zs[^>]*\ze> -- search for tag contents, ignoring chevrons -- \zs and \ze regex delimiters :h /\zs
/<\@<=[^>]*>\@= -- search for tag contents, ignoring chevrons -- zero-width :h /\@=
/<\@<=\_[^>]*>\@= -- search for tags across possible multiple lines
/<!--\_p\{-}--> -- search for multiple line comments -- searching over multiple lines \_ means including newline
/fred\_s*joe/ -- any whitespace including newline *C*
/bugs\(\_.\)*bunny -- bugs followed by bunny anywhere in file
:nmap gx yiw/^\(sub\<bar>function\)\s\+<C-R>"<CR> -- search for declaration of subroutine/function under cursor
:bufdo /searchstr/ -- use :rewind to recommence search -- multiple file search
:bufdo %s/searchstr/&/gic -- say n and then a to stop -- multiple file search better but cheating
?http://www.vim.org/ -- (first) search BACKWARDS!!! clever huh!  -- How to search for a URL without backslashing
/\c\v([^aeiou]&\a){4} -- search for 4 consecutive consonants -- Specify what you are NOT searching for (vowels)
/\%>20l\%<30lgoat -- Search for goat between lines 20 and 30 [N]
/^.\{-}home.\{-}\zshome/e -- match only the 2nd occurence in a line of "home" [N]
:%s/home.\{-}\zshome/alone -- Substitute only the occurrence of home in any line [N]
^\(.*tongue.*\)\@!.*nose.*$ -- find str but not on lines containing tongue
\v^((tongue)@!.)*nose((tongue)@!.)*$
.*nose.*\&^\%(\%(tongue\)\@!.\)*$
:v/tongue/s/nose/&/gic
:%s/fred/joe/igc -- general substitute command -- *best-substitution*
:%s//joe/igc -- Substitute what you last searched for [N]
:%s/~/sue/igc -- Substitute your last replacement string [N]
:%s/\r//g -- Delete DOS returns ^M
:%s/\r/\r/g -- Turn DOS returns ^M into real returns -- Is your Text File jumbled onto one line? use following
:%s=  *$== -- delete end of line blanks
:%s= \+$== -- Same thing
:%s#\s*\r\?$## -- Clean both trailing spaces AND DOS returns
:%s#\s*\r*$## -- same thing
:%s/^\n\{3}// -- delete blocks of 3 empty lines -- deleting empty lines
:%s/^\n\+/\r/ -- compressing empty lines
:%s#<[^>]\+>##g -- delete html tags, leave text (non-greedy)
:%s#<\_.\{-1,}>##g -- delete html tags possibly multi-line (non-greedy)
:%s#.*\(\d\+hours\).*#\1# -- Delete all but memorised string (\1) [N]
%s#><\([^/]\)#>\r<\1#g -- split jumbled up XML file into one tag per line [N]
:'a,'bg/fred/s/dick/joe/igc -- VERY USEFUL -- VIM Power Substitute
:%s= [^ ]\+$=&&= -- duplicate end column -- duplicating columns
:%s= \f\+$=&&= -- same thing
:%s= \S\+$=&& -- usually the same
:%s#example#& = &#gic -- duplicate entire matched string [N] -- memory
:%s#.*\(tbl_\w\+\).*#\1# -- extract list of all strings tbl_* from text  [NC]
:s/\(.*\):\(.*\)/\2 -- \1/   : reverse fields separated by :
:%s/^\(.*\)\n\1$/\1/ -- delete duplicate lines
:%s/^\(.*\)\(\n\1\)\+$/\1/ -- delete multiple duplicate lines [N]
:%s/^.\{-}pdf/new.pdf/ -- delete to 1st occurence of pdf only (non-greedy) -- non-greedy matching \{-}
:%s#\<[zy]\?tbl_[a-z_]\+\>#\L&#gc -- lowercase with optional leading characters -- use of optional atom \?
:%s/<!--\_.\{-}-->// -- delete possibly multi-line comments -- over possibly many lines
:help /\{-} -- help non-greedy
:s/fred/<c-r>a/g -- sub "fred" with contents of register "a" -- substitute using a register
:s/fred/<c-r>asome_text<c-r>s/g
:s/fred/\=@a/g -- better alternative as register not displayed (not *) [C]
:%s/\f\+\.gif\>/\r&\r/g | v/\.gif$/d | %s/gif/jpg/ -- multiple commands on one line
:%s/a/but/gie|:update|:next -- then use @: to repeat
:%s/goat\|cow/sheep/gc -- ORing (must break pipe) -- ORing
:'a,'bs#\[\|\]##g -- remove [] from lines between markers a and b [N]
:%s/\v(.*\n){5}/&\r -- insert a blank line every 5 lines [N]
:s/__date__/\=strftime("%c")/ -- insert datestring -- Calling a VIM function
:inoremap \zd <C-R>=strftime("%d%b%y")<CR> -- insert date eg 31Jan11 [N]
:%s:\(\(\w\+\s\+\)\{2}\)str1:\1str2: -- Working with Columns sub any str1 in col3
:%s:\(\w\+\)\(.*\s\+\)\(\w\+\)$:\3\2\1: -- Swapping first & last column (4 columns)
:%s#\<from\>\|\<where\>\|\<left join\>\|\<\inner join\>#\r&#g -- format a mysql query
"++bbb++}}}

"++AAA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        git config --global core.editor "gvim --nofork"
"++bbb++}}}

"++AAA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        :%s/\r//g to remove all those nasty ^M from a file, or :%s/\r$//g for only at the end of a line.
        "---------------------------------------------------------------------------------
        " will insert a blank line every 5 lines
        :%s/\v(.*\n){5}/&\r
        " will uppercase the first letter of each sentence (except the very first one).
        :%s/[.!?]\_s\+\a/\U&\E/g
        "---------------------------------------------------------------------------------
        /\%>80v.\+ with search highlighting (:set hlsearch) will highlight any text after column 80.
        "---------------------------------------------------------------------------------
        :%s/joe|fred/jerks/g will replace both 'fred' and 'joe' with 'jerks'.
        "---------------------------------------------------------------------------------
        :g/search_term/# display each line containing 'search_term' with line numbers.
        "---------------------------------------------------------------------------------
        :%s/\\/\//g replaces all backslashes with forward slashes
        "---------------------------------------------------------------------------------
        :%s/<!--\_.\{-}-->// will delete HTML comments, potentially spanning multiple lines.
        /joe/+3 -- find joe move cursor 3 lines down
        /^joe.*fred.*bill/ -- find joe AND fred AND Bill (Joe at start of line)
        /^[A-J]/ -- search for lines beginning with one or more A-J
        /begin\_.*end -- search over possible multiple lines
        /fred\_s*joe/ -- any whitespace including newline [C]
        /fred\|joe -- Search for FRED OR JOE
        /.*fred\&.*joe -- Search for FRED AND JOE in any ORDER!
        /\<fred\>/ -- search for fred but not alfred or frederick [C]
        /\<\d\d\d\d\> -- Search for exactly 4 digit numbers
        /\D\d\d\d\d\D -- Search for exactly 4 digit numbers
        /\<\d\{4}\> -- same thing
        /\([^0-9]\|^\)%.*% -- Search for absence of a digit or beginning of line
        /^\n\{3} -- find 3 empty lines -- finding empty lines
        /^str.*\nstr -- find 2 successive lines starting with str
        /\(^str.*\n\)\{2} -- find 2 successive lines starting with str
        /\(fred\).*\(joe\).*\2.*\1 -- using rexexp memory in a search find fred.*joe.*joe.*fred *C*
        /^\([^,]*,\)\{8} -- Repeating the Regexp (rather than what the Regexp finds)
        "*********************************************************************************
        :vimgrep /stext/ **/*.txt | :copen searches for stext recursively in *.txt files and show results in separate window
        "*********************************************************************************
        guu converts entire line to lowercase. gUU converts entire line to uppercase.
        "---------------------------------------------------------------------------------
        noremap ' ` and noremap ` ' to make marks easier to navigate. Now ` is easier to reach!
        "---------------------------------------------------------------------------------
        :vimgrep pattern **/*.txt will search all *.txt files in the current directory
        "---------------------------------------------------------------------------------
        g<CTRL-G> to see technical information about the file, such as how many words are in it,
        "---------------------------------------------------------------------------------
        :match ErrorMsg '\%>80v.\+' uses matching to highlight lines longer than 80 columns.
        "---------------------------------------------------------------------------------
        /<CTRL-r><CTRL-w> will pull the word under the cursor into search.
        "---------------------------------------------------------------------------------
        Ctrl-a, Ctrl-x will increment and decrement, respectively, the number under the cursor. May be precede by a count.
        "---------------------------------------------------------------------------------
        :scriptnames will list all plugins and _vimrcs loaded.
        "---------------------------------------------------------------------------------
        qa starts a recording in register 'a'. q stops it. @a repeats the recording. 5@a repeats it 5 times.
        "---------------------------------------------------------------------------------
        Ctrl-c to quickly get out of command-line mode.  (Faster than hitting ESC a couple times.)
        "---------------------------------------------------------------------------------
        :r !date will insert the current date/time stamp (from the 'date' command -- a bit OS-specific).
        "---------------------------------------------------------------------------------
        ga will display the ASCII, hex, and octal value of the character under the cursor.
        "---------------------------------------------------------------------------------
        :lcd %:p:h will change to the directory of the current file.
        "---------------------------------------------------------------------------------
        [I (that's bracket open, capital i) show lines containing the word under the cursor.
        "---------------------------------------------------------------------------------
        :set titlestring=%f set the file name as the terminal title.
        "---------------------------------------------------------------------------------
        vim -d file1 file2 shows the differences between two files.
        "---------------------------------------------------------------------------------
        :%y c copies the entire buffer into register c. "cp inserts the content of register c in the current document.
        "---------------------------------------------------------------------------------
        ctrl-v blockwise visual mode (rectangular selection).
        I/A in visual blockwise mode (ctrl-v) insert some text at the star/end of each line of the block text.
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        ctrl-r x (insert mode): insert the contents of buffer x. For example: "ctrl-r +" would insert the contents of the clipboard.
        "---------------------------------------------------------------------------------
        Ctrl + o : Execute a command while in insert mode, then go back to insert mode. e.g. ctrl+o, p; paste without exiting insert mode
        "---------------------------------------------------------------------------------
        ctrl-r ctrl-w: Pull the word under the cursor in a : command. eg. :s/ctrl-r ctrl-w/foo/g
"++bbb++++++++++++++++++++++++++++++++++}}}

        "---------------------------------------------------------------------------------
        Ctrl-y (insert mode): insert character which is on the line above cursor. example: handy to initialize a structure.
        "---------------------------------------------------------------------------------
        vmap out "zdmzO#if 0<ESC>"zp'zi#endif<CR><ESC> - macro to comment out a block of code using #if 0
        "---------------------------------------------------------------------------------
        If gvim is started from a terminal it opens at the same width as the terminal
        To prevent this, add "set columns=80" to ~/.vimrc
        "---------------------------------------------------------------------------------
        set showbreak - set characters to prefix wrapped lines with. e.g. ":set showbreak=+++\ " (white space must be escaped)
        "---------------------------------------------------------------------------------
        vim --remote <file> - open a file in an existing vim session
        "---------------------------------------------------------------------------------
        :set softtabstop <n> - set the number of spaces to insert when using the tab key (converted to tabs and spaces if expandtab is off).
        :set expandtab - use spaces rather than the tab character to insert a tab.
        "---------------------------------------------------------------------------------
        :set paste - allows you to paste from the clipboard correctly, especially when vim is running in a terminal
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------


        %:exec ":new ".(substitute(expand("%"), ".c$", ".h", "")) - open the associated .h file for the current .c file in a new window; more concisely :new %:p:r.h

        noh - stop highlighting the current search (if 'hlsearch' is enabled). Highlighting is automatically restored for the next search.
        when substituting, \u makes just first character upper (like \l for lower) and \U is upper equivalent for \L
        :retab <ts> - convert strings of white-space containing <Tab> with new strings using the <ts> value if given or current value of 'tabstop'

        ctrl-v u <hex code> - enter a unicode character in insert mode
        :set laststatus=2 - always show the status line (0 = never, 1 = (default) only if there are two or more windows, 2 = always)
        b - go back a word (opposite of w)
        } - move to the next blank line ( { - move to previous blank line)
        s - delete characters and start insert mode (s stands for Substitute). e.g. 3s - delete three characters and start insert mode.
        0 - Move to the first character of the line
        :set columns=X - set the width of the window to X columns. For GUI vim, this is limited to the size of the screen
        ctrl-<pagedown> / ctrl-<pageup> - switch to next/previous tab. (alternatives: gt/gT, :tabn/:tabp, etc)
                Ctrl-T  contained and Ctrl-D - indent and un-indent the current line in insert mode



        "+ and "* - clipboard and current selection registers under X. e.g. "+p to paste from the clipboard and "+y to copy to the clipboard
        %
        :r!<cmd> - insert the result of <cmd> into the current buffer at the cursor. e.g. :r!ls *.h
        %
        CTRL-V <tab> - in insert mode, enters a real tab character, disregarding tab and indent options
        %
        :set showcmd - show the number of lines/chacters in a visual selection
        %
%
%
:%s/^\(.\{30\}\)xx/\1yy/ -- substitute string in column 30 [N]
:%s/\d\+/\=(submatch(0)-3)/ -- decrement numbers by 3
:g/loc\|function/s/\d/\=submatch(0)+6/ -- increment numbers by 6 on certain lines only
:%s#txtdev\zs\d#\=submatch(0)+1#g -- better
:%s/\(gg\)\@<=\d\+/\=submatch(0)+6/ -- increment only numbers gg\d\d  by 6 (another way)
:let i=10 | 'a,'bg/Abc/s/yy/\=i/ |let i=i+1 # convert yy to 10,11,12 etc -- rename a string with an incrementing number
:let i=10 | 'a,'bg/Abc/s/xx\zsyy\ze/\=i/ |let i=i+1 # convert xxyy to xx11,xx12,xx13 -- as above but more precise
:%s/"\([^.]\+\).*\zsxx/\1/ -- find replacement text, put in memory, then use \zs to simplify substitute
:nmap <leader>z :%s#\<<c-r>=expand("<cword>")<cr>\># -- Pull word under cursor into LHS of a substitute

:vmap <leader>z :<C-U>%s/\<<c-r>*\>/ -- Pull Visually Highlighted text into LHS of a substitute

:'a,'bs/bucket\(s\)*/bowl\1/gic   [N] -- substitute singular or plural
:%s,\(all/.*\)\@<=/,_,g -- replace all / with _ AFTER "all/"
:s#all/\zs.*#\=substitute(submatch(0), '/', '_', 'g')# -- Same thing
:s#all/#&^M#|s#/#_#g|-j!  -- Substitute by splitting line, then re-joining
:%s/.*/\='cp '.submatch(0).' all/'.substitute(submatch(0),'/','_','g')/ -- Substitute inside substitute
:g/gladiolli/# -- display with line numbers (YOU WANT THIS!) -- *best-global* command
:g/fred.*joe.*dick/ -- display all lines fred,joe & dick
:g/\<fred\>/ -- display all lines fred but not freddy
:g/^\s*$/d -- delete all blank lines
:g!/^dd/d -- delete lines not containing string
:v/^dd/d -- delete lines not containing string
:g/joe/,/fred/d -- not line based (very powerfull)
:g/fred/,/joe/j -- Join Lines [N]
:g/{/ ,/}/- s/\n\+/\r/g -- Delete empty lines but only between {...}
:v/\S/d -- Delete empty lines (and blank lines ie whitespace)
:v/./,/./-j -- compress empty lines
:g/^$/,/./-j -- compress empty lines
:g/^/put_ -- double space file (pu = put)
:g/^/m0 -- Reverse file (m = move)
:g/^/m$ -- No effect! [N]
:'a,'bg/^/m'b -- Reverse a section a to b
:g/^/t. -- duplicate every line
:g/fred/t$ -- copy (transfer) lines matching fred to EOF
:g/stage/t'a -- copy (transfer) lines matching stage to marker a (cannot use .) [C]
:g/^Chapter/t.|s/./-/g -- Automatically underline selecting headings [N]
:g/\(^I[^^I]*\)\{80}/d -- delete all lines containing at least 80 tabs
:g/^/ if line('.')%2|s/^/zz / -- perform a substitute on every other line
:'a,'bg/somestr/co/otherstr/ -- co(py) or mo(ve)
:'a,'bg/str1/s/str1/&&&/|mo/str2/ copy or move or substitute
:%norm jdd -- delete every other line
:.,$g/^\d/exe "norm! \<c-a>" -- increment numbers
:'a,'bg/\d\+/norm! ^A -- increment numbers
:g/fred/y A -- append all lines fred to register a
:g/fred/y A | :let @*=@a -- put into paste buffer
:'a,'bg/^Error/ . w >> errors.txt -- filter lines to a file (file must already exist)
:g/./yank|put|-1s/'/"/g|s/.*/Print '&'/ -- duplicate every line in a file wrap a print '' around each duplicate
:g/^MARK$/r tmp.txt | -d -- replace string with contents of a file, -d deletes the "mark"
:g/<pattern>/z#.5 -- display with context -- display prettily
:g/<pattern>/z#.5|echo "==========" -- display beautifully
:g/|/norm 2f|r* -- replace 2nd | with a star -- Combining g// with normal mode commands
:nmap <F3>  :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR><CR> -- send output of previous global command to a new window
:'a,'bg/fred/s/joe/susan/gic --  can use memory to extend matching -- *Best-Global-combined-with-substitute* (*power-editing*)
:/fred/,/joe/s/fred/joe/gic --  non-line based (ultra)
:/biz/,/any/g/article/s/wheel/bucket/gic:  non-line based [N]
:/fred/;/joe/-2,/sid/+3s/sally/alley/gIC -- Find fred before beginning search for joe
:g/^/exe ".w ".line(".").".txt" -- create a new file for each line of file eg 1.txt,2.txt,3,txt etc
:.g/^/ exe ".!sed 's/N/X/'" | s/I/Q/    [N] -- chain an external command
:%&    last substitute every line
:%&gic last substitute every line confirm
@@     last recording
:!!    last :! command
:~     last substitute
:set syntax=perl -- force syntax (usually taken from file extension)
:nmap ,s :source $VIM/_vimrc -- MAKE IT EASY TO UPDATE/RELOAD _vimrc
%
:nmap ,v :e $VIM/_vimrc
%
:e $MYVIMRC -- edits your _vimrc whereever it might be  [N]
%
:vsplit other.php       # vertically split current file with other.php [N] -- splitting windows
%
:vmap sb "zdi<b><C-R>z</b><ESC> -- wrap <b></b> around VISUALLY selected Text
%
:vmap st "zdi<?= <C-R>z ?><ESC> -- wrap <?=   ?> around VISUALLY selected Text
:args -- list of files
:args *.php -- open list of files (you need this!)
%
:lcd %:p:h -- change to directory of current file
%
ga -- display hex,ascii value of char under cursor


:set rl! -- reverse lines right to left (toggles)
:g/^/m0 -- reverse lines top to bottom (toggles)
:%s/\(\<.\{-}\>\)/\=join(reverse(split(submatch(1), '.\zs')), '')/g -- reverse all text *N*
%
:changes
:h changelist -- help for above
:<C-F> -- history Window (exit CTRL-C)

:ab php -- list of abbreviations beginning php
:map , -- list of maps beginning ,
%
:for i in range(1, 12) | execute("map <F".i.">") | endfor   [N] -- list current mappings of all your function keys
:cab ,f :for i in range(1, 12) \| execute("map <F".i.">") \| endfor -- for your .vimrc
%
iab phpdb exit("<hr>Debug <C-R>a  "); -- Simple PHP debugging display all variables yanked into register a
%
:let @m=":'a,'bs/" -- Using a register as a map (preload registers in .vimrc)
%
:let @s=":%!sort -u"
%
%
%
:r!ls -R -- reads in output of ls -- Get output from other commands (requires external programs)
%
:put=glob('**') -- same as above                 [N]
%
:r !grep "^ebay" file.txt -- grepping in content   [N]
%
:20,25 !rot13 -- rot13 lines 20 to 25   [N]
%
!!date -- same thing (but replaces/filters current line)
:%!sort -u -- use an external program to filter content -- Sorting with external sort
%
:'a,'b!sort -u -- use an external program to filter content
%
!1} sort -u -- sorts paragraph (note normal mode!!)
%
:g/^$/;/^$/-1!sort -- Sort each block (note the crucial ;)
%
:sort /.*\%2v/ -- sort all lines on second column [N] -- Sorting with internal sort
%
:new | r!nl #                  [N] -- number lines  (linux or cygwin only)
%
%
:b3 -- go to buffer 3 [C]
%
:b main -- go to buffer with main in name eg main.c (ultra)
%
:sav php.html -- Save current file as php.html and "move" to php.html
%
:sav! %<.bak -- Save Current file to alternative extension (old way)
%
:sav! %:r.cfm -- Save Current file to alternative extension
%
:rew -- return to beginning of edited files list (:args)
%
:brew -- buffer rewind
%
:scrollbind -- in each split window
%
@@ -- Repeat a macro
5@@ -- Repeat a macro 5 times
%
qQ@qq -- Make an existing recording q recursive [N]
%
"qp --display contents of register q (normal mode) -- editing a register/recording
%
<ctrl-R>q --display contents of register q (insert mode)
%
"qdd --put changed contacts back into q -- you can now see recording contents, edit as required
%
V% -- visualise what you match
%
V}J -- Join Visual block (great)
%
V}gJ -- Join Visual block w/o adding spaces
%
:%s/\%Vold/new/g -- Do a substitute on last visual area [N]

das -- delete a sentence

%
%
:nmap ,i :update<CR>: !start c:\progra~1\intern~1\iexplore.exe <cWORD><CR>
%
cmap ,r  :Nread ftp://209.51.134.122/public_html/index.html -- FTPing from VIM
%
cmap ,w  :Nwrite ftp://209.51.134.122/public_html/index.html
%
gvim ftp://www.somedomain.com/index.html # uses netrw.vim
%
:'a,'b>> -- Conventional Shifting/Indenting
%
:.y* -- Yank Current line to paster -- filter non-printable characters from the paste buffer -- useful when pasting from some gui application

:set paste -- prevent vim from formatting pasted in text
%
:s/.\{,69\};\s*\|.\{,69\}\s\+/&\r/g -- break lines at 70 chars, if possible after a ;
%
:argdo %s/foo/bar/e -- operate on all files in :args -- Operate command over multiple files
:bufdo %s/foo/bar/e -- operate on all files in :args -- Operate command over multiple files
:windo %s/foo/bar/e -- operate on all files in :args -- Operate command over multiple files
:argdo exe '%!sort'|w! -- include an external command
:bufdo exe "normal @q" | w -- perform a recording on open files
:silent bufdo !zip proj.zip %:p -- zip all current files
AAA
cat xx | gvim - -c "v/^\d\d\|^[3-9]/d -- -- filter a stream
%
vim -c "%s/ABC/DEF/ge | update" file1.c -- execute multiple command on a single file
vim -c "argdo %s/ABC/DEF/ge | update" *.c -- execute multiple command on a group of files
vim -c "argdo /begin/+1,/end/-1g/^/d | update" *.c -- remove blocks of text from a series of files
vim -s "convert.vim" file.c -- Automate editing of a file (Ex commands in convert.vim)
gvim -u NONE -U NONE -N -- load VIM without .vimrc and plugins (clean VIM) e.g. for HUGE files
gvim -c 'normal ggdG"*p' c:/aaa/xp -- Access paste buffer contents (put in a script/batch file)
gvim -c 's/^/\=@*/|hardcopy!|q!' -- print paste contents to default printer

%
:!grep somestring *.php -- creates a list of all matching files [C] -- gvim's use of external grep (win32 or *nix)


%
:vimgrep /keywords/ *.php -- Using vimgrep with copen                              [N]
:copen

"*********************************************************************************************
%AAA
gvim -d file1 file2 -- vimdiff (compare differences) -- GVIM Difference Function (Brilliant)
%
dp -- "put" difference under cursor to other file
%
do -- "get" difference under cursor from other file
%
:1,2yank a | 7,8yank b -- complex diff parts of same file [N]
%
:tabedit | put a | vnew | put b
%
:windo diffthis
"*********************************************************************************************


%
In regular expressions you must backslash + (match 1 or more) -- Vim traps
%
In regular expressions you must backslash | (or)
%
In regular expressions you must backslash ( (group)
%
In regular expressions you must backslash { (count)
%
/fred\+/ -- matches fred/freddy but not free
%
/\(fred\)\{2,3}/ -- note what you have to break
%
/codes\(\n\|\s\)*where -- normal regexp -- \v or very magic (usually) reduces backslashing
%
/\vcodes(\n|\s)*where -- very magic
"*********************************************************************************************
%
<C-R><C-W> -- pull word under the cursor into a command line or search -- pulling objects onto command/search line (SUPER)
%
<C-R><C-A> -- pull WORD under the cursor into a command line or search
%
<C-R>- -- pull small register (also insert mode)
%
<C-R>[0-9a-z] -- pull named registers (also insert mode)
%
<C-R>% -- pull file name (also #) (also insert mode)
%
<C-R>=somevar -- pull contents of a variable (eg :let sray="ray[0-9]")
%
:reg -- display contents of all registers -- List your Registers
%
:reg a -- display content of register a
%
:reg 12a -- display content of registers 1,2 & a [N]
%
"5p -- retrieve 5th "ring"
%
"1p.... -- retrieve numeric registers one by one
%
:let @y='yy@"' -- pre-loading registers (put in .vimrc)
%
qqq -- empty register "q"
%
qaq -- empty register "a"
%
:reg .-/%:*" -- the seven special registers [N]
%
:reg 0 -- what you last yanked, not affected by a delete [N]
%
"_dd -- Delete to blackhole register "_ , don't affect any register [N]
%
:let @a=@_ -- clear register a -- manipulating registers
%
:let @a="" -- clear register a
%
:let @a=@" -- Save unnamed register [N]
%
:let @*=@a -- copy register a to paste buffer
%
:let @*=@: -- copy last command to paste buffer
%
:let @*=@/ -- copy last search to paste buffer
%
:let @*=@% -- copy current filename to paste buffer


"*********************************************************************************************
%AAA
:h quickref -- VIM Quick Reference Sheet (ultra) -- help for help (USE TAB)
%
:h tips -- Vim's own Tips Help
%
:h visual<C-D><tab> -- obtain  list of all visual help topics
%
 -- Then use tab to step thru them
%
:h ctrl<C-D> -- list help of all control keys
%
:helpg uganda -- grep HELP Files use :cn, :cp to find next
%
:helpgrep edit.*director: grep help using regexp
%
:h :r -- help for :ex command
%
:h CTRL-R -- normal mode
%
:h /\r -- what's \r in a regexp (matches a <CR>)
%
:h \\zs -- double up backslash to find \zs in help
%
:h i_CTRL-R -- help for say <C-R> in insert mode
%
:h c_CTRL-R -- help for say <C-R> in command mode
%
:h v_CTRL-V -- visual mode
%
:h tutor -- VIM Tutor
"*********************************************************************************************
%
<C-[>, <C-T> -- Move back & Forth in HELP History
%
gvim -h -- VIM Command Line Help
%
:cabbrev h tab h -- open help in a tab [N]
%
:scriptnames -- list all plugins, _vimrcs loaded (super) -- where was an option set
%
:verbose set history? -- reveals value of history and where set
%
:function -- list functions
%
:func SearchCompl -- List particular function
%
:helptags /vim/vim64/doc -- rebuild all *.txt help files in /doc -- making your own VIM help
%
:help add-local-help
%
:sav! $VIMRUNTIME/doc/vimtips.txt|:1,/^__BEGIN__/d|:/^__END__/,$d|:w!|:helptags $VIMRUNTIME/doc -- save this page as a VIM Help File [N]
%
map   <f9>   :w<CR>:!c:/php/php.exe %<CR> -- running file thru an external program (eg php)
%
map   <f2>   :w<CR>:!perl -c %<CR>
%
:new | r!perl # -- opens new buffer,read other buffer -- capturing output of current script in a separate buffer
%
:new! x.out | r!perl # -- same with named file
%
:new+read!ls
%
:new +put q|%!sort -- create a new buffer, paste a register "q" into it, then sort new buffer
%
:%s/$/\<C-V><C-M>&/g --  that's what you type -- Inserting DOS Carriage Returns
%
:%s/$/\<C-Q><C-M>&/g --  for Win32
%
:%s/$/\^M&/g --  what you'll see where ^M is ONE character
%
autocmd BufRead * silent! %s/[\r \t]\+$// -- automatically delete trailing Dos-returns,whitespace
%
autocmd BufEnter *.php :%s/[ \t\r]\+$//e
%
autocmd VimEnter c:/intranet/note011.txt normal! ggVGg?  -- perform an action on a particular file or file type
%
autocmd FileType *.pl exec('set fileformats=unix')
%
i<c-r>: -- Retrieving last command line command for copy & pasting into text
%
i<c-r>/ -- Retrieving last Search Command for copy & pasting into text
%
<C-X><C-F>                        :insert name of a file in current directory -- more completions
%
:'<,'>s/Emacs/Vim/g -- REMEMBER you dont type the '<.'>
%
gv -- Re-select the previous visual area (ULTRA)
%
:g/^/exec "s/^/".strpart(line(".")."    ", 0, 4) -- inserting line number into file
%
:%s/^/\=strpart(line(".")."     ", 0, 5)
%
:%s/^/\=line('.'). ' '
%
:set number -- show line numbers -- *numbering lines VIM way*
%
:map <F12> :set number!<CR> -- Show linenumbers flip-flop
%
:%s/^/\=strpart(line('.')."        ",0,&ts)
%
:'a,'b!perl -pne 'BEGIN{$a=223} substr($_,2,0)=$a++' -- numbering lines (need Perl on PC) starting from arbitrary number -- Produce a list of numbers -- Type in number on line say 223 in an empty file
%
qqmnYP`n^Aq -- in recording q repeat with @q
%
:.,$g/^\d/exe "normal! \<c-a>" -- increment existing numbers to end of file (type <c-a> as 5 characters)
%
http://vim.sourceforge.net/tip_view.php?tip_id=150 -- advanced incrementing
%
let g:I=0
%
:let I=223 -- eg create list starting from 223 incrementing by 5 between markers a,b
%
:'a,'bs/^/\=INC(5)/
%
cab viminc :let I=223 \| 'a,'bs/$/\=INC(5)/ -- create a map for INC
%
o23<ESC>qqYp<C-A>q40@q -- *generate a list of numbers*  23-64
%
<C-U> -- delete all entered -- editing/moving within current insert (Really useful)
%
<C-W> -- delete last word
%
<HOME><END> -- beginning/end of line
%
<C-LEFTARROW><C-RIGHTARROW> -- jump one word backwards/forwards
%
<C-X><C-E>,<C-X><C-Y> -- scroll while staying put in insert
%
#encryption (use with care: DON'T FORGET your KEY)
%
:X -- you will be prompted for a key
%
:h :X
%
// vim:noai:ts=2:sw=4:readonly: -- modeline (make a file readonly etc) must be in first/last 5 lines
%
:h modeline -- vim:ft=html: -- says use HTML Syntax highlighting
%
amenu  Modeline.Insert\ a\ VIM\ modeline <Esc><Esc>ggOvim:ff=unix ts=4 ss=4<CR>vim60:fdm=marker<esc>gg -- Creating your own GUI Toolbar entry
%
map ,p :call SaveWord()
%
endfunction
%
:g/^/ call Del()
%
:digraphs -- display table -- Digraphs (non alpha-numerics)
%
:h dig -- help
%
i<C-K>e' -- enters é
%
i<C-V>233 -- enters é (Unix)
%
i<C-Q>233 -- enters é (Win32)
%
ga -- View hex value of any character
%
#Deleting non-ascii characters (some invisible)
%
:%s/[\x00-\x1f\x80-\xff]/ /g -- type this as you see it
%
:%s/[<C-V>128-<C-V>255]//gi -- where you have to type the Control-V
%
:%s/[-ÿ]//gi -- Should see a black square & a dotted y
%
:%s/[<C-V>128-<C-V>255<C-V>01-<C-V>31]//gi -- All pesky non-asciis
%
:exec "norm /[\x00-\x1f\x80-\xff]/" -- same thing
%
#Pull a non-ascii character onto search bar
yl/<C-R>"                         :
%
/[^a-zA-Z0-9_[:space:][:punct:]] -- search for all non-ascii
%
:e main_<tab> -- tab completes -- All file completions grouped (for example main_c.c)
%
gf -- open file under cursor  (normal)
%
main_<C-X><C-F> -- include NAME of file in text (insert mode)
%
:%s/\<\(on\|off\)\>/\=strpart("offon", 3 * ("off" == submatch(0)), 3)/g
%
:vnoremap <C-X> <Esc>`.``gvP``P -- swap two words
%
nmap <silent> gw    "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l> [N] -- Swap word with next word
%
:runtime! syntax/2html.vim -- convert txt to html -- Convert Text File to HTML
%
:h 2html
%
:grep some_keyword *.c -- get list of all c-files containing keyword -- VIM has internal grep
%
:cn -- go to next occurrence
%
:set syntax=perl -- Force Syntax coloring for a file that has no extension .pl
%
:set syntax off -- Remove syntax coloring (useful for all sorts of reasons)
%
:colorscheme blue -- change coloring scheme (any file in ~vim/vim??/colors)
%
:colorscheme morning -- good fallback colorscheme *N*
%
# vim:ft=html: -- Force HTML Syntax highlighting by using a modeline
%
au BufRead,BufNewFile */Content.IE?/* setfiletype html -- Force syntax automatically (for a file with non-standard extension)
%
:set noma (non modifiable) -- Prevents modifications
%
:set ro (Read Only) -- Protect a file from unintentional writes
%
gvim file1.c file2.c lib/lib.h lib/lib2.h -- load files for "session" -- Sessions (Open a set of files)
%
:mksession -- Make a Session file (default Session.vim)
%
:mksession MySession.vim -- Make a Session file named file [C]
%
:q
%
gvim -S -- Reload all files (loads Session.vim) [C]
%
gvim -S MySession.vim -- Reload all files from named session [C]
%
#tags (jumping to subroutines/functions)
%
taglist.vim -- popular plugin
%
:Tlist -- display Tags (list of functions)
%
<C-]> -- jump to function under cursor
%
:let width = 20 -- columnise a csv file for display only as may crop wide columns
%
:let fill=' ' | while strlen(fill) < width | let fill=fill.fill | endwhile
%
:%s/\([^;]*\);\=/\=strpart(submatch(1).fill, 0, width)/ge
%
:%s/\s\+$//ge
%CCC
command! -nargs=1 Csv :call CSVH(<args>)
"*********************************************************************************************

%
:Csv 5 -- highlight fifth column -- call with
%
zf1G -- fold everything before this line [N]
%
zf} -- fold paragraph using motion -- folding : hide sections to allow easier comparisons
%
v}zf -- fold paragraph using visual
%
zf'a -- fold to mark
%
zo -- open fold
%
zc -- re-close fold
%
:help folding -- also visualise a section of code then type zf [N]
%
zfG -- fold everything after this line [N]
%
:set list -- displaying "non-asciis"
%
:h listchars
%
:norm qqy$jq -- How to paste "normal vim commands" w/o entering insert mode
%
:h filename-modifiers -- help -- manipulating file names
%
:w % -- write to current file name
%
:w %:r.cfm -- change file extention to .cfm
%
:!echo %:p -- full path & file name
%
:!echo %:p:h -- full path only
%
:!echo %:t -- filename only
%
:reg % -- display filename
%
<C-R>% -- insert filename (insert mode)
%
"%p -- insert filename (normal mode)
%
/<C-R>% -- Search for file name in text
%
"_d -- what you've ALWAYS wanted -- delete without destroying default buffer contents
%
"_dw -- eg delete word (use blackhole)
%
nnoremap <F2> :let @*=expand("%:p")<cr> :unix -- pull full path name into paste buffer for attachment to email etc
%
nnoremap <F2> :let @*=substitute(expand("%:p"), "/", "\\", "g")<cr> :win32
%
$ vim -- Simple Shell script to rename files w/o leaving vim
%
:r! ls *.c
%
:%s/\(.*\).c/mv & \1.bla
%
:w !sh
%
:echo line("'b")-line("'a")            # count lines between markers a and b [N]
:'a,'bs/^//n                           # count lines between markers a and b
:'a,'bs/somestring//gn                 # count occurences of a string
%
:syn match DoubleSpace --  -- " example of setting your own highlighting
%
:hi def DoubleSpace guibg=#e0e0e0
%
imap ]  @@@<ESC>hhkyWjl?@@@<CR>P/@@@<CR>3s -- reproduce previous line word by word
nmap ] i@@@<ESC>hhkyWjl?@@@<CR>P/@@@<CR>3s
%AAA
:autocmd bufenter *.tex map <F1> :!latex %<CR> -- Programming keys depending on file type
:autocmd bufenter *.tex map <F2> :!xdvi -hush %<.dvi&<CR>
:autocmd bufenter *.php :set iskeyword+=\$ -- allow yanking of php variables with their dollar [N]
:autocmd BufReadPre *.doc set ro -- reading Ms-Word documents, requires antiword (not docx)
:autocmd BufReadPre *.doc set hlsearch!
:autocmd BufReadPost *.doc %!antiword "%"

%
CTRL-w | and CTRL-W _ maximize your current split vertically and horizontally, respectively. CTRL-W = equalizes 'em.

:g/_pattern_/s/^/#/g will comment out lines containing _pattern_ (if '#' is your comment character/sequence)
vim -c [command] will launch vim and run a -- command at launch, e.g. "vim -c NERDTree."
%
CTRL-w K will switch vertical split into horizontal, CTRL-w H will switch a horizontal into a vertical.
%
:w !sudo tee % will use sudo to write the open file (have you ever forgotten to `sudo vim /path/to/file`?)
%

K runs a prgrm to lookup the keyword under the cursor. If writing C, it runs
man. In Ruby, it (should) run ri, Python (perhaps) pydoc.

Edit and encrypt a file: vim -x filename

:%s//joe/igc substitute your last search with joe.
/fred\_s*joe/ will search for fred AND joe with whitespace (including newline) in between.

From a command-line, vim scp://username@host//path/to/file to edit a remote file locally.
/fred|joe/ will search for either fred OR joe.
/.*fred&.*joe/ will search for fred AND joe, in any order.
/<fred>/ will search for fred, but not alfred or frederick.
/joe/e will search for joe and place the cursor at the end of the match.
/joe/e+1 will search for joe and place the cursor at the end of the match, plus on character.
/joe/s-2 will search for joe and place the cursor at the start of the match, minus two characters.
/joe/+3 will search for joe and place the cursor three lines below the match.
/joe.*fred.*bill/ will search for joe AND fred AND bill, in that order.
/begin\_.*end will search for begin AND end over multiple lines.

%AAA
:s/\(.*\):\(.*\)/\2 -- \1/ will reverse fields separated by ':'
%
%s/<C-R>a/bar/g will place the contents of register 'a' in the search, and replace it with 'bar'.
%
'0 opens the last modified file ('1 '2 '3 works too)
%
%AAA
:40,50m30 will move lines 40 through 50 to line 30. Most visual mode commands can be used with line numbers.
%
:%s/~/sue/igc substitute your last replacement string with 'sue'.

:%s/^\n\{3}// will delete a block of 3 empty lines.
%
:%s/^\n\+/\r/ will compress multiple empty lines into one.
%
:%s#<[^>]\+>##g will remove HTML tags, leaving the text. (non-greedy)
%AAA
:%s#.*(hours).*#1# will delete everything on a line except for the string 'hours'.


After performing an undo, you can navigate through the changes using g- and g+. Also, try :undolist to list the changes.

%
:read [filename] will insert the contents of [filename] at the current cursor position
%
to use gvim to edit your git messages set git's core editor as follows:
:set foldmethod=syntax to make editing long files of code much easier.  zo to open a fold.  zc to close it.  See more



You can use the environment variable 'SHLVL' to check if you are within a vim subshell or not.
