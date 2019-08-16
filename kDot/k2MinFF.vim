"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-DEO-FZF-NV-Unite"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"
" File: k2MinFF.vim
"==================================================================================================
"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-DEO-FZF-NV-Unite"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Last Modified:      Fr 16 Aug 2019 02:50:03  CEST
"==================================================================================================
"==================================================================================================
"==================================================================================================
        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        "----------------------------------------------------------------------------------
        " set runtimepath+=~/vim-amake

        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/.config/nvim/init.vim'
        "----------------------------------------------------------------------------------
        let s:thesaurus_pat ="/home/red/git/bTest/DICT/mthesaur.txt"
        let g:tq_mthesaur_file="/home/red/git/bTest/DICT/mthesaur.txt"
        set thesaurus=/home/red/git/bTest/DICT/mthesaur.txt
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
        "----------------------------------------------------------------------------------
        filetype on
        filetype plugin on
        filetype indent on
        "----------------------------------------------------------------------------------
        let maplocalleader=','
        let mapleader=' '
        "----------------------------------------------------------------------------------
        set nocompatible
        set helplang=en,de
        set encoding=UTF-8
        " set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 14
        set shell=/bin/bash
        set shell=/bin/zsh
        "set tags+=.tags;
        set tags=.tags;
        set tags+=tags;
        ":set tags=./tags,tags,/home/user/commontags
        "----------------------------------------------------------------------------------
        " set dictionary=/usr/share/dict/words
        " set dictionary="/usr/dict/words"     
        " set spellfile=~/.config/nvim/spell/en.utf-8.add
        " set spelllang=de,tech_speak
        " 'zg': add, 'zw': remove.
        "----------------------------------------------------------------------------------
        set spelllang=en
        set spelllang=fr
        set spelllang=de
        set spellsuggest=best
        set spelllang=he
        set spelllang=en
        set spell
        set nospell
        "----------------------------------------------------------------------------------
        set makeprg=gcc\ -o\ %<\ % 
        set grepprg=rg\ --vimgrep
        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
        "----------------------------------------------------------------------------------
        "set grepprg=/bin/grep\ -nH
        "----------------------------------------------------------------------------------
        augroup vimrc
                autocmd!
        augroup END
        "----------------------------------------------------------------------------------
        "###-Pymode-???
        let g:pymode_python = 'python3'
        "----------------------------------------------------------------------------------
        set background=dark
        syntax on
        syntax enable
        "==================================================================================

"-AAA4-undo-------------------------------------------------------------------------------------------------{{{
        set noswapfile
        set backup                               " enable backups
        set undodir=~/.config/nvim/undoDir/      " undo files
        set backupdir=~/.config/nvim/backUpDir/  " backups
        set directory=~/.config/nvim/swapDir/    " swap files
        "----------------------------------------------------------------------------------
        if !isdirectory(expand(&undodir))
                call mkdir(expand(&undodir), "p")
        endif
        if !isdirectory(expand(&backupdir))
                call mkdir(expand(&backupdir), "p")
        endif
        if !isdirectory(expand(&directory))
                call mkdir(expand(&directory), "p")
        endif
        "----------------------------------------------------------------------------------
        set undofile
        set undoreload=10000
"-4undo-}}}

"-AAA5--PreSetUp-Appearance--Edit--Clipboard--Bell--ExpandTab-Hist--SmartEnter------------------------------{{{
        "-magic--------    
        silent! set wrapscan ignorecase smartcase incsearch hlsearch magic
        " \v: 'very magic', make every character except a-zA-Z0-9 and '_' have special meaning
        " use \v and \V to switch 'very magic' on or off.
        " \m, \M: 'magic' mode.
        " use \m and \M to switch 'magic' on or off.
        "-Appearance--- 
        silent! display=lastline,uhex nowrap wrapmargin=0 guioptions=ce key=
        silent! set noshowmatch  noshowmode cmdheight=1 cmdwinheight=10 
        silent! set noshowcmd ruler rulerformat= laststatus=2 statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c
        silent! set title titlelen=100 titleold= titlestring=%f noicon norightleft showtabline=1
        silent! set cursorline nocursorcolumn colorcolumn= concealcursor=nvc conceallevel=0 norelativenumber
        silent! set list listchars=tab:>\ ,nbsp:_ synmaxcol=800 ambiwidth=double breakindent breakindentopt=
        silent! set nosplitbelow nosplitleft startofline linespace=0 whichwrap=b,s scrolloff=1 sidescroll=0
        silent! set equalalways nowinfixwidth nowinfixheight winminwidth=3 winminheight=3 nowarn noconfirm
        silent! set fillchars=vert:\|,fold:\  eventignore= helplang=en viewoptions=options,cursor virtualedit=
        set nowrap
        "set whichwrap=b,s,h,l,<,>,[,]
        set splitbelow splitright
        set viminfo='20,\"80
        " read/write a .viminfo file, don't store more
        " means that the current buffer can be put
        " to background without being written; and
        " that marks and undo history are preserved
        "---Editing---------------------------------------------------------------------------------
        silent! set iminsert=0 imsearch=0 nopaste pastetoggle= nogdefault comments& commentstring=#\ %s
        silent! set smartindent autoindent shiftround shiftwidth=8 expandtab tabstop=4 smarttab softtabstop=8
        silent! set foldclose=all foldcolumn=1 nofoldenable foldlevel=0 foldmarker={{{,}}} foldmethod=marker foldminlines=6
        silent! set textwidth=0 backspace=indent,eol,start nrformats=hex formatoptions=cmMj nojoinspaces
        silent! set nohidden autoread noautowrite noautowriteall nolinebreak mouse=a modeline& modelines&
        silent! set noautochdir write nowriteany writedelay=0 verbose=0 verbosefile= notildeop noinsertmode
        set modelines=0

        "-AAA2.1-Extra vi-compatibility---------------------------------------------------------{{{
                set switchbuf=useopen    " reveal already opened files from the
                " do not auto insert comment chars on newline
                autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
                " Global
                set hidden               " Hide buffer instead of abandoning when unloading
        "-2.1-}}}

        "------------------------------------------------------------------------------------------
        silent! set clipboard=unnamed
        silent! set clipboard+=unnamedplus
        "------------------------------------------------------------------------------------------
        "-Performance
        silent! set updatetime=300 timeout timeoutlen=300 ttimeout ttimeoutlen=50 ttyfast lazyredraw
        silent! set noerrorbells visualbell t_vb=
        "------------------------------------------------------------------------------------------
        "-Always open read-only when a swap file is found
        autocmd! vimrc SwapExists * let v:swapchoice = 'o'
        "-Setting lazyredraw causes a problem on startup
        autocmd! vimrc VimEnter * redraw
        "-Enter-I-never-use the default behavior of <cr> and this saves me a keystroke...
        nnoremap <cr> o<esc>
        "-Smart Enter 
        inoremap <silent><expr> <CR> (pumvisible() && bufname('%') !=# '[Command Line]' ? "\<C-e>\<CR>" : "\<C-g>u\<CR>")
        "-Go to the first non-blank character of the line after paragraph motions
        noremap } }^
        set history=7024
        nnoremap > v>
        nnoremap < v<
        vnoremap < <gv
        vnoremap > >gv
        "-Allow using the repeat operator with a visual selection (!)
        vnoremap . :normal .<CR>
        "-For when you forget to sudo.. Really Write the file.
        cmap w!! w !sudo tee % >/dev/null
        "-Move to the directory each buffer
        autocmd! vimrc BufEnter * silent! lcd %:p:h
        "-SWITCH TO THE DIRECTORY OF THE OPEN BUFFER
        map cd :cd %:p:h<cr>
        "------------------------------------------------------------------------------------------
        set nosm
        set wmh=0
        "------------------------------------------------------------------------------------------
        set report=0 " always report changed lines
        "------------------------------------------------------------------------------------------
"-5SetUp-}}}

"-AAA2------------------------------------------------------------------------------------------------------{{{
        function! ScriptExecute()
                :!chmod u+x %
                :w
        endfunction
        "------------------------------------------------------------------------------------------
        augroup ScriptExecutePermission
                autocmd!
                autocmd BufWritePost *.sh :call ScriptExecute()
        augroup END
        "------------------------------------------------------------------------------------------
        augroup SourceVimrc
                autocmd!
                autocmd bufwritepost .vimrc source $MYVIMRC
        augroup END
        "------------------------------------------------------------------------------------------
        set diffopt+=vertical 
        "???2019
        "------------------------------------------------------------------------------------------
        "char = can be removed from the list of valid filename char. JAVA_HOME=/opt/java/jdk1.4
        set isfname-==
        "- go to last edit position when opening files -
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
        set autowrite  " Writes on make/shell commands
        set cf         " Enable error files & error jumping.
        set nu
        "---------------------------------------------------------------------------------- 

"-2Remap-}}}

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
         source ~/git/bTest/kDot/k2MinFzfDeoLs.vim
         source ~/git/bTest/kDot/logoABB.vim
        "source ~/git/bTest/kDot/minFzfDeoLsJediSnip.vim
        "source ~/git/bTest/kDot/kFF7DEO.vim
        "source ~/git/aTest/dotFiles/nVim/nProtoFzfDeoLsJediSnip.vim
        "---------------------------------------------------------------------------------- 

        hi pythonSelf  ctermfg=68 cterm=bold 

        "::::::CYAN::::::::::::::::-=2=-:::::::::::::::::::::::::::::::::::::::::::::::::::
        "source mix/n-badwolf.vim 
        "colorscheme molokai
        " colorscheme badwolf
        " source ~/git/bTest/kDot/mix/n-badwolf.vim
        " colorscheme candycode
        colorscheme desert
        colorscheme badwolf
        "-TOP------------------------------------------------------------------------------
        highlight DiffAdd           cterm=bold ctermbg=22
        highlight DiffDelete        cterm=bold ctermbg=3
        highlight DiffChange        cterm=bold ctermbg=11
        highlight DiffChange        cterm=bold ctermbg=52
        "-TOP------------------------------------------------------------------------------
        hi Search         ctermbg=11
        hi Normal         ctermbg=235
        hi ColorColumn    ctermbg=22
        hi MatchParen     ctermbg=39 ctermfg=11  cterm=bold
        set signcolumn=yes
        hi signcolumn     ctermbg=23
        "hi LineNr         ctermbg=199 ctermfg=16 
        hi LineNr         ctermbg=17 ctermfg=15 

        " hi CursorLine     ctermbg=8
        hi CursorLine     ctermbg=5
        hi CursorLine     ctermbg=17

        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=240
        hi ColorColumn    ctermbg=14
        set pumheight=12
        " Popup menu hightLight Group
        hi Pmenu          ctermfg=1 ctermbg=255
        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE
        hi PmenuSel       ctermbg=10 ctermfg=1
        let g:CommandTHighlightColor = 9


                "--------------------------------------------------------------------------------
                silent! set complete& completeopt=menu infercase noshowfulltag
                "set shortmess+=c
                "suppress intro message because the above makes it look bad
                set shortmess+=I
                "--------------------------------------------------------------------------------
                " automatically open and close the popup menu / preview window
                au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "------------------------------------------------------
        hi customPink     ctermbg=245 ctermfg=White
        hi lightGray      ctermbg=12
        hi darkGray       ctermbg=211
        "------------------------------------------------------
        highlight Visual cterm=bold ctermbg=2 ctermfg=NONE
        set cursorcolumn
        hi Pmenue                      ctermfg=11
        hi CursorColumn                ctermbg=16
        set nuw =4
        set list
        set listchars=tab:▸\
        "---???------------------------------------------------
        call matchadd('darkGray', 'NEXT')
        call matchadd('darkGray', '!!!')
        call matchadd('darkGray', '???')
        call matchadd('darkGray', 'AAA')
        call matchadd('darkGray', 'KKK')
        call matchadd('darkGray', 'MMM')
        call matchadd('darkGray', 'TTT')
        call matchadd('darkGray', 'DDD')
        call matchadd('customPink', '===')
        call matchadd('customPink', '==')
        call matchadd('customPink', '###')
        call matchadd('customPink', ':::')
        call matchadd('customPink', '::')
        call matchadd('customPink', '---')
        call matchadd('customPink', '--')
        "------------------------------------------------------
        "------------------------------------------------------
        hi Comment        ctermfg=241
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "source ~/git/aTest/dotFiles/nVim/logoCyan.vim
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "source ~/git/aTest/dotFiles/nVim/myPlug/nHydra.vim 
        "source ~/git/aTest/dotFiles/nVim/myPlug/NNV.vim
        "let g:nnv_search_paths = ['~/git/aTest/dotFiles/']
        "let g:nnv_search_paths = ['/media/red/124Black/']
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

        autocmd! User Oblique       normal! zz
        autocmd! User ObliqueStar   normal! zz
        autocmd! User ObliqueRepeat normal! zz

        hi! def link ObliqueCurrentMatch Keyword
        hi! def link ObliquePrompt       Structure
        hi! def link ObliqueLine         String
        let g:oblique#clear_highlight =0

"-AAA16---Wildmenu------------------------------------------------------------------------------------------{{{
        " More useful command-line completion
        au! FocusLost * :silent! wall     "Save when losing focus
        set wildmenu
        "black-List
        set wildmode=list:longest
        "blackGreen-List
        set wildmode=list:full
        "------------------------------------------------------------------------------------------
        "set wildchar=9 nowildmenu wildmode=list:longest wildoptions= wildignorecase cedit=<C-k>
        "------------------------------------------------------------------------------------------
        set wildignore+=.hg,.git,.svn                    " Version control
        set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
        set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
        set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
        set wildignore+=*.spl                            " compiled spelling word lists
        set wildignore+=*.sw?                            " Vim swap files
        set wildignore+=*.DS_Store                       " OSX bullshit
        set wildignore+=*.luac                           " Lua byte code
        set wildignore+=migrations                       " Django migrations
        set wildignore+=*.pyc                            " Python byte code
        set wildignore+=*.orig                           " Merge resolution files
        set wildignore+=*.fasl                           " Lisp FASLs
        set wildignore+=*.dx64fsl                        " CCL
        set wildignore+=classes
        set wildignore+=lib
"-16-}}}

      " nmap <Leader>c <Plug>CRV_CRefVimNormal
      " vmap <Leader>r <Plug>CRV_CRefVimVisual
      " map  <Leader>cw <Plug>CRV_CRefVimAsk
      " map  <Leader>cc <Plug>CRV_CRefVimInvoke

"---------------------------------------------------------------------------------------------------
":::::::::::::::::::::::::::-START1-:::::::::-PreNAVI-::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------
        nnoremap <BS> X
        "---it2018---------------------------------------------------------------------------------
        noremap j gj
        noremap k gk
        noremap gj j
        noremap gk k
        "------------------------------------------------------------------------------------------
        cnoremap <C-A> <Home>
        cnoremap <C-E> <End>
        cnoremap <C-d> <Del>
        "------------------------------------------------------------------------------------------
        nnoremap <c-o> <c-o>zz
        nnoremap <c-i> <c-i>zz
        "------------------------------------------------------------------------------------------
        "Yank to end of line
        nnoremap Y y$
        "------------------------------------------------------------------------------------------
        nnoremap H mzJ`z
        "------------------------------------------------------------------------------------------
        "---Reselect-last-pasted txt---------------------------------------------------------------
        nnoremap gv `[v`]
        "------------------------------------------------------------------------------------------
        "noremap \\ #*
        "------------------------------------------------------------------------------------------
        "??? make it so that if I acidentally pres ^W or ^U in insert mode,
        " then <ESC>u wil undo just the ^W/^U, and not the whole insert
        " This is docmented in :help ins-special-special, a few pages down
        "------------------------------------------------------------------------------------------
        inoremap <C-W> <C-G>u<C-W>
        inoremap <C-U> <C-G>u<C-U>
        "--------------------------------------------------------------------------
        nnoremap  <Esc><Esc> :<C-u>set nopaste<CR>:nohlsearch<CR>
        "--------------------------------------------------------------------------
        nmap  n nzz
        nmap  N Nzz
        nmap  g* g*zz
        nmap  g# g#zz
"---------------------------------------------------------------------------------------------------
"::::::::::::::::::::::::::::::-=NAVI2=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------

        nmap <tab>     :bn<cr>
        nmap <s-tab>   :bp<cr>
        "---------------------------------------------------
        nnoremap <C-j> :bn<cr>
        nnoremap <C-k> :bp<cr>

        map <C-J> <C-W>j<C-W>_
        map <C-K> <C-W>k<C-W>_
        map <C-=> <C-W>=

        "---------------------------------------------------
        "nnoremap <S-j> :bn<cr>
        "nnoremap <S-k> :bp<cr>
        "---------------------------------------------------
        nnoremap <S-right> :vertical resize +3<cr>
        nnoremap <S-left>  :vertical resize -3<cr>
        nnoremap <S-up>    :resize +3<cr>
        nnoremap <S-down>  :resize -3<cr>
        "----------------------------------------------------------------------------------
        noremap <S-j> :PreviewScroll -1<cr>
        noremap <S-l> :PreviewScroll +1<cr>
        "------------------------------------------------------------------------------------------ 
        fun! ScrollOtherWindow(dir)
                if a:dir == "down"
                        let move = "\<C-E>"
                elseif a:dir == "up"
                        let move = "\<C-Y>"
                endif
                exec "normal \<C-W>p" . move . "\<C-W>p"
        endfun
        nmap <silent> <C-M-Down> :call ScrollOtherWindow("down")<CR>
        nmap <silent> <C-M-Up> :call ScrollOtherWindow("up")<CR>

"---------------------------------------------------------------------------------------------------
"::::::::::::::::::::::::::::::-WINDOWS-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------
        "macros even easier to remember: hit qq to record, q to stop recording, and Q to apply.
        nnoremap Q @q
        vnoremap Q :norm @q<cr>
        "------------------------------------------------------------------------------------------
        nmap q <Nop>
        nnoremap q <Nop>
        nnoremap ss :wa<cr>

        nnoremap qa :wa<cr> :bd<cr>
        nnoremap qq :bd<cr>
        nnoremap qs :wa<cr> :qa<cr>

        nnoremap ee :w<cr>:e #<cr>
        nnoremap qw <C-w>q<CR>
        nnoremap wq <C-w>q<CR>
        nnoremap ww <C-w>o<CR>
        "------------------------------------------------------------------------------------------
        nnoremap ZZ  <Nop> 
        nnoremap ZZ mzzt1<c-u>`z
        nnoremap zs mzzt2<c-u>`z
        nnoremap zx mzzt35<c-u>`z
        nnoremap zh mzzt10<c-u>`z
        nnoremap EE :source $MYVIMRC<CR>
        nnoremap BB ggVG
        nnoremap CC ggVG"+y
        "==========================================================================================
        "==========================================================================================
        nnoremap ;e :ls<cr>:b<space>
        "==========================================================================================
        nnoremap ;v <c-w>v<c-w>l
        nnoremap vv <c-w>v<c-w>l<cr><c-w>w<cr>
        nnoremap hh <c-w>w
        "==========================================================================================
        nnoremap ll :execute "leftabove vsplit" bufname('#')<cr>
        nnoremap VV :execute "leftabove vsplit" bufname('#')<cr>
        nnoremap ;r :execute "rightbelow vsplit" bufname('#')<cr>

        "------------------------------------------------------------------------------------------
        "===openFileWithSameBasenameDifferentExtension=============================================        
        "nnoremap <expr> ,R  ":e ".expand("%:r")."."

        "------------------------------------------------------------------------------------------
        ":::::::::::::::<LocalLeader>,,::::-LINES1-::::::::::::::::::::::::::::::::::::::::::::::::
        "------------------------------------------------------------------------------------------

        nnoremap W gwip
        nnoremap ;t :set tw=70<cr>v<s-}>gq<end>
        noremap  ;a =ip

        "==========================================================================================
        "===copyLastChangedLineHE==================================================================
        "==========================================================================================
        nnoremap ;p :'.t.<cr>
        vnoremap ;p :'.t.<cr>
        "==========================================================================================
        "==Jump backwards to previous function, assumes code indented (useful when inside function)
        nnoremap ;f ?^func\\|^[a-zA-Z].*func<CR>,/
        "==========================================================================================
        nnoremap ;d mayiw`a:exe ":Capture !dict -P - $(echo " . @" . "\| recode latin1..utf-8)"<CR>

        nnoremap ,d mayiw`a:exe ":Capture !dict -d fd-eng-deu - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
        "==========================================================================================
        "Transport Down Ex: Pull word under cursor into :Ex LHS of a subs ztitute (replace)
        nnoremap ;w :<C-r>=expand("<cword>")<CR>
        nnoremap ;z :<C-r>=getline(".")<CR>
        "---------------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 
        nmap ,, <Plug>(easymotion-overwin-w)
        nmap ;; <Plug>(easymotion-overwin-w)
        imap ;; <ESC>
        "------------------------------------------------------------------
        "1y$  //yank current row to register 1
        "<C-r>a to paste from register a
        "------------------------------------------------------------------
        nmap ]c <Plug>GitGutterNextHunk
        nmap [c <Plug>GitGutterPrevHunk
        "------------------------------------------------------------------
        nmap hp <Plug>GitGutterPreviewHunk
        nmap hs <Plug>GitGutterStageHunk
        nmap hu <Plug>GitGutterUndoHunk
        "------------------------------------------------------------------
        vmap     dg  :diffget<CR>
        vmap     dp  :diffput<CR>
        nnoremap do  :diffoff!<cr>
        "------------------------------------------------------------------
        " augroup ft_fugitive
        "         au!
        "         nnoremap <leader>gd :Gdiff<cr>
        "         nnoremap <leader>gs :Gstatus<cr>
        "         nnoremap <leader>gw :Gwrite<cr>
        "         nnoremap <leader>gl :Glog<cr>
        "         au BufNewFile,BufRead .git/index setlocal nolist
        " augroup END
        "------------------------------------------------------------------

        "==========================================================================================
        "::::::::::::::::::::::::::::::--MAGIC--:::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================

        "==========================================================================================
        "::::::::::::::::::::::::::::::-2MAGIC2-:::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================

        vmap <A-c> :w !cat >> ./zbuf<CR>
        "==========================================================================================
        "==:Ex-TRIGER==MAGIC==Execute VIM colon command under cursor==:ls==========================
        "==========================================================================================
        " nnoremap <C-z> yy:<C-r>"<cr>
        nnoremap ;x yy:<C-r>"<cr>
        "==========================================================================================
        "---PlusMinus------------------------------------------------------------------------------
        "==========================================================================================
        nnoremap ( <c-x>:y x\|@x<cr>
        nnoremap ) <c-a>:y x\|@x<cr>
        "==========================================================================================
        "---FIREFOX----www.web.de------------------------------------------------------------------
        "==========================================================================================
        nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        "------------------------------------------------------------------------------------------
        "===Control-] pop open a window and show the tag there.====================================
        "------------------------------------------------------------------------------------------
        nnoremap <A-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
        "------------------------------------------------------------------------------------------
        function! s:VSetSearch()
                let temp = @@
                norm! gvy
                let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                let @@ = temp
        endfunction
        vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
        vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>
        "==========================================================================================
        "==========================================================================================
        inoremap <expr><C-g>     deoplete#undo_completion()
        inoremap <expr><C-l>     deoplete#refresh()
        inoremap <expr><C-h>     deoplete#smart_close_popup()."\<C-h>"
        "---------------------------------------------------------------
        imap <C-s>    <Plug>(neosnippet_start_unite_snippet)
        imap <C-k>    <Plug>(neosnippet_expand_or_jump)
        smap <C-k>    <Plug>(neosnippet_expand_or_jump)
        xmap <C-k>    <Plug>(neosnippet_expand_target)
        nnoremap <Leader>y :<C-u>Unite -buffer-name=neosnippet neosnippet<CR>
        "---------------------------------------------------------------
        " imap <C-b>    <Plug>(neosnippet_expand_or_jump)

        "==========================================================================================
        function! UltiSnipsCallUnite()
                Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
                return ''
        endfunction
        inoremap <F4> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
        "let g:UltiSnipsExpandTrigger="<C-k>"
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<C-b>"
        let g:UltiSnipsJumpForwardTrigger="<C-z>"

        "==========================================================================================
        "::::::::::::::::::::::::::::-REPL-::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        let cmdline_map_start          = '<LocalLeader>s'
        let cmdline_map_send           = '<Space>'
        let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
        let cmdline_map_source_fun     = '<LocalLeader>f'
        let cmdline_map_send_paragraph = '<LocalLeader>p'
        let cmdline_map_send_block     = '<LocalLeader>b'
        let cmdline_map_quit           = '<LocalLeader>q'



"==================================================================================================
":::::::::::::::::F2, F3, F4, F5, F6, F7 ,F8 , F9::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        "==========================================================================================
        "==========================================================================================
        "==HelpInHelpInHelp========================================================================
        "==========================================================================================
        nmap <F2> <Esc>:helpgrep <C-r><C-w><CR>
        nmap <F2> "zyw:exe  "h ".@z.""<CR>
        nmap <F2> <Esc>:help <C-r><C-w><CR>
        "==MMM====================================================================================
        au! FileType vim,help nnoremap M :exec "helpgrep" expand("<cword>")<CR>
        "==========================================================================================
        nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
        inoremap <F3> <esc>:NERDTreeToggle<cr>
        "==========================================================================================
        nnoremap <F4> <esc>:Startify<cr>
        "==========================================================================================
        nnoremap <F5> :w<CR>:!python %<CR>
        "==========================================================================================
        nnoremap <F5> :call <SID>compile_and_run()<CR>
        "==========================================================================================
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

        let g:asyncrun_open = 15

"==================================================================================================
"::::::::::::::::--Leader:0,1,2,3,4,5,6,7,8,9--::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        nnoremap <Leader>0 :set number!<return>
        "---------------------------------------------------------------
        nnoremap <Leader>1 :SideSearch <C-r><C-w><CR> | wincmd p
        command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
        "---------------------------------------------------------------
        nnoremap <Leader>2 :PymodeDoc <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>3 :Pydoc <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>4 <Plug>AgRawSearch
        "---------------------------------------------------------------
        nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        "------------------
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap SS :Pydoc <C-r><C-w><CR> | wincmd p
        "------------------
        " :Pydoc foo.bar.baz (e.g. :Pydoc re.compile)
        " Or search a word (uses pydoc -k) in the documentation by typing:
        " :PydocSearch foobar (e.g. :PydocSearch socket)
        "------------------
        nnoremap ff :NV <C-r><C-w><CR> | wincmd p
        nnoremap FF :ZRg <C-r><C-w><CR> | wincmd p
        nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
        nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
        nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        "---------------------------------------------------------------
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>
        "---------------------------------------------------------------
        nnoremap <F6> :FFLines <C-r><C-w><CR> | wincmd p
        nnoremap <F7> :FFBLines <C-r><C-w><CR> | wincmd p
        "==========================================================================================
        nnoremap ,h :CommandTHelp<cr>
        nnoremap ;h :CommandTHelp<cr>
        "==========================================================================================
        "nnoremap <F6> :ScratchPreview<CR>
        "nnoremap <F7> :Scratch<CR>
        "==========================================================================================
        "nmap <F6> cc
        "nmap <F7>  gcl
        nmap cc  gcl
        "==========================================================================================
        nnoremap <F8> :LocationToggle<cr>
        nnoremap <LocalLeader>n :lnext<cr>zvzz
        nnoremap <LocalLeader>b :lprev<cr>zvzz
        "==========================================================================================
        nnoremap <F9> :call ToggleQuickFix()<CR>
        nnoremap <Leader>b :cprev<cr>zvzz
        nnoremap <Leader>n :cnext<cr>zvzz
        "==========================================================================================
        nmap <F10> <c-w>w
        "==========================================================================================
        nnoremap <F12> :TagbarToggle<CR>
        nnoremap TT :TagbarToggle<CR>

        "===PLAY8=========(C-o)====================================================================
        inoremap <silent> <C-o> <C-x><C-o>
        "inoremap <silent> <C-k> <C-x><C-k>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-l> <C-x><C-l>
        inoremap <silent> <C-]> <C-x><C-]>
        "inoremap <silent> <C-u> <C-x><C-u>

        "==========================================================================================
        "::::::::::::::::::::::::::::::-UNFUC-:::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        let g:undoquit_mapping = ';q' 

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
        "nnoremap <unique> <Leader>z :ThesaurusQueryReplaceCurrentWord<CR>
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>
        "vnoremap <LocalLeader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
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
 

        "==========================================================================================
        "::::::::::::::::::::::::::::::---FZF---:::::::::::::::::::::::::::::::::::::::::::::::::::
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
        inoremap <expr> <c-q> fzf#vim#complete(fzf#wrap({
                                \ 'prefix': '^.*$',
                                \ 'source': 'rg -n ^ --color always',
                                \ 'options': '--ansi --delimiter : --nth 3..',
                                \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))
       "========================================================

       "========================================================
       "==NEXT==================================================
       "========================================================
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

       "========================================================
       "===YANK2================================================
       "========================================================
       nmap zp <Plug>yankstack_substitute_older_paste
       nmap zn <Plug>yankstack_substitute_newer_paste

       " C-c and C-v - Copy/Paste to global clipboard
       vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]p
       "============================================================================================
       "function ! SetupCommandAlias(input, output) exec 'cabbrev <expr> '
       ".a:input \ . ' ((getcmdtype() is# ":" && getcmdline() is# "' .a:input.
       "'")' \ . '? ("' .a:output. '") : ("' .a:input. '"))' endfunction call
       "SetupCommandAlias( "grep" , "GrepperGrep" )
       "============================================================================================
       "===???======================================================================================
       ":command! Restart call jobsend(1, "\<C-c>npm run server\<CR>")
       ":Restart
       "============================================================================================
        " I want this tip to inspire you. Perhaps you never thought of running a web
        " server from inside your text editor. Does this give you ideas for other
        " processes that you could control remotely?

        " snippet si2nce
        " @since ${0:#:version}



