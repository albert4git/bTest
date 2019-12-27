
" after I improved indenting, highlighting and autocompletion slightly.
"==================================================================================================================
" EditScope in NormalMode
"==============================================================================================================
" 7. Can I use any ex-mode command in a function?
"==============================================================================================================
" you can browse project file by Project-plugin
" you can global search and edit them by exUtility-plugin
" you can jump tag and track code by exUtility-plugin
" you can analysis code by taglist-plugin
" you can choose buffer by minibuffer-plugin
" you can set clear mark by showmark-plugin.
"==============================================================================================================
"==================================================================================
"---The . register is basically everything you've just typed in input mode
:let @a = @.
"---aP
"==================================================================================
" I rarely use S command, because it's equal to cc.
" replace a word with the yanked text
" map S diw"0P
"==================================================================================
" 1) Yanking into a register
" e.g: "zyw - will yank the word into z reg, "byy - yanks the line into b reg
" 2)  Concatenating the register to a command and executing it.
" e.g:  :exe "/".@z.""<CR>  - searches for string in z reg
"==================================================================================
" Preloading registers
" let @m=":'a,'bs/"
" let @s=":%!sort -u"
" here's a twisted one
" let @y='yy@"'
"==================================================================================
" map <C-S-v> (V)
":g//
nmap <F3>  :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR><CR>
vnoremap <M-v> <C-v>

"================================================================================
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif
"================================================================================
"==================================================================================
"193: Insert the current filename at cursor postion.
iabbrev cdate  <c-r>=strftime("%c")<cr>
iabbrev iname  <C-R>=expand("%:t:r")<CR>
"==================================================================================
function! MHooremanSetDiffEnviron()
        set diff
        set scrollbind
        set scrollopt=ver,jump,hor
        set nowrap
        set fdm=diff
endfunction
:command! MHooremanSetDiffEnviron call MHooremanSetDiffEnviron()

"==========================================================================================
" autocmd BufEnter * if match(@%,'/otherdir/')>=0 | colo jellybeans | else | colorscheme mopkai | end
"==========================================================================================
        " let g:loaded_clipboard_provider = empty(provider#clipboard#Executable()) ? 1 : 2
"==========================================================================================
        " map <M-v> viw"+gPb
        " map <M-c> viw"+y
        " map <M-x> viw"+x
"==========================================================================================
        " If you wanted to turn a comma-separated list of items into a list where each
        " item is on its own line do this in vim:
        " do not type the ^M literally but hit CTRL-ENTER to get it.
        " :%s/,/^M/g

"==========================================================================================
let s:gb.bright_red     = ['#00e994', 167]     " 251-73-52

"==========================================================================================
"---Open-Quickfix-window-automatically-----------------------------------------------------
"====NOWO======================================================================================
"autocmd QuickFixCmdPost grep cwindow
"autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
"autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p
"augroup NewBuf
"        autocmd!
"        autocmd BufEnter * call halo#run({'intervals': [100, 300, 600, 300, 100]})
"        "-Move to the directory each buffer
"        autocmd vimrc BufEnter * silent! lcd %:p:h
"        "-Always open read-only when a swap file is found
"        autocmd! vimrc SwapExists * let v:swapchoice = 'o'
"augroup END
"==========================================================================================
"==========================================================================================
"==========================================================================================
if &cmdheight == 1
        set cmdheight=2
endif
if &verbose == 0
        augroup late-verbose
                autocmd    VimEnter    *    set verbose=1
                autocmd    VimLeave    *    set verbose=0
        augroup END
endif
"==========================================================================================
"==================================================================================
hi InsertCursor  ctermfg=15 guifg=#0e4411 ctermbg=37  guibg=#FF0000
hi VisualCursor  ctermfg=15 guifg=#0df6e3 ctermbg=125 guibg=#cc04a2
hi ReplaceCursor ctermfg=15 guifg=#fd56e3 ctermbg=65  guibg=#00ff00
hi CommandCursor ctermfg=15 guifg=#fdff63 ctermbg=166 guibg=#FF0000
"==================================================================================

"==================================================================================
"hi DiffAdd           cterm=bold ctermbg=22  guibg=#0fDA95
"hi DiffDelete        cterm=bold ctermbg=3   guibg=#ff0a78
"hi DiffChange        cterm=bold ctermbg=52  guibg=#ff8a00
"=========================GitGutt===========================================
"hi GitGutterAdd ctermfg=green          guibg=#8ae234  guifg=#dd2211
"hi GitGutterChange ctermfg=yellow      guibg=#662211  guifg=#fce94f
"hi GitGutterDelete ctermfg=red         guibg=#333333  guifg=#FF2929
"hi GitGutterChangeDelete ctermfg=cyan  guibg=#aa8877  guifg=#fce94f
"==============================================================================================================
" Clean all autocommands
autocmd!
syntax enable
set confirm
set browsedir=buffer
set fileencoding=utf8
set fileformats=unix,mac,dos
set fileformat=unix
"------------------------------PreCursor----------------------------------------------------
set guicursor=a:block-blinkon100-Cursor/Cursor
"------------------------------------------------------------------------------------------
" 'I' in shortmess removes intro/welcome screen
set shortmess+=Ic
set modelines=0
set winaltkeys=no
set guioptions=cMe
set helpheight=7
set showmode
set conceallevel=0
let &showbreak='⮎ '
set fillchars=fold:\ ,vert:│

"================================================================================
" highlight all occurrences of a term being searched/replaced
" augroup hlsearch-incsearch
"         autocmd!
"         autocmd CmdlineEnter /,\? :set hlsearch
"         autocmd CmdlineLeave /,\? :set nohlsearch
" augroup END
"================================================================================

set linebreak
set breakindent
set breakindentopt=sbr " showbreak will be handled correctly
set virtualedit=block
set formatoptions=cqj
set textwidth=78

"TOP neovim specific
set inccommand=split
"================================================================================
" turn off beeping...
au! GuiEnter * set t_vb=

"++AAA-PreCursor++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==============================================
        " Different cursors for different modes.
        " set guicursor=n-c:block-Cursor-blinkon0
        " set guicursor+=v:block-vCursor-blinkon0
        " set guicursor+=i-ci:ver20-iCursor
        "----------------------------------------

        " hi Cursor guifg=black guibg=green gui=reverse
                " set gcr=a:block
                " set gcr+=o:hor50-Cursor
                " set gcr+=n:Cursor
                " set gcr+=i-ci-sm:InsertCursor
                " set gcr+=r-cr:ReplaceCursor-hor20
                " set gcr+=c:CommandCursor
                " set gcr+=v-ve:VisualCursor
                " set gcr+=a:blinkon0
        "----------------------------------------
"++AAAx++}}}


        "==========================================================================================
        ":set tags=./tags,tags,/home/user/commontags
        "==========================================================================================
        " noremap \\ #*
        "--------------------------------------------------------------------------
        "map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
        "map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
        "map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
        "map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)
        "map <Plug>(is-n)  <Plug>(is-nohl)n
        "map <Plug>(is-N)  <Plug>(is-nohl)N

"++AAA-F5+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        nnoremap <F5> :call <SID>compile_and_run()<CR>
        function! s:compile_and_run()
            exec 'w'
            if &filetype == 'c'
                exec "AsyncRun! gcc % -o %<; time ./%<"
            elseif &filetype == 'cpp'
               exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
            elseif &filetype == 'java'
               exec "AsyncRun! javac %; time java %<"
            elseif &filetype == 'sh'
               exec "AsyncRun! time bash %"
            elseif &filetype == 'python'
               exec "AsyncRun! time python %"
            endif
        endfunction
"++AAA-F5++}}}

        "==MMM====================================================================================
        au! FileType vim,help nnoremap M :exec "helpgrep" expand("<cword>")<CR>

        "===WichtigOrNot===================================================================================
        "- go to last edit position when opening files -
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        command! ErrorsToggle call ErrorsToggle()
        function! ErrorsToggle() " {{{
                if exists("w:is_error_window")
                        unlet w:is_error_window
                        exec "q"
                else
                        exec "Errors"
                        lopen
                        let w:is_error_window = 1
                endif
        endfunction " }}}
        " nmap <silent> <f3> :ErrorsToggle<cr>
"++AAAx++}}}

        "----------------------------------------------------------------------------------
        " My garbage brain can't ever remember digraph codes
        inoremap <c-k><c-k> <esc>:help digraph-table<cr>
        "----------------------------------------------------------------------------------
        " Don't try to highlight lines longer than 800 characters.
        set synmaxcol=140

        " Reload the colorscheme whenever we write the file.
        augroup color_badwolf_dev
                au!
                "? au BufWritePost badwolf.vim color badwolf
        augroup END
        "----------------------------------------------------------------------------------


"++AAA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:fzf_nvim_statusline = 0 " disable statusline overwriting

        nnoremap <silent> <leader><space> :FFFiles<CR>
        nnoremap <silent> <leader>a :FFBuffers<CR>
        nnoremap <silent> <leader>; :FFBLines<CR>
        nnoremap <silent> <leader>o :FFBTags<CR>
        nnoremap <silent> <leader>O :FFTags<CR>
        nnoremap <silent> <leader>? :FFHistory<CR>
        nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
        nnoremap <silent> <leader>. :AgIn

        nnoremap <silent> M :call SearchWordWithAg()<CR>
        vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
        nnoremap <silent> <leader>gl :FFCommits<CR>
        nnoremap <silent> <leader>ga :FFBCommits<CR>
        nnoremap <silent> <leader>ft :FFFiletypes<CR>

        imap <C-x><C-f> <plug>(fzf-complete-file-ag)
        imap <C-x><C-l> <plug>(fzf-complete-line)

        function! SearchWordWithAg()
                execute 'Ag' expand('<cword>')
        endfunction

        function! SearchVisualSelectionWithAg() range
                let old_reg = getreg('"')
                let old_regtype = getregtype('"')
                let old_clipboard = &clipboard
                set clipboard&
                normal! ""gvy
                let selection = getreg('"')
                call setreg('"', old_reg, old_regtype)
                let &clipboard = old_clipboard
                execute 'Ag' selection
        endfunction

        function! SearchWithAgInDirectory(...)
                call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
        endfunction
        command! -nargs=+ -complete=dir AgIn call SearchWithAgInDirectory(<f-args>)
"++AAA++}}}


"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:NERDTreeIndicatorMapCustom = {
                                \ "Modified"  : "✹",
                                \ "Staged"    : "✚",
                                \ "Untracked" : "✭",
                                \ "Renamed"   : "➜",
                                \ "Unmerged"  : "═",
                                \ "Deleted"   : "✖",
                                \ "Dirty"     : "✗",
                                \ "Clean"     : "✔︎",
                                \ 'Ignored'   : '☒',
                                \ "Unknown"   : "?"
                                \ }
"++AAAx++}}}


"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
if has('statusline')
        set laststatus=2
        set statusline=%{StatusWindowNr()}
        set statusline+=%([\%R%M]\ %)
        set statusline+=%([git:%{StatusGitBranch()}]%)
        set statusline=%<%f\                     " Filename
        set statusline+=%(\ %y%)
        set statusline+=%=
        set statusline+=\ [%{getcwd()}]          " Current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
        set statusline+=%4(%p%%%)

        func! StatusGitBranch()
                if exists('*fugitive#head')
                        return fugitive#head()
                endif
                return ''
        endfunc
        func! StatusFiletype()
                return &filetype
        endfunc
        func! StatusWindowNr()
                if winnr('$') > 1
                        return '{'.winnr().'}'
                else
                        return ''
                endif
        endfunc
endif
"================================================================================
" set laststatus=2
" set statusline=%<%f\                     " Filename
" set statusline+=%w%h%m%r                 " Options
" set statusline+=\ [%{&ff}/%Y]            " Filetype
" set statusline+=\ [%{getcwd()}]          " Current dir
" set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
"================================================================================

"++AAAx++}}}

"++AAA-LightLine+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        "==================================================================================
        autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

        let g:lightline#bufferline#show_number  = 1
        let g:lightline#bufferline#shorten_path = 0
        let g:lightline#bufferline#unnamed      = '[No Name]'
        let g:lightline                  = {}
        let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
        let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
        let g:lightline.component_type   = {'buffers': 'tabsel'}
        "==================================================================================

        let g:lightline = {
                                \ 'colorscheme': 'tender',
                                \ 'active': {
                                \   'left': [ [ 'mode', 'paste' ],
                                \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                                \ },
                                \ 'component_function': {
                                \   'gitbranch': 'fugitive#head'
                                \ },
                                \ }
        "---------------------------------------------------------------------------------
        let g:lightline = {
                                \ 'colorscheme': 'tender',
                                \ 'active': {
                                \   'left': [ [ 'mode', 'paste' ],
                                \             [ 'fugitive', 'gitgutter', 'filename' ] ],
                                \   'right': [ [ 'percent', 'lineinfo' ],
                                \              [ 'syntastic' ],
                                \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
                                \ },
                                \ 'component_function': {
                                \   'fugitive': 'LightLineFugitive',
                                \   'gitgutter': 'LightLineGitGutter',
                                \   'readonly': 'LightLineReadonly',
                                \   'modified': 'LightLineModified',
                                \   'syntastic': 'SyntasticStatuslineFlag',
                                \   'filename': 'LightLineFilename'
                                \ },
                                \ 'subseparator': { 'left': '>', 'right': '' }
                                \ }
        "---------------------------------------------------------------------------------
        function! LightLineModified()
                if &filetype == "help"
                        return ""
                elseif &modified
                        return "+"
                elseif &modifiable
                        return ""
                else
                        return ""
                endif
        endfunction

        function! LightLineReadonly()
                if &filetype == "help"
                        return ""
                elseif &readonly
                        return "RO"
                else
                        return ""
                endif
        endfunction

        function! LightLineFugitive()
                return exists('*fugitive#head') ? fugitive#head() : ''
        endfunction

        function! LightLineGitGutter()
                if ! exists('*GitGutterGetHunkSummary')
                                        \ || ! get(g:, 'gitgutter_enabled', 0)
                                        \ || winwidth('.') <= 90
                        return ''
                endif
                let symbols = [
                                        \ g:gitgutter_sign_added,
                                        \ g:gitgutter_sign_modified,
                                        \ g:gitgutter_sign_removed
                                        \ ]
                let hunks = GitGutterGetHunkSummary()
                let ret = []
                for i in [0, 1, 2]
                        if hunks[i] > 0
                                call add(ret, symbols[i] . hunks[i])
                        endif
                endfor
                return join(ret, ' ')
        endfunction

        function! LightLineFilename()
                return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .

"++AAAx++}}}

"++AAA-lline+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        function LightlinePaste()
                return '%{&paste?"PASTE":""}'
        endfunction

        function LightlineNeomake()
                return '%{neomake#statusline#LoclistStatus()}'
        endfunction

        function LightlineTags()
                return '%{gutentags#statusline("[Generating\ tags...]")}'
        endfunction

        function LightlineObsession()
                return '%{ObsessionStatus()}'
        endfunction

        let g:lightline = {
                                \ 'colorscheme': 'tender',
                                \ 'mode_map': {
                                \   '__' : '-',
                                \   'n'  : 'N11LL',
                                \   'no' : 'N·Operator Pending',
                                \   'v'  : 'V',
                                \   'V'  : 'V·Line',
                                \   's'  : 'Select',
                                \   'S'  : 'S·Line',
                                \   'i'  : 'I',
                                \   'R'  : 'R',
                                \   'Rv' : 'V·Replace',
                                \   'c'  : 'Command',
                                \   'cv' : 'Vim Ex',
                                \   'ce' : 'Ex',
                                \   'r'  : 'Prompt',
                                \   'rm' : 'More',
                                \   'r?' : 'Confirm',
                                \   '!'  : 'Shell',
                                \   't'  : 'Terminal'
                                \ },
                                \ 'active': {
                                \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ],
                                \   'right': [ ['percent', 'lineinfo'], [ 'fileformat', 'fileencoding', 'filetype', 'filesize' ],  ['tags'] ]
                                \ },
                                \ 'component_function': {
                                \   'cocstatus': 'coc#status',
                                \   'currentfunction': 'CocCurrentFunction',
                                \   'method': 'NearestMethodOrFunction'
                                \ },
                                \ 'component_expand': {
                                \   'paste': 'LightlinePaste',
                                \   'neomake': 'LightlineNeomake',
                                \   'tags': 'LightlineTags',
                                \   'obsession': 'LightlineObsession'
                                \ },
                                \ }
"++AAA-lline++}}}
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"::::::

        " function! NearestMethodOrFunction() abort
        " return get(b:, 'vista_nearest_method_or_function', '')
        " endfunction

        " set statusline+=%{NearestMethodOrFunction()}

        " By default vista.vim never run if you don't call it explicitly.
        " If you want to show the nearest function in your statusline automatically,
        " autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

        "==================================================================================
        " let g:lightline = {
        "                 \ 'colorscheme': 'monokai_tasty',
        "                 \ 'active': {
        "                 \   'left': [ [ 'mode', 'paste' ],
        "                 \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
        "                 \ },
        "                 \ 'component_function': {
        "                 \   'cocstatus': 'coc#status',
        "                 \   'currentfunction': 'CocCurrentFunction',
        "                 \   'method': 'NearestMethodOrFunction'
        "                 \ },
        "                 \ }

"::::::
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
