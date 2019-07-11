UNIX understands several control-key commands, commands you enter by holding down the control key (ctrl) while striking a second key

CTRL + S - freezes the screen and stops any display on the screen from continuing (equivalent to a no-scroll key) (sometimes takes a moment to work)

CTRL + Q - un-freezes the screen and lets screen display continue

CTRL + C - interrupts a running program

CTRL + \ - same as CTRL - C but stronger (used when terminal doesn't respond)

CTRL + Z - suspends a running program (use the fg command to continue the program, see s$

CTRL + H - deletes last character typed

CTRL + W - deletes last word typed

CTRL + U - deletes last line typed

CTRL + R - searches text from history

CTRL + D - ends text input for many UNIX programs, including mail and write.
#########################################################################################
 Shortcuts to improve your bash & zsh productivity
So, you hate using a terminal? That might be, because you use the arrow keys to navigate character by character through a long command just to change a paramater at the other end of the line, right? Here's a list of my most-used bash & zsh shortcuts, that will definitely boost your productivity and will help you to improve your command line experience.

Shortcut	Action
CTRL + A	Move to the beginning of the line
CTRL + E	Move to the end of the line
CTRL + [left arrow]	Move one word backward (on some systems this is ALT + B)
CTRL + [right arrow]	Move one word forward (on some systems this is ALT + F)
CTRL + U (bash)	Clear the characters on the line before the current cursor position
CTRL + U (zsh)	If you're using the zsh, this will clear the entire line
CTRL + K	Clear the characters on the line after the current cursor position
ESC + [backspace]	Delete the word in front of the cursor
CTRL + W	Delete the word in front of the cursor
ALT + D	Delete the word after the cursor
CTRL + R	Search history
CTRL + G	Escape from search mode
CTRL + _	Undo the last change
CTRL + L	Clear screen
CTRL + S	Stop output to screen
CTRL + Q	Re-enable screen output
CTRL + C	Terminate/kill current foreground process
CTRL + Z	Suspend/stop current foreground process
Command	Action
!!	Execute last command in history
!abc	Execute last command in history beginning with abc
!abc:p	Print last command in history beginning with abc

History Search
Press CTRL + R to search through the history. Continue pressing CTRL + R until you find the entry you're looking for. Press [ENTER] to execute the current expression. Press [Right Arrow] to modify the current expression. Press CTRL + G to escape from search mode.

##########################################################################################
VIM or vi key bindings

When usin a vi key map like in bash with set -o vi or in zsh with bindkey -v:
Insert mode

It is just the same keystroke as in default/emacs mode:

Ctrl+U

deleting form the current position to the start of line. So it deletes the whole line if the cursor is at the end.
Normal mode

There are multiple ways to delete the line in two keystrokes:

Delete linewise dd, with the default count of one line:

dd

which is the simplest in terms of keys touched.

Another way is: Go to start of line with ^, and delete to the end of line with D:

^D

These both delete the entire line, not only to the left, like Ctrl+U in insert mode, or the variant bleow.

If you are at the end of line currently, so you do not need to delete anything to the right, this would also do:

Delete from here d, to start of line ^:

d^

You can use these all from inset mode, you need the usual escape first to go to normal mode. For example to delete the whole line from insert mode, use:

Escdd


Here is a listing of keyboard shortcuts that can be used with the bash shell.

Ctrl + A    Go to the beginning of the line you are currently typing on
Ctrl + E    Go to the end of the line you are currently typing on
Ctrl + L    Clears the Screen, similar to the clear command
Ctrl + U    Clears the line before the cursor position. If you are at the end of the line, clears the entire line.
Ctrl + H    Same as backspace
Ctrl + R    Lets you search through previously used commands
Ctrl + C    Kill whatever you are running or start a new prompt
Ctrl + D    Exit the current shell
Ctrl + Z    Puts whatever you are running into a suspended background process. fg restores it.
Ctrl + W    Delete the word before the cursor
Ctrl + K    Clear the line after the cursor
Ctrl + T    Swap the last two characters before the cursor
Esc + T     Swap the last two words before the cursor
Alt + F     Move cursor forward one word on the current line
Alt + B     Move cursor backward one word on the current line
Tab         Auto-complete files and folder names
