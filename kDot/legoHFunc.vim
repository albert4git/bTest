
" how many occurrences of the current search pattern?           {{{2
command! -range=% CountMatches          <line1>,<line2>s///n

" die, trailing whitespace! die!                                {{{2
command! -range=% NukeTrailingWhitespace <line1>,<line2>s/\s\+$//

" where's that non-ascii character?                             {{{2
command! FindNonAscii                   normal /[^\x00-\x7f]<cr>
command! FindControlChars               normal /[\x00-\x08\x0a-\x1f\x7f]<cr>

" convert \uXXXX to actual characters                           {{{2
command! -range=% ExpandUnicode         <line1>,<line2>s/\\u\([0-9a-fA-F]\{4}\)/\=nr2char(str2nr(submatch(1), 16))/gc

" diffoff used to set wrap as a side effect                     {{{2
command! Diffoff                        diffoff | setlocal nowrap

" See :help DiffOrig                                            {{{2
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis

" :Time SomeOtherCommand                                        {{{2
command! -nargs=+ -complete=command TimeB
        \ let start = reltime() |
        \ exec <q-args> |
        \ echomsg reltimestr(reltime(start)) . " seconds"


function! s:Margin(...)
        if a:0
                let &colorcolumn=join(range(a:1+1,a:1+256),",")
        else
                echo min(split(&colorcolumn, ',')) - 1
        endif
endf
command! -nargs=? -bar Margin  call s:Margin(<args>)
command! -bar MarginOff        set colorcolumn=


"===============================================================================================================

"===============================================================================================================

function! PrintCountry()
        python print("Hello from Python source code!")
        python3 print("Hello from Python3 source code!")
endfunction
command! -nargs=0 PrintCountry call PrintCountry()
"===============================================================================================================
"=============================================PP3===============================================================
"===============================================================================================================

function! WrapWordWith()
python3 << endPython

import vim
from itertools import dropwhile

def python_input(message = 'input'):
    vim.command('call inputsave()')
    vim.command("let user_input = input('" + message + ": ')")
    vim.command('call inputrestore()')
    return vim.eval('user_input')

def wrap_with():
    the_chars = {"[": "]", "['": "']", '["': '"]', "(": ")", "('": "')", '("': '")', "": ")"}
    the_word = vim.eval('expand("<cword>")')
    current_line = vim.current.line
    wrap_name = python_input("Wrap with")
    cursor_pos = vim.current.window.cursor
    open_char_gen = dropwhile(lambda x: x not in ["[", "(", "'", '"'], wrap_name)
    open_char = "".join(open_char_gen)
    courtesy_opener = "" if open_char else "("
    vim.current.buffer[cursor_pos[0] - 1] = current_line.replace(the_word, "{}{}{}{}".format(wrap_name, courtesy_opener, the_word, the_chars[open_char]))

wrap_with()

endPython
endfunction

command! WrapWordWith call WrapWordWith()
" nnoremap ;w :WrapWordWith<CR>
cabbrev w3 call WrapWordWith()<CR>
"===============================================================================================================
"===============================================================================================================

function! TheSilverSearcher()
python3 << endPython

import vim

def python_input(message = 'input'):
        vim.command('call inputsave()')
        vim.command("let user_input = input('" + message + ": ')")
        vim.command('call inputrestore()')
        return vim.eval('user_input')

def silver_search():
        search_args = python_input("Search For")
        if search_args:
                vim.command('silent grep! "{}"'.format(search_args))
                vim.command('redraw!')
                vim.command('redrawstatus!')
                vim.command('copen')

silver_search()

endPython
endfunction

command TheSS call TheSilverSearcher()

"===============================================================================================================
"===============================================================================================================
function! EnhancedYank() range
        normal! ""gvy
        let selection = getreg('"')
        let @p = selection
        let @+ = selection
endfunction

function! EnhancedYankToRegister()
        normal! ""gvy
        let selection = getreg('"')
        call inputsave()
        let g:regToYank = input('Register to yank to: ')
        call inputrestore()
        exe "let @" . g:regToYank . " = '" . selection . "'"
endfunction

"===============================================================================
" Function Keymappings
"===============================================================================
xnoremap y :call EnhancedYank()<CR>
xnoremap <Leader>" :call EnhancedYankToRegister()<CR>
xnoremap <Leader>p "pp
nnoremap <Leader>p "pp

"===============================================================================================================

function! MiniPy3()
python3 << EOF
import sys;
print(sys.version);
EOF
endfunction
command! -register MiniPy3 call MiniPy3()

"===============================================================================================================
function! ColorizeSignColumn()
python << endpython
import vim, struct, hashlib
fname = vim.eval("expand('%:t')")
hash_byte = hashlib.sha1(fname).hexdigest()[0]
fname_color = struct.unpack('B', hash_byte)[0]
vim.command(":hi SignColumn ctermbg={}".format(fname_color))
vim.command("autocmd FileType python highlight ColorColumn ctermbg={}".format(fname_color))
endpython
endfunction

command! CColorizeSignColumn call ColorizeSignColumn()
autocmd BufEnter * :call ColorizeSignColumn()
"===============================================================================================================


"==========================================================================================

command! LocationToggle call LocationToggle()
function! LocationToggle()
        if exists("w:is_location_window")
                unlet w:is_location_window
                exec "q"
        else
                lopen
                let w:is_location_window = 1
        endif
endfunction

"==========================================================================================
command! ToggleQuickFix call ToggleQuickFix()
function! ToggleQuickFix()
        if exists("g:qwindow")
                cclose
                execute "wincmd p"
                unlet g:qwindow
        else
                try
                        copen
                        execute "wincmd J"
                        let g:qwindow = 1
                catch
                        echo "Error!"
                endtry
        endif
endfunction

"===============================================================================================================
"===============================================================================================================

"==================================================================================
" Focus the current line.  Basically:
function! FocusLine()
        let oldscrolloff = &scrolloff
        set scrolloff=0
        execute "keepjumps normal! mzzMzvzt25\<c-y>\<cr>"
        let &scrolloff = oldscrolloff
endfunction

"==================================================================================
function! <SID>SynStack()
        if !exists("*synstack")
                return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"==================================================================================
function! ShowFuncKeys(bang)
        for i in range(1,12)
                redir! => map
                exe "silent " . (a:bang == "!" ? 'verbose' : '') . " map<F" . i . ">"
                redir end
                if map !~ 'No mapping found'
                        echomsg map
                endif
        endfor
endfunction

command! ShowFuncKeys call ShowFuncKeys(<q-bang>)
"==================================================================================
command! ShowFunc call ShowFunc()
command! ShowFuncC call ShowFunc()
function! ShowFunc()
        let gf_s = &grepformat
        let gp_s = &grepprg

        let &grepformat = '%*\k%*\sfunction%*\s%l%*\s%f %*\s%m'
        let &grepprg = 'ctags -x --c-types=f --sort=no -o -'

        write
        silent! grep %
        cwindow

        let &grepformat = gf_s
        let &grepprg = gp_s
endfunc


"===============================================================================================================
"===============================================================================================================



"==========================================================================================
"::::::::::::::::::::::::::::::---FZFStart--:::::::::::::::::::::::::::::::::::::::::::::::
"==========================================================================================
" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_layout = { 'window': '10split enew' }
"let g:fzf_history_dir = '~/.local/share/fzf-history'
"==========================================================================================
let g:fzf_colors =
                        \ { 'fg':      ['fg', 'Comment'],
                        \ 'bg':      ['bg', 'Normal'],
                        \ 'hl':      ['fg', 'Comment'],
                        \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                        \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn', 'Normal'],
                        \ 'hl+':     ['fg', 'Statement'],
                        \ 'info':    ['fg', 'PreProc'],
                        \ 'border':  ['fg', 'Ignore'],
                        \ 'prompt':  ['fg', 'Conditional'],
                        \ 'pointer': ['fg', 'Exception'],
                        \ 'marker':  ['fg', 'Keyword'],
                        \ 'spinner': ['fg', 'Comment'],
                        \ 'header':  ['fg', 'Comment'] }
"==========================================================================================
let g:fzf_command_prefix = 'FF'
let g:fzf_action = {
                        \ 'ctrl-t': 'tab split',
                        \ 'ctrl-s': 'split',
                        \ 'ctrl-x': ':Lynx',
                        \ 'ctrl-v': 'vsplit' }
"==========================================================================================
function! s:fzf_statusline()
        highlight fzf1 ctermfg=11 ctermbg=9
        highlight fzf2 ctermfg=11 ctermbg=9
        highlight fzf3 ctermfg=11 ctermbg=9
        setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()
"========================================================
"==========================================================================================
"-[Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
"-[[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
"-[Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'
"-[Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

"==========================================================================================
function! FzfSpellSink(word)
        exe 'normal! "_ciw'.a:word
endfunction
function! FzfSpell()
        let suggestions = spellsuggest(expand("<cword>"))
        return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'left': 30 })
endfunction

"========================================================================================================
command! ZTag if !empty(tagfiles()) | call fzf#run({
                        \ 'source': "cat " . join(tagfiles()) . ' | grep -P "' . expand('%:t') . '"',
                        \ 'sink': function('<sid>tag_handler'),
                        \ 'options': '+m --with-nth=1',
                        \ 'right': '25%'
                        \ }) | else | echo 'No tags' | endif
"==================================================================================
function! s:tag_handler(tag)
        if !empty(a:tag)
                let token = split(split(a:tag, '\t')[2],';"')[0]
                let m = &magic
                setlocal nomagic
                execute token
                if m
                        setlocal magic
                endif
        endif
endfunction
"==================================================================================
" KKK FZF Selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)


"===NEXT================================================
"Insert mode completion
"imap <c-f> <plug>(fzf-complete-path)
"Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')
imap <c-k> <plug>(fzf-complete-word)
imap <expr><A-k> fzf#vim#complete#word({'left': '20%'})
imap <c-j> <plug>(fzf-complete-file-ag)
imap <c-l> <plug>(fzf-complete-line)
"===NEXT================================================
" Global line completion (not just open buffers. ripgrep required.)
inoremap <expr> <c-q> fzf#vim#complete(fzf#wrap({
                        \ 'prefix': '^.*$',
                        \ 'source': 'rg -n ^ --color always',
                        \ 'options': '--ansi --delimiter : --nth 3..',
                        \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))
"========================================================

"============================================================================================
"=========
"MAO 
"nmap <C-p> :FZF<cr>
"nnoremap <C-p> :<C-u>FZF<CR>
"mao
"=========
"============================================================================================
"=========

command! -bang -nargs=* ZFind call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
command! -bang -nargs=* ZFi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

"=========
"============================================================================================
"=========

command! -bang -nargs=? -complete=dir ZFiles
                        \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=?  ZAg
                        \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* ZRg 
                        \call fzf#vim#grep('rg --column --line-number --no-heading 
                        \--fixed-strings --ignore-case --no-ignore --hidden --follow 
                        \--glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

command! -bang -nargs=?  ZGit
                        \ call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})

command! -bang -nargs=?  ZClr
                        \ call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
                        \ 'fnamemodify(v:val, ":t:r")'),
                        \ 'sink': 'colo', 'left': '25%'})


"=========
"========================================================================================================
"=========

let g:pathToTemplates='~/bakBuk/'

function! PutSink(file)
        execute ':r '.g:pathToTemplates.a:file
endfunction

command! ZPut call fzf#run({
                        \  'source': 'ls '.g:pathToTemplates,
                        \  'sink':    function('PutSink')})

"=========
"====================================================================================
"=========

command! ZLibList call fzf#run({'source': 'find ~/git/ ~/Documents/ -type f', 'sink':  'edit'})

"=========
"========================================================================================================
"=========

function! s:plug_help_sink(line)
        let dir = g:plugs[a:line].dir
        for pat in ['doc/*.txt', 'README.md']
                let match = get(split(globpath(dir, pat), "\n"), 0, '')
                if len(match)
                        execute 'tabedit' match
                        return
                endif
        endfor
        tabnew
        execute 'Explore' dir
endfunction

command! ZPlugHelp call fzf#run(fzf#wrap({
                        \ 'source': sort(keys(g:plugs)),
                        \ 'sink':   function('s:plug_help_sink'),
                        \'right': '30%'
                        \}))

"=========
"============================================================================================
"=========

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

"============================================================================================
" Any command that lists files can be used as the source
" call fzf#run(fzf#wrap({'source': 'ls'}))
" call fzf#run(fzf#wrap({'source': 'git ls-files'}))
"============================================================================================

"==========================================================================================
"::::::::::::::::::::::::::::::---FZFStop--::::::::::::::::::::::::::::::::::::::::::::::::
"==========================================================================================

"===============================================================================================================
"===============================================================================================================


"===============================================================================================================
"===============================================================================================================

