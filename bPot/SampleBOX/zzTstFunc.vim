"==================================================================================
" guifg=#ff0ad8
" guifg=#0fdad8
" guifg=#ffda00
"==================================================================================
" hi User1 guifg=#eea040 guibg=#2222a2
" hi User2 guifg=#dd3333 guibg=#222262
" hi User3 guifg=#ff66ff guibg=#225222
" hi User4 guifg=#a0ee40 guibg=#822222
" hi User5 guifg=#eeee40 guibg=#522222
"==================================================================================
hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe
"==================================================================================


"----------------------------------------------------------------------------------
        function! Version()
                let l:n = 1
                while has('patch' . n)
                        let l:n += 1
                endwhile
                return printf('%d.%d.%04d', v:version / 100, v:version % 100, n - 1)
        endfunction
        command! Version echo 's10-' . Version()
"----------------------------------------------------------------------------------
        function! s:cursor_ping()
                let l:cursorline = &cursorline
                let l:cursorcolumn = &cursorcolumn
                for _ in range(5)
                        set cursorline! cursorcolumn!
                        redraw
                        sleep 15m
                endfor
                let &cursorline = l:cursorline
                let &cursorcolumn = l:cursorcolumn
        endfunction
        nmap <silent> <M-Space> :call <SID>cursor_ping()<CR>

        "----------------------------------------------------------------------------------
        cmap <M-.> <C-r>=expand('%:p:h') . '/'<CR>
"===============================================================================
function! MyJumpTo()
    let filetype=&ft
    if filetype == "python"
        exe ":call jedi#goto_definitions()"
    else
        :exe "norm \<C-]>"
    endif
endfunction
"===============================================================================
nnoremap <Leader>5 :call MyJumpTo()<CR>


"++AAA+#Inc+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
" Add argument (can be negative, default 1) to global variable i.
" Return value of i before the change.
function Inc(...)
  let result = g:i
  let g:i += a:0 > 0 ? a:1 : 1
  return result
endfunction

" Suppose you want to replace each occurrence of "abc" with "xyz_N"
" where N is an ascending number (xyz_1, xyz_2, xyz_3, and so on).

" :let i = 1 | %s/abc/\='xyz_' . Inc()/g
193.168.0.1
0192.168.0.2
0192.168.0.3
0192.168.0.4
0211.168.0.5

For another example, the following command replaces each occurrence of "abc" with a number
that increases by 5, starting at 100 (the numbers will be 100, 105, 110, and so on):
:let i=100 | :%s/abc/\=Inc(5)/g

"++AAAx++}}}

"==================================================================================
function! s:js_completor(opt, ctx) abort
    let l:col = a:ctx['col']
    let l:typed = a:ctx['typed']

    let l:kw = matchstr(l:typed, '\v\S+$')
    let l:kwlen = len(l:kw)

    let l:startcol = l:col - l:kwlen

    let l:matches = [
        \ "do", "if", "in", "for", "let", "new", "try", "var", "case", "else", "enum", "eval", "null", "this", "true",
        \ "void", "with", "await", "break", "catch", "class", "const", "false", "super", "throw", "while", "yield",
        \ "delete", "export", "import", "public", "return", "static", "switch", "typeof", "default", "extends",
        \ "finally", "package", "private", "continue", "debugger", "function", "arguments", "interface", "protected",
        \ "implements", "instanceof"
        \ ]

    call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'javascript',
    \ 'whitelist': ['javascript'],
    \ 'completor': function('s:js_completor'),
    \ })
"==================================================================================

"==========================================================================================
        command! ZDeviList call ZDeviList()
        command! ZDevi call ZDeviList()
        " Files + devicons
        function! ZDeviList()
                function! s:files()
                        let files = split(system($FZF_DEFAULT_COMMAND), '\n')
                        return s:prepend_icon(files)
                endfunction

                function! s:prepend_icon(candidates)
                        let result = []
                        for candidate in a:candidates
                                let filename = fnamemodify(candidate, ':p:t')
                                let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
                                call add(result, printf("%s %s", icon, candidate))
                        endfor

                        return result
                endfunction

                function! s:edit_file(item)
                        let parts = split(a:item, ' ')
                        let file_path = get(parts, 1, '')
                        execute 'silent e' file_path
                endfunction

                call fzf#run({
                                        \ 'source': <sid>files(),
                                        \ 'sink':   function('s:edit_file'),
                                        \ 'options': '-m -x +s',
                                        \ 'down':    '40%' })
        endfunction
"==========================================================================================


"++AAA+#StatusLine++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"=========================================================================================
"*****************************************************************************************
"=========================================================================================
function! ChangeStatuslineColor()
        if (mode() =~# '\v(n|no)')
                exe 'hi! StatusLine ctermfg=008 guibg=#2fda00'
        elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
                exe 'hi! StatusLine ctermfg=005 guibg=#ff0ad8'
        elseif (mode() ==# 'i')
                exe 'hi! StatusLine ctermfg=004 guibg=#0fdad8'
        else
                exe 'hi! StatusLine ctermfg=006 guibg=#ffda00'
        endif
        return ''
endfunction
"=========================================================================================
function! GitInfo()
        let git = fugitive#head()
        if git != ''
                return ' '.fugitive#head()
        else
                return ''
endfunction
"==========================================================================================
set laststatus=2
set statusline=
set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%8*\ [%n]                                " buffernr
set statusline+=%8*\ %{GitInfo()}                        " Git Branch name
"==================================================================================
"==================================================================================
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}
"==================================================================================
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
"++bbb++}}}


"++AAA++#HowTo++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "-------------------------------------------------------------------------------
        "let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
        "nnoremap <silent> <C-o> :let g:cpsm_match_empty_query = 0<CR>:CtrlPMRU<CR>
        "nnoremap <silent> <C-p> :let g:cpsm_match_empty_query = 1<CR>:CtrlP<CR>
        "==================================================================================
        "1y$  //yank current row to register 1
        "<C-r>a to paste from register a
        "----------------------------------------------------------------------------------
        " Auto format codes
        " noremap <F4> :Autoformat<CR>
        " formatt upon saving
        " au BufWrite * :Autoformat
        "---------------------------------------------------------------
        "============================================================================================
        " command! -bang -nargs=?  ZClr
        "                         \ call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
        "                         \ 'fnamemodify(v:val, ":t:r")'),
        "                         \ 'sink': 'colo', 'left': '25%'})
        "============================================================================================
        " command! -bang -nargs=* ZFi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
"++bbb++}}}
