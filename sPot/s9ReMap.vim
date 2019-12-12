
" [ mappings ] {{{
" <c-p>     -- open CtrlP prompt. >>>
" <c-r>     -- regexp mode. r>>
" <c-d>     -- full-path or filename only search. >d>
" <c-f>,<c-up>  -- scroll to next search mode.
" <c-b>,<c-down> -- scroll to previous search mode.
" <tab>     -- auto-complete dir names under current working dir.
" <s-tab>   -- focus between the match window and the prompt.
" <c-j>,<down>  -- move selection down.
" <c-k>,<up>    -- move selection up.
" <c-a>     -- move cursor to the start of the prompt.
" <c-e>     -- move cursor to the end.
" <c-h>,<left>,<c-^> -- move the cursor one char to the left.
" <c-l>,<right>,     -- move the cursor one char to the right.
" <c-]><bs> -- delete the preceding char.
" <del>     -- delete the current char.
" <c-w>     -- delete a preceding innder word.
" <cr>      -- open selected file in active window.
" <c-t>     -- open selected file in new tab after the last tabpage.
" <c-v>     -- open selected file in vertical split.
" <c-s>,<c-cr>,<c-x> -- open selected file in a horizontal split.
" <c-y>     -- create a new file and its parent directories.
" <c-n>     -- next string in the prompt's history.
" <c-p>     -- previous string in the prompt's history.
" <c-z>     -- mark/unmark a file to be opened with <c-o>. <c-y>
" <c-o>     -- open files marked by <c-z>
" <F5>      -- refresh window. and purge cache.
" <F7>      -- wipe MRU list. delete MRU entries marked by <c-z>.
" <insert>  -- ...
" <esc>,<c-c>,<c-g> -- cancel. exit CtrlP.
" }}}

        " CtrlP {{{ <C-P> :CtrlP to full path fuzzy(regex grep) file buffer and MRU.
            let g:loaded_ctrlp = 0 " =1 to disable plug completely.
            let g:ctrl_map = '<c-p>' " for normal mode press Ctrl-P.
            let g:ctrlp_cmd = 'CtrlP' " default command to use when pressing mapping.
            let g:ctrlp_by_filename = 0 " 1: search by filename (not full path)
            let g:ctrlp_regexp = 1 " 1: to set full regexp search as default.
            let g:ctrlp_match_window_bottom = 1 " window position
            let g:ctrlp_match_window_reversed = 1 " show matching in reverse order
            let g:ctrlp_max_height = 10
            let g:ctrlp_switch_buffer = 2 " when file opened, jump to (tag, buffer)
            let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
            let g:ctrlp_working_path_mode = 'rc'
            let g:ctrlp_root_markers = ['.git', '.hg', '.svn', '.bzr',]
            let g:ctrlp_use_caching = 1 " 0: disable per-session caching.
            let g:ctrlp_clear_cache_on_exit = 1
            let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
            let g:ctrlp_prompt_mappings = {
                        \ 'PrtBS()':              ['<bs>', '<c-]>'],
                        \ 'PrtDelete()':          ['<del>'],
                        \ 'PrtDeleteWord()':      ['<c-w>'],
                        \ 'PrtClear()':           ['<c-u>'],
                        \ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
                        \ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
                        \ 'PrtHistory(-1)':       ['<c-n>'],
                        \ 'PrtHistory(1)':        ['<c-p>'],
                        \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
                        \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
                        \ 'AcceptSelection("t")': ['<c-t>', '<MiddleMouse>'],
                        \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
                        \ 'ToggleFocus()':        ['<s-tab>'],
                        \ 'ToggleRegex()':        ['<c-r>'],
                        \ 'ToggleByFname()':      ['<c-d>'],
                        \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
                        \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
                        \ 'PrtExpandDir()':       ['<tab>'],
                        \ 'PrtInsert("w")':       ['<F2>', '<insert>'],
                        \ 'PrtInsert("s")':       ['<F3>'],
                        \ 'PrtInsert("v")':       ['<F4>'],
                        \ 'PrtInsert("+")':       ['<F6>'],
                        \ 'PrtCurStart()':        ['<c-a>'],
                        \ 'PrtCurEnd()':          ['<c-e>'],
                        \ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
                        \ 'PrtCurRight()':        ['<c-l>', '<right>'],
                        \ 'PrtClearCache()':      ['<F5>'],
                        \ 'PrtDeleteMRU()':       ['<F7>'],
                        \ 'CreateNewFile()':      ['<c-y>'],
                        \ 'MarkToOpen()':         ['<c-z>'],
                        \ 'OpenMulti()':          ['<c-o>'],
                        \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
                        \ }
                " in some terminal, <c-h> is <bs>, so use:
                    " \ 'PrtCurLeft()': ['<left>', '<c-^>']
            let g:ctrlp_mruf_max = 250
            let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*' " MacOSX/Linux
            " let g:ctrlp_mruf_include = '\.py$\|\.rb$'
            let g:ctrlp_mruf_relative = 0 " 1: show only MRU files in current working dir
            let g:ctrlp_mruf_case_sensitive = 1 " avoid duplicate MRU entries.
            let g:ctrlp_dotfiles = 1 " =0 to don't scan for dotfiles and dotdirs.
            let g:ctrlp_custom_ignore = {
                        \ 'dir':  '\.git$\|\.hg$\|\.svn$',
                        \ 'file': '\.exe$\|\.so$\|\.dll$',
                        \ }
                        " \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
            let g:ctrlp_max_files = 10000 " maximum number of files to scan, 0: no limit.
            let g:ctrlp_max_depth = 40 " maximum depth of a dir tree to recurse into.
                " specify external tool for listing files instead of Vim's globpath()
            "let g:ctrlp_user_command = 'find %s -type f' " MacOSX/Linux
            "let g:ctrlp_user_command = 'find %s -type f | grep (?!tmp/.*)'
                " use grep to filter the result.
            " let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' " Windows
            let g:ctrlp_max_history = &history " max of input strings CtrlP remember
                " 0: to disable prompt's history, <c-n>, <c-p> to browse.
            let g:ctrlp_open_new_file = 'v' " specify how newly file be opened when <c-y>
                " t: tab, h: horizontal split, v: vertical split, r: current window.
            let g:ctrlp_open_multiple_files = 'v' " open multiple files with <c-z>, <c-o>
            let g:ctrlp_arg_map = 0
                " 1: <c-o> <c-y> accept extra key as argument to override default
                " t, h, v, r, <esc>|<c-c> to go back to prompt.
            let g:ctrlp_follow_symlinks = 0 " 1: follow all symlinks indiscriminately.
            let g:ctrlp_lazy_update = 0 " only update match window after typing stopped
            let g:ctrlp_use_migemo = 0 " 1: use Migemo Pattern for Japanese filenames.
            let g:ctrlp_buftag_systemenc = &encoding
            " let g:ctrlp_buftag_ctags_bin = ''
            let g:ctrlp_default_input = 0 " seed the prompt with cur file's relat-path
            let g:ctrlp_match_func = {} " an external fuzzy matching function.
            let g:ctrlp_buffer_func = {} " after entering and before exiting buffer
            let g:ctrlp_mruf_default_order = 0 " show only MRU files in pwd
            let g:ctrlp_tabpage_position = 'ac'

            " statusline {{{
            " customize the statusline for CtrlP window.
            let g:ctrlp_status_func = {
                        \ 'main': 'Function_Name_1',
                        \ 'prog': 'Function_Name_2',
                        \ }

            " Arguments: focus, byfname, s:regexp, prv, item, nxt, marked
            " a:1 a:2 a:3 a:4 a:5 a:6 a:7
            "fu! CtrlP_Statusline_1(...)
                "let focus = '%#LineNr# '.a:1.' %*'
                "let byfname = '%#Character# '.a:2.' %*'
                "let regex = a:3 ? '%#LineNr# regex %*' : ''
                "let prv = ' <'.a:4.'>='
                "let item = '{%#Character# '.a:5.' %*}'
                "let nxt = '=<'.a:6.'>'
                "let marked = ' '.a:7.' '
                "let dir = ' %=%<%#LineNr# '.getcwd().' %*'
                "" Return the full statusline
                "retu focus.byfname.regex.prv.item.nxt.marked.dir
            "endf

            " Argument: len
            " a:1
            "fu! CtrlP_Statusline_2(...)
                "let len = '%#Function# '.a:1.' %*'
                "let dir = ' %=%<%#LineNr# '.getcwd().' %*'
                "" Return the full statusline
                "retu len.dir
            "endf
            " }}}

            " extensions {{{
            let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir',
                        \ 'rtscript']
                " the order of them in statusline when using <C-f>, <C-b>
            " }}}

            " file open funcs {{{
            let g:ctrlp_open_func = {
                        \ 'files'     : 'CtrlPHTMLOpenFunc',
                        \ 'buffers'   : 'Function_Name_2',
                        \ 'mru files' : 'Function_Name_3',
                        \ }

            fun! CtrlPHTMLOpenFunc(action, line)
                if a:action == 't' && fnamemodify(a:line, ':e') =~? '^html\?$'
                    let filename = fnameescape(fnamemodify(a:line, ':p'))
                    call ctrlp#exit()
                    silent! execute '!xdg-open' filename
                elseif a:action == 'x' && fnamemodify(a:line, ':e') !~? '^html\?$'
                    call feedkeys("\<c-o>")
                else
                    call call('ctrlp#acceptfile', [a:action, a:line])
                endif
            endf
            " }}}

            " [ mappings ] {{{
            " <c-p>     -- open CtrlP prompt. >>>
            " <c-r>     -- regexp mode. r>>
            " <c-d>     -- full-path or filename only search. >d>
            " <c-f>,<c-up>  -- scroll to next search mode.
            " <c-b>,<c-down> -- scroll to previous search mode.
            " <tab>     -- auto-complete dir names under current working dir.
            " <s-tab>   -- focus between the match window and the prompt.
            " <c-j>,<down>  -- move selection down.
            " <c-k>,<up>    -- move selection up.
            " <c-a>     -- move cursor to the start of the prompt.
            " <c-e>     -- move cursor to the end.
            " <c-h>,<left>,<c-^> -- move the cursor one char to the left.
            " <c-l>,<right>,     -- move the cursor one char to the right.
            " <c-]><bs> -- delete the preceding char.
            " <del>     -- delete the current char.
            " <c-w>     -- delete a preceding innder word.
            " <cr>      -- open selected file in active window.
            " <c-t>     -- open selected file in new tab after the last tabpage.
            " <c-v>     -- open selected file in vertical split.
            " <c-s>,<c-cr>,<c-x> -- open selected file in a horizontal split.
            " <c-y>     -- create a new file and its parent directories.
            " <c-n>     -- next string in the prompt's history.
            " <c-p>     -- previous string in the prompt's history.
            " <c-z>     -- mark/unmark a file to be opened with <c-o>. <c-y>
            " <c-o>     -- open files marked by <c-z>
            " <F5>      -- refresh window. and purge cache.
            " <F7>      -- wipe MRU list. delete MRU entries marked by <c-z>.
            " <insert>  -- ...
            " <esc>,<c-c>,<c-g> -- cancel. exit CtrlP.
            " }}}
        " }}}
