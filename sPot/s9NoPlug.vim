
        "============================================================================================
        "============================================================================================
        " I want this tip to inspire you. Perhaps you never thought of running a web
        " server from inside your text editor. Does this give you ideas for other
        " processes that you could control remotely?

"++AAAs10TmpPlug++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{


        "---------------------------------------------------------------------------------
        "------------------TODO------------------------------------------------------------
        " enable support for concealing some constructs with unicode glyphs.
        " Plug 'hylang/vim-hy'
        " let g:hy_enable_conceal = 1
        " If you do let g:hy_conceal_fancy=1, xi and #% are displayed as ξ
        "??? (including [vim-vspec](https://github.com/kana/vim-vspec)-specific syntax)
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------


        "==========================================================================
        "-Setting lazyredraw causes a problem on startup
        " autocmd! vimrc VimEnter * redraw
        "--------------------------------------------------------------------------
        " <CR> : Insert new indented line after return if cursor in blank brackets
        "        or quotes.
        " <BS> : Delete brackets in pair
        " <M-p>: Toggle Autopairs (|g:AutoPairsShortcutToggle|)
        " <M-e>: Fast Wrap (|g:AutoPairsShortcutFastWrap|)
        " <M-n>: Jump to next closed pair (|g:AutoPairsShortcutJump|)
        " <M-b>: BackInsert (|g:AutoPairsShortcutBackInsert|)
"============================================================================================
        " \v: 'very magic', make every character except a-zA-Z0-9 and '_' have special meaning
        " use \v and \V to switch 'very magic' on or off.
        " \m, \M: 'magic' mode.
        " use \m and \M to switch 'magic' on or off.
"============================================================================================
        " The GNU bison parser generator (similar to YACC) generates a couple of
        " different types of errors. They start with the file name, then a colon. If
        " available, the linenumber comes next, followed by a dot (period) and the
        " column number. If appropriate, a dash and then another column number (giving a
        " column range) follows, and then a colon, space, and the error message.
"=======================================================================================================================
        " read/write a .viminfo file, don't store more
        " means that the current buffer can be put
        " to background without being written; and
        " that marks and undo history are preserved
"=======================================================================================================================
        " sd,sr, sa{motion/textobject}{addition}(normal and visual mode)
        " let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
        " Sandwiched text could be resolved into two parts, {surrounding} and {surrounded text}.
        " sa add surroundings: mapped to the key sequence sa
        " sd Delete surroundings: mapped to the key sequence sd
        " sr Replace surroundings: mapped to the key sequence sr
        " ib Search and select a sandwiched text automatically: mapped to the key sequence ib and ab
        " is Search and select a sandwiched text with query: mapped to the key sequence is and as
        " da" will delete a quoted sympy.pprint(string.)
        "(<b>'Sbandawitch'</b>)
"==========================================================================================
        " :SignatureListMarkers 1       : List only the '!' marker
        " :SignatureListMarkers @       : List only the '@' marker
        " :SignatureListMarkers 0, 2    : List only ) marker with 2 lines of context
        " :SignatureListMarkers '', 2   : List all markers with 2 lines of context
        " :SignatureListMarkers '!@', 2 : List only the '!' and '@' markers and show
"=======================================================================================================================
"=======================================================================================================================
"=======================================================================================================================

"++AAAx++}}}


        " Plug 'rhysd/conflict-marker.vim' " Jump to merge conflict markers

