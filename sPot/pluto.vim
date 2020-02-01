
I know that I can do a conditional key mapping by map-expression:

map [key] [condition] ? [foo] : [bar]

But now my situation is somehow awkward. I want to map <C-h> to <C-w>h if I have more than one windows in my VIM, and map it to :bprev if there is only one window in my VIM.

I've tried with

    nnoremap <C-h> winnr('$')>1 ? '<C-w>h' : ':bprev<CR>'

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::You

You need the <expr> modifier:

nnoremap <expr> <C-h> winnr('$')>1 ? '<C-w>h' : ':bprev<CR>'

This conditional is evaluated every time the mapped key is sent, instead of once at mapping time.
