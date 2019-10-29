        "-----------------------------------------------------------------------------------
        "set completeopt=menuone,menu,longest,preview
        "set complete& completeopt=menu infercase noshowfulltag
        "--------------------------------------------------------------------------------
        "--------------------------------------------------------------------------------
        set complete=.,w,b,t,i,u,kspell
        "            | | | | | | |
        "            | | | | | | `-dict
        "            | | | | | `-unloaded buffers
        "            | | | | `-include files
        "            | | | `-tags
        "            | | `-other loaded buffers
        "            | `-windows buffers
        "            `-the current buffer
        "--------------------------------------------
        "set complete+=ispell
        set omnifunc=syntaxcomplete#Complete


        "------------------------------InsertMode Scroll-------------------------------""
        :inoremap <C-E> <C-X><C-E>
        " :inoremap <C-Y> <C-X><C-Y>

        "======================================================================================================
        "::::::::::::::::::::::::::::::-UNFUC-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======================================================================================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        let g:undoquit_mapping = ';q' 
        nnoremap <Leader>q :Bdelete<CR> 
        "=============================================
        "===Make zO recursively open whatever fold====
        "=============================================
        nnoremap ,z :call FocusLine()<cr>
        nnoremap z0 zczO 

        "------------------------------------------------------------------
        nnoremap z8 :call <SID>SynStack()<CR>

        "---------------------------------------------------------------------------------- 
        " abc,def,ghi
        " the, most , short , long , big , bigly 
        " a,b,c
        "---------------------------------------------------------------------------------- 
        nnoremap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>
        "---------------------------------------------------------------------------------- 

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

        "==================================================================================
        "---Open-Quickfix-window-automatically---------------------------------------------
        "==================================================================================
        autocmd QuickFixCmdPost grep cwindow
        autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
        autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p

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


        "======================================================================================================
        "::::::::::::::::::::::::::::::---FZF---:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======================================================================================================
        " In Neovim, you can set up fzf window using a Vim command
        let g:fzf_layout = { 'window': 'enew' }
        let g:fzf_layout = { 'window': '-tabnew' }
        let g:fzf_layout = { 'down': '~20%' }
        let g:fzf_layout = { 'window': '10split enew' }
        "let g:fzf_history_dir = '~/.local/share/fzf-history'
        "==========================================================================================
        let g:fzf_colors = { 'fg':      ['fg', 'Comment'], 'bg':      ['bg', 'Normal'], 'hl':      ['fg', 'Comment'], 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'], 'bg+':     ['bg', 'CursorLine', 'CursorColumn', 'Normal'], 'hl+':     ['fg', 'Statement'], 'info':    ['fg', 'PreProc'], 'border':  ['fg', 'Ignore'], 'prompt':  ['fg', 'Conditional'], 'pointer': ['fg', 'Exception'], 'marker':  ['fg', 'Keyword'], 'spinner': ['fg', 'Comment'], 'header':  ['fg', 'Comment'] }
        "==========================================================================================
        let g:fzf_command_prefix = 'FF'
        let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-s': 'split', 'ctrl-x': ':Lynx', 'ctrl-v': 'vsplit' }
        "==========================================================================================
        function! s:fzf_statusline()
                highlight fzf1 ctermfg=11 ctermbg=9
                highlight fzf2 ctermfg=11 ctermbg=9
                highlight fzf3 ctermfg=11 ctermbg=9
                setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
        endfunction
        autocmd! User FzfStatusLine call <SID>fzf_statusline()

        "==========================================================================================
        "-[Buffers] Jump to the existing window if possible
        let g:fzf_buffers_jump = 1
        "-[[B]Commits] Customize the options used by 'git log':
        let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
        "-[Tags] Command to generate tags file
        let g:fzf_tags_command = 'ctags -R'
        "-[Commands] --expect expression for directly executing the command
        let g:fzf_commands_expect = 'alt-enter,ctrl-x'

        "======================================================================================================
        function! FzfSpellSink(word)
                exe 'normal! "_ciw'.a:word
        endfunction
        function! FzfSpell()
                let suggestions = spellsuggest(expand("<cword>"))
                return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'left': 30 })
        endfunction

        "======================================================================================================
        command! ZTag if !empty(tagfiles()) | call fzf#run({ 'source': "cat " . join(tagfiles()) . ' | grep -P "' . expand('%:t') . '"', 'sink': function('<sid>tag_handler'), 'options': '+m --with-nth=1', 'right': '25%' }) | else | echo 'No tags' | endif

        "===============================================================
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
        "======================================================================================================


        "========================================================
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
        inoremap <expr> <c-q> fzf#vim#complete(fzf#wrap({ 'prefix': '^.*$', 'source': 'rg -n ^ --color always', 'options': '--ansi --delimiter : --nth 3..', 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))
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

       command! -bang -nargs=? -complete=dir ZFiles call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

       command! -bang -nargs=?  ZAg call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

       command! -bang -nargs=* ZRg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

       command! -bang -nargs=?  ZGit call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})

       command! -bang -nargs=?  ZClr call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')), 'fnamemodify(v:val, ":t:r")'), 'sink': 'colo', 'left': '25%'})


       "=========
       "========================================================================================================
       "=========

       let g:pathToTemplates='~/bakBuk/'

       function! PutSink(file)
               execute ':r '.g:pathToTemplates.a:file
       endfunction

       command! ZPut call fzf#run({  'source': 'ls '.g:pathToTemplates,  'sink':    function('PutSink')})

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

       command! ZPlugHelp call fzf#run(fzf#wrap({ 'source': sort(keys(g:plugs)), 'sink':   function('s:plug_help_sink'),'right': '30%'}))


       "============================================================================================
       " Any command that lists files can be used as the source
       " call fzf#run(fzf#wrap({'source': 'ls'}))
       " call fzf#run(fzf#wrap({'source': 'git ls-files'}))
       "============================================================================================

       nmap zp <Plug>yankstack_substitute_older_paste
       nmap zn <Plug>yankstack_substitute_newer_paste

       " map p <Plug>(miniyank-autoput)
       " map P <Plug>(miniyank-autoPut)
       " C-c and C-v - Copy/Paste to global clipboard
       vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]p
       "============================================================================================
       "===???======================================================================================
       " :command! NpmRestart call jobsend(1, "\<C-c>npm run server\<CR>")
       " :command! ApaStart call jobsend(1, "\<C-c>apachectl start\<CR>")
       ":Restart
       "============================================================================================
        " I want this tip to inspire you. Perhaps you never thought of running a web
        " server from inside your text editor. Does this give you ideas for other
        " processes that you could control remotely?

        " snippet si2nce
        " @since ${0:#:version}

       "============================================================================================
        " The GNU bison parser generator (similar to YACC) generates a couple of
        " different types of errors. They start with the file name, then a colon. If
        " available, the linenumber comes next, followed by a dot (period) and the
        " column number. If appropriate, a dash and then another column number (giving a
        " column range) follows, and then a colon, space, and the error message.

        set errorformat+=%f:%l.%c-%*[0-9]:\ %m
        set errorformat+=%f:%l.%c:\ %m
        set errorformat+=%f:\ %m

        "--------------------------------------------------------------------------------- 
        " :MMake to perform a :make and to open any resulting quickfix window: 
        " command -nargs=* MMake make <args>|cwindow 3

        "--------------------------------------------------------------------------------- 
        " nmap gz <Plug>ZVOperator
        " vmap <localleader>z <Plug>ZVVisSelection
        nmap ;z <Plug>Zeavim
        nmap <Leader>z <Plug>ZVKeyDocset

"===============================================================================================================
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
        command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif

"===============================================================================================================
nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>

"===============================================================================================================
" Search for visually highlighted text
" :vmap ff y/<C-R>"<CR>
"===============================================================================================================

"===============================================================================================================
" Since teaching a lesson on pytest in our 100 Days of Code course I discovered
" coverage and made this alias in my .vimrc to simply check it with one keystroke:
" nmap ,t :w<CR>:!pytest -s --cov-report term-missing --cov='.'<CR>
" # enable venv (TODO: switch to pipenv)
" pip install pytest-cov
"===============================================================================================================
nmap <silent> <Leader>d <Plug>DictSearch
nnoremap <Leader>t :!goldendict <C-r><C-w><CR>

 nmap <Leader>s <Plug>(textobj-diff-hunk-n)

" <Leader>dk <Plug>(textobj-diff-hunk-p)

"===============================================================================================================
"===VIM-SARTIFY-1===============================================================================================
"===============================================================================================================
" autocmd!  VimEnter * execute ":Startify"
" autocmd!  VimEnter * execute ":SearchIndex"
"===============================================================================================================
let g:startify_custom_header      = ['', "   Vim is charityware. Please read ':help uganda'.", '']

let g:startify_enable_special      = 1
let g:startify_files_number        = 9
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1
let g:startify_update_oldfiles     = 1
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1

highlight StartifyBracket ctermfg=14
highlight StartifyFooter  ctermfg=10
highlight StartifyHeader  ctermfg=14
highlight StartifyNumber  ctermfg=9
highlight StartifyPath    ctermfg=245
highlight StartifySlash   ctermfg=240
highlight StartifySpecial ctermfg=240

"===============================================================================================================
let g:startify_skiplist = [ 'COMMIT_EDITMSG', 'bundle/.*/doc', '/data/repo/neovim/runtime/doc', '/Users/mhi/local/vim/share/vim/vim74/doc', ]

"===============================================================================================================
let g:startify_bookmarks = [ '~/git/bTest/kDot/kIng19.sh', '~/git/bTest/kDot/k2MinFF.vim', '~/git/bTest/kDot/k2MinFzfDeoLs.vim', '~/git/bTest/kDot/kZshrc19.sh', '~/git/bTest/kDot/kBank21.yml', ]

"===============================================================================================================
let g:startify_custom_footer = ['', "   Vim is charityware. Please read ':help uganda'.", '']

"===============================================================================================================
let g:startify_list_order = [ ['   Commands'], 'commands', ['   Sessions'], 'sessions', ['   MRU Files'], 'files', ['   MRU Files in Current Dir'], 'dir', ['   Bookmarks'], 'bookmarks', ]

"===============================================================================================================
let g:startify_session_dir = '~/git/bTest/kDot/zSS'
let g:startify_session_sort = 1
let g:startify_session_number = 5

"===============================================================================================================
let g:startify_commands = [ {'a': ['seti', ':colorscheme seti']}, {'b': ['FZFMru', ':FZFMru']}, {'i': ['FFMarks', ':FFMarks']}, {'c': ['FFHistory', ':FFHistory']}, {'d': ['FFHelptags', ':FFHelptags']}, {'e': ['ZPlugHelp', ':ZPlugHelp']}, {'k': ['ZTag', ':ZTag']}, {'l': ['ZFiles', ':ZFiles']}, {'n': ['ZLibList', ':ZLibList']}, {'f': ['LGHistory', ':LGHistory']}, {'g': ['CommandTHelp', ':CommandTHelp']}, {'x': ['FZFDefinitions', ':FZFDefinitions']}, {'p': ['List', ':List']}, {'r': ['List', ':List']}, {'u': ['unite', ':Unite help buffer file_mru file file_rec bookmark']}, ]

"===============================================================================================================
cabbrev SS  SideSearch
cabbrev ZA  FFMarks
cabbrev ZM  FZFMru
cabbrev ZD  FZFDefinitions
cabbrev ZH  FFHelptags
cabbrev ZL  FFLines
cabbrev ZBL FFBLines
cabbrev ZT  ZTag
cabbrev ZF  ZFiles
cabbrev ZS  ZSnippets
nmap == :call FzfSpell()<CR>

"===============================================================================================================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> ; :<c-u>WhichKey  ';'<CR>

let g:which_key_hspace =4
let g:which_key_sep = get(g:, 'which_key_sep', '>>')
let g:which_key_hspace = get(g:, 'which_key_hspace', 4)
let g:which_key_vertical = get(g:, 'which_key_vertical', 1)
" let g:which_key_flatten = get(g:, 'which_key_flatten', 0)
"===============================================================================================================

let g:which_key_map = {}

let g:which_key_map.9 = { 'name' : '+buffer' , '1' : ['b1'        , 'buffer 1']        , '2' : ['b2'        , 'buffer 2']        , 'd' : ['bd'        , 'delete-buffer']   , 'f' : ['bfirst'    , 'first-buffer']    , 'h' : ['Startify'  , 'home-buffer']     , 'l' : ['blast'     , 'last-buffer']     , 'n' : ['bnext'     , 'next-buffer']     , 'p' : ['bprevious' , 'previous-buffer'] , '?' : ['Buffers'   , 'fzf-buffer']      , }

let g:which_key_map.8= { 'name' : '+windows' , 'w' : ['<C-W>w'     , 'other-window']          , 'd' : ['<C-W>c'     , 'delete-window']         , '-' : ['<C-W>s'     , 'split-window-below']    , '|' : ['<C-W>v'     , 'split-window-right']    , '2' : ['<C-W>v'     , 'layout-double-columns'] , 'h' : ['<C-W>h'     , 'window-left']           , 'j' : ['<C-W>j'     , 'window-below']          , 'l' : ['<C-W>l'     , 'window-right']          , 'k' : ['<C-W>k'     , 'window-up']             , 'H' : ['<C-W>5<'    , 'expand-window-left']    , 'J' : ['resize +5'  , 'expand-window-below']   , 'L' : ['<C-W>5>'    , 'expand-window-right']   , 'K' : ['resize -5'  , 'expand-window-up']      , '=' : ['<C-W>='     , 'balance-window']        , 's' : ['<C-W>s'     , 'split-window-below']    , 'v' : ['<C-W>v'     , 'split-window-below']    , '?' : ['Windows'    , 'fzf-window']            , }

let g:which_key_map.7 = { 'name' : '+open', 'q' : 'open-quickfix'    , 'l' : 'open-locationlist', }

"===============================================================================================================
 
        "set completeopt=menu
        "set completeopt=menuone,menu,longest,preview
        "set complete& completeopt=menu infercase noshowfulltag
        "--------------------------------------------------------------------------------
        "--------------------------------------------------------------------------------
        set complete=.,w,b,t,i,u,kspell
        "            | | | | | | |
        "            | | | | | | `-dict
        "            | | | | | `-unloaded buffers
        "            | | | | `-include files
        "            | | | `-tags
        "            | | `-other loaded buffers
        "            | `-windows buffers
        "            `-the current buffer
        "--------------------------------------------
        "set complete+=ispell
        set omnifunc=syntaxcomplete#Complete


        "------------------------------InsertMode Scroll-------------------------------""
        :inoremap <C-E> <C-X><C-E>
        " :inoremap <C-Y> <C-X><C-Y>

        "======================================================================================================
        "::::::::::::::::::::::::::::::-UNFUC-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======================================================================================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        let g:undoquit_mapping = ';q' 
        nnoremap <Leader>q :Bdelete<CR> 
        "=============================================
        "===Make zO recursively open whatever fold====
        "=============================================
        nnoremap ,z :call FocusLine()<cr>
        nnoremap z0 zczO 

        "------------------------------------------------------------------
        nnoremap z8 :call <SID>SynStack()<CR>

        "---------------------------------------------------------------------------------- 
        " abc,def,ghi
        " the, most , short , long , big , bigly 
        " a,b,c
        "---------------------------------------------------------------------------------- 
        nnoremap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>
        "---------------------------------------------------------------------------------- 

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

        "==================================================================================
        "---Open-Quickfix-window-automatically---------------------------------------------
        "==================================================================================
        autocmd QuickFixCmdPost grep cwindow
        autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
        autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p

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


        "======================================================================================================
        "::::::::::::::::::::::::::::::---FZF---:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "======================================================================================================
        " In Neovim, you can set up fzf window using a Vim command
        let g:fzf_layout = { 'window': 'enew' }
        let g:fzf_layout = { 'window': '-tabnew' }
        let g:fzf_layout = { 'down': '~20%' }
        let g:fzf_layout = { 'window': '10split enew' }
        "let g:fzf_history_dir = '~/.local/share/fzf-history'
        "==========================================================================================
        let g:fzf_colors = { 'fg':      ['fg', 'Comment'], 'bg':      ['bg', 'Normal'], 'hl':      ['fg', 'Comment'], 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'], 'bg+':     ['bg', 'CursorLine', 'CursorColumn', 'Normal'], 'hl+':     ['fg', 'Statement'], 'info':    ['fg', 'PreProc'], 'border':  ['fg', 'Ignore'], 'prompt':  ['fg', 'Conditional'], 'pointer': ['fg', 'Exception'], 'marker':  ['fg', 'Keyword'], 'spinner': ['fg', 'Comment'], 'header':  ['fg', 'Comment'] }
        "==========================================================================================
        let g:fzf_command_prefix = 'FF'
        let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-s': 'split', 'ctrl-x': ':Lynx', 'ctrl-v': 'vsplit' }
        "==========================================================================================
        function! s:fzf_statusline()
                highlight fzf1 ctermfg=11 ctermbg=9
                highlight fzf2 ctermfg=11 ctermbg=9
                highlight fzf3 ctermfg=11 ctermbg=9
                setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
        endfunction
        autocmd! User FzfStatusLine call <SID>fzf_statusline()

        "==========================================================================================
        "-[Buffers] Jump to the existing window if possible
        let g:fzf_buffers_jump = 1
        "-[[B]Commits] Customize the options used by 'git log':
        let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
        "-[Tags] Command to generate tags file
        let g:fzf_tags_command = 'ctags -R'
        "-[Commands] --expect expression for directly executing the command
        let g:fzf_commands_expect = 'alt-enter,ctrl-x'

        "======================================================================================================
        function! FzfSpellSink(word)
                exe 'normal! "_ciw'.a:word
        endfunction
        function! FzfSpell()
                let suggestions = spellsuggest(expand("<cword>"))
                return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'left': 30 })
        endfunction

        "======================================================================================================
        command! ZTag if !empty(tagfiles()) | call fzf#run({ 'source': "cat " . join(tagfiles()) . ' | grep -P "' . expand('%:t') . '"', 'sink': function('<sid>tag_handler'), 'options': '+m --with-nth=1', 'right': '25%' }) | else | echo 'No tags' | endif

        "===============================================================
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
        "======================================================================================================


        "========================================================
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
        inoremap <expr> <c-q> fzf#vim#complete(fzf#wrap({ 'prefix': '^.*$', 'source': 'rg -n ^ --color always', 'options': '--ansi --delimiter : --nth 3..', 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))
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

       command! -bang -nargs=? -complete=dir ZFiles call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

       command! -bang -nargs=?  ZAg call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

       command! -bang -nargs=* ZRg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

       command! -bang -nargs=?  ZGit call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})

       command! -bang -nargs=?  ZClr call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')), 'fnamemodify(v:val, ":t:r")'), 'sink': 'colo', 'left': '25%'})


       "=========
       "========================================================================================================
       "=========

       let g:pathToTemplates='~/bakBuk/'

       function! PutSink(file)
               execute ':r '.g:pathToTemplates.a:file
       endfunction

       command! ZPut call fzf#run({  'source': 'ls '.g:pathToTemplates,  'sink':    function('PutSink')})

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

       command! ZPlugHelp call fzf#run(fzf#wrap({ 'source': sort(keys(g:plugs)), 'sink':   function('s:plug_help_sink'),'right': '30%'}))


       "============================================================================================
       " Any command that lists files can be used as the source
       " call fzf#run(fzf#wrap({'source': 'ls'}))
       " call fzf#run(fzf#wrap({'source': 'git ls-files'}))
       "============================================================================================

       nmap zp <Plug>yankstack_substitute_older_paste
       nmap zn <Plug>yankstack_substitute_newer_paste

       " map p <Plug>(miniyank-autoput)
       " map P <Plug>(miniyank-autoPut)
       " C-c and C-v - Copy/Paste to global clipboard
       vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]p
       "============================================================================================
       "===???======================================================================================
       " :command! NpmRestart call jobsend(1, "\<C-c>npm run server\<CR>")
       " :command! ApaStart call jobsend(1, "\<C-c>apachectl start\<CR>")
       ":Restart
       "============================================================================================
        " I want this tip to inspire you. Perhaps you never thought of running a web
        " server from inside your text editor. Does this give you ideas for other
        " processes that you could control remotely?

        " snippet si2nce
        " @since ${0:#:version}

       "============================================================================================
        " The GNU bison parser generator (similar to YACC) generates a couple of
        " different types of errors. They start with the file name, then a colon. If
        " available, the linenumber comes next, followed by a dot (period) and the
        " column number. If appropriate, a dash and then another column number (giving a
        " column range) follows, and then a colon, space, and the error message.

        set errorformat+=%f:%l.%c-%*[0-9]:\ %m
        set errorformat+=%f:%l.%c:\ %m
        set errorformat+=%f:\ %m

        "--------------------------------------------------------------------------------- 
        " :MMake to perform a :make and to open any resulting quickfix window: 
        " command -nargs=* MMake make <args>|cwindow 3

        "--------------------------------------------------------------------------------- 
        " nmap gz <Plug>ZVOperator
        " vmap <localleader>z <Plug>ZVVisSelection
        nmap ;z <Plug>Zeavim
        nmap <Leader>z <Plug>ZVKeyDocset

"===============================================================================================================
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
        command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif

"===============================================================================================================
nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>

"===============================================================================================================
" Search for visually highlighted text
" :vmap ff y/<C-R>"<CR>
"===============================================================================================================

"===============================================================================================================
" Since teaching a lesson on pytest in our 100 Days of Code course I discovered
" coverage and made this alias in my .vimrc to simply check it with one keystroke:
" nmap ,t :w<CR>:!pytest -s --cov-report term-missing --cov='.'<CR>
" # enable venv (TODO: switch to pipenv)
" pip install pytest-cov
"===============================================================================================================
nmap <silent> <Leader>d <Plug>DictSearch
nnoremap <Leader>t :!goldendict <C-r><C-w><CR>

 nmap <Leader>s <Plug>(textobj-diff-hunk-n)

" <Leader>dk <Plug>(textobj-diff-hunk-p)

"===============================================================================================================
"===VIM-SARTIFY-1===============================================================================================
"===============================================================================================================
" autocmd!  VimEnter * execute ":Startify"
" autocmd!  VimEnter * execute ":SearchIndex"
"===============================================================================================================
let g:startify_custom_header      = ['', "   Vim is charityware. Please read ':help uganda'.", '']

let g:startify_enable_special      = 1
let g:startify_files_number        = 9
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1
let g:startify_update_oldfiles     = 1
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1

highlight StartifyBracket ctermfg=14
highlight StartifyFooter  ctermfg=10
highlight StartifyHeader  ctermfg=14
highlight StartifyNumber  ctermfg=9
highlight StartifyPath    ctermfg=245
highlight StartifySlash   ctermfg=240
highlight StartifySpecial ctermfg=240

"===============================================================================================================
let g:startify_skiplist = [ 'COMMIT_EDITMSG', 'bundle/.*/doc', '/data/repo/neovim/runtime/doc', '/Users/mhi/local/vim/share/vim/vim74/doc', ]

"===============================================================================================================
let g:startify_bookmarks = [ '~/git/bTest/kDot/kIng19.sh', '~/git/bTest/kDot/k2MinFF.vim', '~/git/bTest/kDot/k2MinFzfDeoLs.vim', '~/git/bTest/kDot/kZshrc19.sh', '~/git/bTest/kDot/kBank21.yml', ]

"===============================================================================================================
let g:startify_custom_footer = ['', "   Vim is charityware. Please read ':help uganda'.", '']

"===============================================================================================================
let g:startify_list_order = [ ['   Commands'], 'commands', ['   Sessions'], 'sessions', ['   MRU Files'], 'files', ['   MRU Files in Current Dir'], 'dir', ['   Bookmarks'], 'bookmarks', ]

"===============================================================================================================
let g:startify_session_dir = '~/git/bTest/kDot/zSS'
let g:startify_session_sort = 1
let g:startify_session_number = 5

"===============================================================================================================
let g:startify_commands = [ {'a': ['seti', ':colorscheme seti']}, {'b': ['FZFMru', ':FZFMru']}, {'i': ['FFMarks', ':FFMarks']}, {'c': ['FFHistory', ':FFHistory']}, {'d': ['FFHelptags', ':FFHelptags']}, {'e': ['ZPlugHelp', ':ZPlugHelp']}, {'k': ['ZTag', ':ZTag']}, {'l': ['ZFiles', ':ZFiles']}, {'n': ['ZLibList', ':ZLibList']}, {'f': ['LGHistory', ':LGHistory']}, {'g': ['CommandTHelp', ':CommandTHelp']}, {'x': ['FZFDefinitions', ':FZFDefinitions']}, {'p': ['List', ':List']}, {'r': ['List', ':List']}, {'u': ['unite', ':Unite help buffer file_mru file file_rec bookmark']}, ]

"===============================================================================================================
cabbrev SS  SideSearch
cabbrev ZA  FFMarks
cabbrev ZM  FZFMru
cabbrev ZD  FZFDefinitions
cabbrev ZH  FFHelptags
cabbrev ZL  FFLines
cabbrev ZBL FFBLines
cabbrev ZT  ZTag
cabbrev ZF  ZFiles
cabbrev ZS  ZSnippets
nmap == :call FzfSpell()<CR>

"===============================================================================================================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> ; :<c-u>WhichKey  ';'<CR>

let g:which_key_hspace =4
let g:which_key_sep = get(g:, 'which_key_sep', '>>')
let g:which_key_hspace = get(g:, 'which_key_hspace', 4)
let g:which_key_vertical = get(g:, 'which_key_vertical', 1)
" let g:which_key_flatten = get(g:, 'which_key_flatten', 0)
"===============================================================================================================

let g:which_key_map = {}

let g:which_key_map.9 = { 'name' : '+buffer' , '1' : ['b1'        , 'buffer 1']        , '2' : ['b2'        , 'buffer 2']        , 'd' : ['bd'        , 'delete-buffer']   , 'f' : ['bfirst'    , 'first-buffer']    , 'h' : ['Startify'  , 'home-buffer']     , 'l' : ['blast'     , 'last-buffer']     , 'n' : ['bnext'     , 'next-buffer']     , 'p' : ['bprevious' , 'previous-buffer'] , '?' : ['Buffers'   , 'fzf-buffer']      , }

let g:which_key_map.8= { 'name' : '+windows' , 'w' : ['<C-W>w'     , 'other-window']          , 'd' : ['<C-W>c'     , 'delete-window']         , '-' : ['<C-W>s'     , 'split-window-below']    , '|' : ['<C-W>v'     , 'split-window-right']    , '2' : ['<C-W>v'     , 'layout-double-columns'] , 'h' : ['<C-W>h'     , 'window-left']           , 'j' : ['<C-W>j'     , 'window-below']          , 'l' : ['<C-W>l'     , 'window-right']          , 'k' : ['<C-W>k'     , 'window-up']             , 'H' : ['<C-W>5<'    , 'expand-window-left']    , 'J' : ['resize +5'  , 'expand-window-below']   , 'L' : ['<C-W>5>'    , 'expand-window-right']   , 'K' : ['resize -5'  , 'expand-window-up']      , '=' : ['<C-W>='     , 'balance-window']        , 's' : ['<C-W>s'     , 'split-window-below']    , 'v' : ['<C-W>v'     , 'split-window-below']    , '?' : ['Windows'    , 'fzf-window']            , }

let g:which_key_map.7 = { 'name' : '+open', 'q' : 'open-quickfix'    , 'l' : 'open-locationlist', }

"===============================================================================================================
 
import matplotlib.pyplot as plt

x = np.linspace(-np.pi, np.pi, 256)
S, C = np.sin(x), np.cos(x)

plt.plot(x, S)
plt.plot(x, C)
plt.show()
plt.scatter("")
plt.scatter(x, c)
plt.scatter()



class some_class(object):
    """
    This is the docstring of this class containing information
    about its contents : it does nothing !
    """

    def __init__(self):
        pass


def some_function():
    """
    This function does nothing
    """
    pass


print(some_class.__doc__)
print(some_function.__doc__)


def twice(obj):
    def wrapper(x):
        return obj(obj(x))

    return wrapper


@twice
def function(x):
    return x**2


function(4)
