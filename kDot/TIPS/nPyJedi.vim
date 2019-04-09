jedi-vim

jedi-vim is a VIM binding to the autocompletion library Jedi.
Installation

    python2.6 or higher
    vim is built with
        +python
        +python3

vim上で以下のcommandで対応しているか確認できる。

:python3 import sys; print(sys.version)

:python import sys; print(sys.version)

pip install jedi

Configuraition


let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0


let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

completionが不要の場合

" disable completion
let g:jedi#completions_enabled = 0

Keybinding

    <leader>g
        go to assignment
    K
        documentation
    <leader>r
        rename variable
    <leader>n
        Show usages of a name
    :Pyimport os
        open module by name
    <leader>d
        go to definition or assignment
    <Ctrl-Space>
        start completion

Python keybinding

    More efficient movements editing python files in vim - Stack Overflow
    ]]
        Jump forward to begin of next toplevel
    [[ Jump backwards to begin of current toplevel (if already there, previous toplevel)
    ]m
        Jump forward to begin of next method/scope
    [m
        Jump backwords to begin of previous method/scope
    ][
        Jump forward to end of current toplevel
    []
        Jump backward to end of previous of toplevel
    ]M
        Jump forward to end of current method/scope
    [M
        Jump backward to end of previous method/scope
