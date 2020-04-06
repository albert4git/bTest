



MyGreatClass = Backbone.Model.extend(
  defaults:
    awesome: true
)

qqgg0iclass @<esc>f=cwextends<esc>2f.DGdd:wnq

Whoa, brain overload. Let’s break it down:

qq             # records the macro to the q buffer
gg             # first line in file
0              # first character in line
iclass @<esc>  # inserts class @ at the cursor and returns to normal mode
f=             # finds the first equal after the cursor
cwextends<esc> # changes the word (=) and moves to insert mode, adds extends, and returns to normal mode
2f.            # finds the second period after the cursor
D              # deletes the remainder of the line
G              # moves to the end of the file
dd             # deletes the line
:wn            # writes the file and moves to the next file in the list
q              # stops recording
