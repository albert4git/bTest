"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-DEO-FZF-NV-Unite"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"-"
" File: minit.vim
" Last Modified: 19 Feb 2019
"===============================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Last Modified:      Mi 12 Jun 2019 11:21:31  CEST
"===============================================================================================================
"===============================================================================================================
        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        "------------------------------------------------------------------------------------
        set runtimepath+=~/vim-amake

        "------------------------------------------------------------------------------------
        let $MYVIMRC='~/.config/nvim/init.vim'
        "------------------------------------------------------------------------------------
        let s:thesaurus_pat ="/home/red/git/bTest/DICT/mthesaur.txt"
        let g:tq_mthesaur_file="/home/red/git/bTest/DICT/mthesaur.txt"
        set thesaurus=/home/red/git/bTest/DICT/mthesaur.txt
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
        "------------------------------------------------------------------------------------
        filetype on
        filetype plugin on
        filetype indent on
        "------------------------------------------------------------------------------------
        let maplocalleader=','
        let mapleader=' '
        "------------------------------------------------------------------------------------
        set nocompatible
        set helplang=en,de
        set encoding=utf-8
        set shell=/bin/bash
        set shell=/bin/zsh
        "set tags+=.tags;
        set tags=.tags;
        set tags+=tags;
        ":set tags=./tags,tags,/home/user/commontags
        "------------------------------------------------------------------------------------
        " set dictionary=/usr/share/dict/words
        " set dictionary="/usr/dict/words"     
        " set spellfile=~/.config/nvim/spell/en.utf-8.add
        " set spelllang=de,tech_speak
        " 'zg': add, 'zw': remove.
        "------------------------------------------------------------------------------------------
        set spelllang=en
        set spelllang=fr
        set spelllang=de
        set spellsuggest=best
        set spelllang=he
        set spelllang=en
        set spell
        set nospell
        "------------------------------------------------------------------------------------------
        set makeprg=gcc\ -o\ %<\ % 
        set grepprg=rg\ --vimgrep
        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
        "------------------------------------------------------------------------------------------
        "set grepprg=/bin/grep\ -nH
        "------------------------------------------------------------------------------------------
        augroup vimrc
                autocmd!
        augroup END
        "------------------------------------------------------------------------------------------
        "###-Pymode-???
        let g:pymode_python = 'python3'
        "------------------------------------------------------------------------------------------
        set background=dark
        syntax on
        syntax enable
"===============================================================================================================

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
        set iskeyword+=.
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

        source ~/git/bTest/kDot/k5DEO.vim
        "source ~/git/aTest/dotFiles/nVim/nProtoFzfDeoLsJediSnip.vim

        hi pythonSelf  ctermfg=68 cterm=bold 
        "::::::CYAN::::::::::::::::-=2=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "source mix/n-badwolf.vim 
        "colorscheme dracula
        colorscheme badwolf
        "-TOP----------------------------------------------------------------------------------------------------------
        highlight DiffAdd           cterm=bold ctermbg=22
        highlight DiffDelete        cterm=bold ctermbg=3
        highlight DiffChange        cterm=bold ctermbg=11
        highlight DiffChange        cterm=bold ctermbg=52
        "-TOP----------------------------------------------------------------------------------------------------------
        hi Normal         ctermbg=235
        hi ColorColumn    ctermbg=22
        hi MatchParen     ctermbg=39 ctermfg=11  cterm=bold
        set signcolumn=yes
        "hi signcolumn     ctermbg=10
        hi signcolumn     ctermbg=23
        "hi LineNr         ctermbg=199 ctermfg=16 
        hi LineNr         ctermbg=22 ctermfg=15 
        hi CursorLine     ctermbg=8
        set colorcolumn=92,100,112,120
        set pumheight=12
        " Popup menu hightLight Group
        hi Pmenu          ctermfg=1 ctermbg=255
        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE
        hi PmenuSel       ctermbg=10 ctermfg=1
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
        "---???---------------------------------------------------------------------------- 
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
        "hi Comment        ctermbg=14
        "------------------------------------------------------------------------------------------- 
        "01-source ~/git/aTest/dotFiles/nVim/nProtoFzfDeoLsJediSnip.vim
        "source ~/git/aTest/dotFiles/nVim/logoCyan.vim
        "------------------------------------------------------------------------------------------- 
        "source ~/git/aTest/dotFiles/nVim/myPlug/nHydra.vim 
        "let g:nnv_search_paths = ['~/git/aTest/pyLabGitPdbPythonMode27']
        "let g:nnv_search_paths = ['/media/red/F1E8-C819/hTML-Zp-Link/2019CollectZip/']
        "------------------------------------------------------------------------------------------- 
        " let g:nnv_search_paths = ['~/git/aTest/dotFiles/']
        " source ~/git/aTest/dotFiles/nVim/myPlug/NNV.vim
        " let g:nnv_search_paths = ['~/git/aTest/dotFiles/']
        ":::::::::::::::::::::::::::-=3=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

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

      nmap <Leader>c <Plug>CRV_CRefVimNormal
      vmap <Leader>r <Plug>CRV_CRefVimVisual
      map  <Leader>cw <Plug>CRV_CRefVimAsk
      map  <Leader>cc <Plug>CRV_CRefVimInvoke

"---------------------------------------------------------------------------------------------------
":::::::::::::::::::::::::::-START1-:::::::::-PreNAVI-::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------
        "---Command mode related ???------------
        "------------------------------------------------------------------------------------------
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
"--------------------------------------------------------------------------------------------------

        nmap <tab>     :bn<cr>
        nmap <s-tab>   :bp<cr>
        "---------------------------------------------------
        nnoremap <C-j> :bn<cr>
        nnoremap <C-k> :bp<cr>
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
        nnoremap qq :bd<cr>
        nnoremap qa :wa<cr> :bd<cr>
        nnoremap qs :wa<cr> :qa<cr>
        nnoremap ee :w<cr>:e #<cr>
        nnoremap qw <C-w>q<CR>
        nnoremap wq <C-w>q<CR>
        nnoremap ww <C-w>o<CR>
        "------------------------------------------------------------------------------------------
        nnoremap ZZ  <Nop> 
        nnoremap ZZ mzzt1<c-u>`z
        nnoremap zs mzzt3<c-u>`z
        nnoremap zx mzzt35<c-u>`z
        nnoremap zh mzzt10<c-u>`z
        nnoremap EE :source $MYVIMRC<CR>
        nnoremap BB ggVG
        nnoremap CC ggVG"+y
        "==========================================================================================
        imap     ;;     <ESC>
        "==========================================================================================
        nnoremap ;e :ls<cr>:b<space>
        "==========================================================================================
        nnoremap ;v <c-w>v<c-w>l
        "==========================================================================================
        nnoremap ;l :execute "leftabove vsplit" bufname('#')<cr>
        nnoremap ;r :execute "rightbelow vsplit" bufname('#')<cr>
        "------------------------------------------------------------------------------------------
        "===openFileWithSameBasenameDifferentExtension=============================================        
        "nnoremap <expr> ,R  ":e ".expand("%:r")."."

"---------------------------------------------------------------------------------------------------
"::::::::::::::::<LocalLeader>,,::::-LINES1-::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------
        nnoremap W gwip
        nnoremap ;t :set tw=70<cr>v<s-}>gq<end>
        noremap  ;a =ip
        "------------------------------------------------------------------------------------------
        "==========================================================================================
        "===copyLastChangedLineHe==================================================================
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
        nnoremap ,w :<C-r>=expand("<cword>")<CR>
        nnoremap ,z :<C-r>=getline(".")<CR>
        "---------------------------------------------------------------------------------- 
        "------------------------------------------------------------------
        nmap ,, <Plug>(easymotion-overwin-w)
        "------------------------------------------------------------------

        "==========================================================================================
        "1y$  //yank current row to register 1
        "<C-r>a to paste from register a


"==================================================================================================
"::::::::::::::::::::::::::::::-DIFF-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        nmap ]c <Plug>GitGutterNextHunk
        nmap [c <Plug>GitGutterPrevHunk
        "---------------------------------------------------------------
        nmap hp <Plug>GitGutterPreviewHunk
        nmap hs <Plug>GitGutterStageHunk
        nmap hu <Plug>GitGutterUndoHunk
        "---------------------------------------------------------------
        vmap     dg  :diffget<CR>
        vmap     dp  :diffput<CR>
        nnoremap do  :diffoff!<cr>
        " augroup ft_fugitive
        "         au!
        "         nnoremap <leader>gd :Gdiff<cr>
        "         nnoremap <leader>gs :Gstatus<cr>
        "         nnoremap <leader>gw :Gwrite<cr>
        "         nnoremap <leader>gl :Glog<cr>
        "         au BufNewFile,BufRead .git/index setlocal nolist
        " augroup END

"==================================================================================================
"::::::::::::::::::::::::::::::-MAGIC-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        vmap <A-c> :w !cat >> ./zbuf<CR>
        "==========================================================================================
        "===:Ex-TRIGER==MAGIC==Execute VIM colon command under cursor==============================
        nnoremap <C-z> yy:<C-r>"<cr>
        "==========================================================================================
        "---PlusMinus------------------------------------------------------------------------------
        nnoremap ( <c-x>:y x\|@x<cr>
        nnoremap ) <c-a>:y x\|@x<cr>
        "==========================================================================================
        "---FIREFOX--------------------------------------------------------------------------------
        nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        "==========================================================================================
        "===Control-] pop open a window and show the tag there.====================================
        nnoremap <A-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
        "==========================================================================================
        function! s:VSetSearch()
                let temp = @@
                norm! gvy
                let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                let @@ = temp
        endfunction
        vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
        vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>
        "==========================================================================================
        "===YANK2==================================================================================
        nmap zp <Plug>yankstack_substitute_older_paste
        nmap zn <Plug>yankstack_substitute_newer_paste
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
        function! UltiSnipsCallUnite()
                Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
                return ''
        endfunction
        inoremap <F4> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
        "let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsExpandTrigger="<C-q>"
        let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
        let g:UltiSnipsJumpForwardTrigger="<C-q>"
        "==========================================================================================

"==================================================================================================
"::::::::::::::::::::::::::::-REPL-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
                " cmdline mappings
                let cmdline_map_start          = '<LocalLeader>s'
                let cmdline_map_send           = '<Space>'
                let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
                let cmdline_map_source_fun     = '<LocalLeader>f'
                let cmdline_map_send_paragraph = '<LocalLeader>p'
                let cmdline_map_send_block     = '<LocalLeader>b'
                let cmdline_map_quit           = '<LocalLeader>q'

"==================================================================================================
"::::::::::::::::::::::::::::::-FZF-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        let g:fzf_action = {
                        \ 'ctrl-t': 'tab split',
                        \ 'ctrl-s': 'split',
                        \ 'ctrl-x': ':Lynx',
                        \ 'ctrl-v': 'vsplit' }
        "------------------------------------------------------------------------------------------
        imap <expr><A-j> fzf#vim#complete#word({'left': '18%'})
        imap <A-k> <plug>(fzf-complete-line)
        "------------------------------------------------------------------------------------------
        " KKK FZF Selecting Mappings
        nmap <leader><tab> <plug>(fzf-maps-n)
        xmap <leader><tab> <plug>(fzf-maps-x)
        omap <leader><tab> <plug>(fzf-maps-o)
        "---------------------------------------------------------------------------------- 
        nnoremap <Leader>t :FZFTag<cr>

"==================================================================================================
"::::::::::::::::::::::::::::::-UNITE-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        nnoremap <C-q> :Unite help buffer file_mru file file_rec bookmark <CR>
        nnoremap \\ :Unite help buffer file_mru file file_rec bookmark <CR>
        nnoremap <Leader>\ :Unite -silent -vertical -winwidth=40  -direction=botright -toggle outline<CR>
        nnoremap <Leader>h :UniteWithCursorWord -silent help<CR>
        nnoremap <Leader>u :Unite help file_mru file buffer file_rec bookmark <CR>
        " nnoremap <Leader>r :<C-u>Unite -buffer-name=register register<CR>
        " nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        nnoremap <Leader>j :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>' :Unite bookmark <CR>
        "------------------------------------------------------------------
        noremap  ,r :Ranger <CR>
        "==========================================================================================
        "nnoremap <Leader>' <Plug>BookmarkShowAll
"==================================================================================================
"::::::::::::::::::Leader:0,1,2,3,4,5,6,7,8,9::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        "==========================================================================================
        nnoremap <Leader>0 :set number!<return>
        "---------------------------------------------------------------
        nnoremap <Leader>1 :SideSearch <C-r><C-w><CR> | wincmd p
        "---------------------------------------------------------------
        nnoremap <Leader>2 <Esc>:FzfHelptags <CR>
        "---------------------------------------------------------------
        nnoremap <Leader>3 :NV <C-r><C-w><CR> | wincmd p
        "==========================================================================================
        nnoremap <Leader>4 :PymodeDoc <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>5 :Pydoc <cword> .<cr>
        "==========================================================================================
        nnoremap <Leader>6 :Rg <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>7 :Ag <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>8 <Plug>AgRawSearch <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>/ <Plug>AgRawSearch
        "==========================================================================================
        " bind K to grep word under cursor
        nnoremap <Leader>l :lgrep  <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap <Leader>g :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
        "---------------------------------------------------------------
        nnoremap <Leader>a :Ack <cword> .<cr>
        "---------------------------------------------------------------
        nnoremap T :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
        "================================================================="
        "  s - open entry in a new horizontal window                      "
        "  v - open entry in a new vertical window                        "
        "  t - open entry in a new tab                                    "
        "  o - open entry and come back                                   "
        "  O - open entry and close the location/quickfix window          "
        "  p - open entry in a preview window                             "
        "-----------------------------------------------------------------"

"==================================================================================================
"::::::::::::::::::F2, F3, F4, F5, F6, F7 ,F8 , F9:::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        "==========================================================================================
        nnoremap <F2> <Esc>:help <C-r><C-w><CR>
        "==========================================================================================
        "==HelpInHelpInHelp========================================================================
        map <F2> "zyw:exe  "h ".@z.""<CR>
        "==!!!MMM==================================================================================
        au! FileType vim,help nnoremap M :exec "helpgrep" expand("<cword>")<CR>
        "==========================================================================================
        nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
        inoremap <F3> <esc>:NERDTreeToggle<cr>
        "==========================================================================================
        nnoremap <F4> :w<CR>:!python %<CR>
        "==========================================================================================

        " Quick run via <F5>
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

        " Deprecated:
        " augroup SPACEVIM_ASYNCRUN
        "     autocmd!
        "    " Automatically open the quickfix window
        "     autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
        " augroup END
        "
        " asyncrun now has an option for opening quickfix automatically
        let g:asyncrun_open = 15

        "==========================================================================================
        nnoremap <F6> :ScratchPreview<CR>
        nnoremap <F7> :Scratch<CR>
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
        "==========================================================================================

"==================================================================================================
"::::::::::::::::::::::::::::::-UNFUC-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
        let g:undoquit_mapping = ';q' 
        "------------------------------------------------------------------
        "===Make zO recursively open whatever fold====
        nnoremap ;z :call FocusLine()<cr>
        nnoremap z0 zczO 
        "------------------------------------------------------------------
        nnoremap z9 :call ShowFuncKeys(<q-bang>)<cr>
        nnoremap z8 :call <SID>SynStack()<CR>

        "---------------------------------------------------------------------------------- 
        " abc,def,ghi
        " the, most , short , long , big , bigly 
        " a,b,c
        "---------------------------------------------------------------------------------- 

        nnoremap <unique> <Leader>z :ThesaurusQueryReplaceCurrentWord<CR>
        vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        nnoremap <LocalLeader>z :ThesaurusQueryReplaceCurrentWord<CR>
        vnoremap <LocalLeader>x "ky:ThesaurusQueryReplace <C-r>k<CR>

"==================================================================================================
"::::::::::::::::::::::::::::::-STOP1-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
" nnoremap <c-p> :Files<CR>
" nnoremap <c-l> :Lines<CR>
" nnoremap <c-c> :Commits<CR>
" nnoremap <c-k> :Commands<CR>
"---!!!???----------------------------------------------------------------------------------
" <leader>gl to view history
" ]q and [q to move between versions (unimpaired.vim)
" <leader>gd to open diff
" :q to end diff
" <leader>ge to return to my working copy.
"==================================================================================================
" *[q*     |:cprevious|
" *]q*     |:cnext|
" *[Q*     |:cfirst|
" *]Q*     |:clast|
" *[l*     |:lprevious|
" *]l*     |:lnext|
" *[L*     |:lfirst|
" *]L*     |:llast|
" *[<C-L>* |:lpfile|
" *]<C-L>* |:lnfile|
"==================================================================================================
"::::::::::::::::::::::::::::::-STOP2-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
" ]p 	paste under the current indentation level
"==============================================================================
" zo / zO Open
" zc / zC Close
" za / zA Toggle
" zv      Open folds for this line
" zM      Close all
" zR      Open all
" zm      Fold more (foldlevel += 1)
" zr      Fold less (foldlevel -= 1)
" zx      Update fol
"==============================================================================
" [m      previous method start
" [M      previous method end
"==============================================================================
" [( [{   previous ( or { or <
" ])      next
"==============================================================================
" :tag Classname  Jump to first definition of Classname
" <C-]>           Jump to definition
" g]              See all definitions
" <C-T>           Go back to last tag
" <C-O> <C-I>     Back/forward
" :tselect Clasn  Find definitions of Classname
" :tjump Clasn    Find definitions of Classname (auto-select 1st)
"==============================================================================
" <C-R><C-W>      insert current word into the command line
" <C-R>"          paste from “ register
" Calculator
" <C-R>=128/2
"==============================================================================
" `^   Last position of cursor in insert mode
" `.   Last change
" ``   Last jum
"==============================================================================
" ma   Mark this cursor position as a
" `a   Jump to the cursor position a
" 'a   Jump to the beginning of the line with position 

"==================================================================================================
"::::::::::::::::::::::::::::::-STOP2-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
" Text alignment
" :center [width]
" :right [width]
" :left
"==============================================================================
" Text objects
" p       Paragraph
" w       Word
" s       Sentence
" [ ( { < A [], (), or {} block

" ' " `   A quoted string

" b       A block [(
" B       A block in [{
" t       ???
"==============================================================================
" Text objects let you operate (with an operator) in or around text blocks (objects).
"----------------
"-----v i p------
"----------------
" Operator [i]nside or [a]round
" vip      Select paragraph
" vipipip  Select more
" yip      Yank inner paragraph
" yap      Yank paragraph (including newline)
" dip      Delete inner paragraph
" cip      Change inner paragraph
" ==============================================================================
" e / ge  Previous/next end of word
" 0       Start of line
" ^       Start of line (after whitespace)
" $       End of line
" ==============================================================================
" h j k l Arrow keys
" <C-U> / <C-D>
" ==============================================================================
" CTRL-X  	Code text
" ==============================================================================
" Exiting insert mode
" Esc / <C-[>     Exit insert mode
" <C-C>           Exit 
"==================================================================================================
"::::::::::::::::::::::::::::::-STOP3-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
" :onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
" :onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

" The only difference from the previous mapping is the very end, where we select
" the text to operate on:

" inside heading: kvg_
" around heading: g_vk0

" g_: move to the last non-blank character in the line.
" v: enter (characterwise) visual mode.
" k: move up a line. This puts us on the line containing the heading's text.
" 0: move to the first character of the line.

"==============================================================================
" execute "normal! gg/foo\<cr>dd"
" execute "normal! mqA;\<esc>`q"

"==================================================================================================
"::::::::::::::::::::::::::::::-STOP4-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"==================================================================================================
" let @a = "hello!"
" echo @a
" echo @"
" echo @/
"==============================================================================
" nnoremap <Leader>x :w | !% python -m json.tools
" Instead do that:
"------------------
" nnoremap <Leader>x :w <bar> !% python -m json.tools
"==============================================================================
" If you want your map to accept a range, then you have to specify the range
" attribute when defining the function as shown below:

" function! Myfunc() range
"   echo 'range = ' . a:firstline . ',' . a:lastline
" endfunction
" :nnoremap _w :call Myfunc()<CR>
"==============================================================================

