==============================================================================
]p 	paste under the current indentation level
==============================================================================
        zo / zO 	Open
        zc / zC 	Close
        za / zA 	Toggle
        zv      	Open folds for this line
        zM      	Close all
        zR      	Open all
        zm      	Fold more (foldlevel += 1)
        zr      	Fold less (foldlevel -= 1)
        zx      	Update fol
==============================================================================
[m      	previous method start
[M      	previous method end
==============================================================================
[( [{   	previous ( or { or <
])      	next
==============================================================================
:tag Classname  	Jump to first definition of Classname
<C-]>           	Jump to definition
g]              	See all definitions
<C-T>           	Go back to last tag
<C-O> <C-I>     	Back/forward
:tselect Clasn  	Find definitions of Classname
:tjump Clasn    	Find definitions of Classname (auto-select 1st)
==============================================================================
<C-R><C-W>      	insert current word into the command line
<C-R>"          	paste from  register
Calculator
<C-R>=128/2
==============================================================================
`^ 	Last position of cursor in insert mode
`. 	Last change
`` 	Last jum

==============================================================================
ma 	Mark this cursor position as a
`a 	Jump to the cursor position a
'a 	Jump to the beginning of the line with position 

==============================================================================
Text alignment
:center [width]
:right [width]
:left

==============================================================================
Text objects
p       	Paragraph
w       	Word
s       	Sentence
[ ( { < 	A [], (), or {} block

' " `   	A quoted string

b       	A block [(
B       	A block in [{
t       ???

==============================================================================
Text objects let you operate (with an operator) in or around text blocks (objects).
----------------
-----v i p------
----------------
Operator 	[i]nside or [a]round
vip      	Select paragraph
vipipip  	Select more
yip      	Yank inner paragraph
yap      	Yank paragraph (including newline)
dip      	Delete inner paragraph
cip      	Change inner paragraph

  { sin ( cosin ( x2 ) ) }
  { sin ( cosin ( <b>'x2'</b> ) ) }

   sympy.pprint(sb) 
   print(sn) 
==============================================================================

e / ge  	Previous/next end of word
0       	Start of line
^       	Start of line (after whitespace)
$       	End of line
==============================================================================
h j k l 	Arrow keys
<C-U> / <C-D>
==============================================================================
CTRL-X  	Code text
==============================================================================
Exiting insert mode
Esc / <C-[>     	Exit insert mode
<C-C>           	Exit 
==============================================================================
SANDWICH        ??
vaa / via - sd/sr/sa
==============================================================================
:onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
:onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

The only difference from the previous mapping is the very end, where we select
the text to operate on:

inside heading: kvg_
around heading: g_vk0

g_: move to the last non-blank character in the line.
v: enter (characterwise) visual mode.
k: move up a line. This puts us on the line containing the heading's text.
0: move to the first character of the line.

==============================================================================
execute "normal! gg/foo\<cr>dd"
execute "normal! mqA;\<esc>`q"


==============================================================================
let @a = "hello!"
echo @a
echo @"
echo @/
==============================================================================
nnoremap <Leader>x :w | !% python -m json.tools
Instead do that:
------------------
nnoremap <Leader>x :w <bar> !% python -m json.tools
==============================================================================
If you want your map to accept a range, then you have to specify the range
attribute when defining the function as shown below:

function! Myfunc() range
  echo 'range = ' . a:firstline . ',' . a:lastline
endfunction
:nnoremap _w :call Myfunc()<CR>
==============================================================================
