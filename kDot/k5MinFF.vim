"==================================================================================================
" File: k5MinFF.vim
"==================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Last Modified:      Do 03 Okt 2019 10:50:36  CEST
"==================================================================================================
"==================================================================================================


        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        "----------------------------------------------------------------------------------
        " set runtimepath+=~/vim-amake

        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/.config/nvim/init.vim'
        "----------------------------------------------------------------------------------
        " let g:loaded_clipboard_provider = 1

        "------------------------------------------------------------------------------------------
        let g:python_host_prog = '/usr/bin/python2'
        let g:python3_host_prog = '/usr/bin/python3'
        "let g:python_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim2/bin/python'
        "let g:python3_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim3/bin/python'
        "let g:python3_host_prog=expand('~/anaconda3/bin/python')
        "------------------------------------------------------------------------------------------

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

        "===============================================================================
        if executable('ag')
                set grepprg=ag\ --nogroup\ --nocolor\ --column\ --ignore-dir\ node_modules\ --ignore-dir\ bower_components
                set grepformat=%f:%l:%c:%m
        endif


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
         " source ~/git/bTest/kDot/k2MinFzfDeoLs.vim
         source ~/git/bTest/kDot/k5MinFzfCocLs.vim
         source ~/git/bTest/kDot/logoABB.vim
         source ~/git/bTest/kDot/logoFunc.vim
        "source ~/git/bTest/kDot/minFzfDeoLsJediSnip.vim
        "source ~/git/bTest/kDot/kFF7DEO.vim
        "source ~/git/aTest/dotFiles/nVim/nProtoFzfDeoLsJediSnip.vim
        "---------------------------------------------------------------------------------- 

        "-------------------------------Gold Stuck.chen--------------------------------""

        "::::::CYAN::::::::::::::::-=2=-:::::::::::::::::::::::::::::::::::::::::::::::::::
        set termguicolors     " enable true colors support
        "source mix/n-badwolf.vim 
        "colorscheme molokai
        "colorscheme badwolf
        "source ~/git/bTest/kDot/mix/n-badwolf.vim
        "colorscheme candycode
        colorscheme desert
        colorscheme badwolf
        colorscheme delek
        colorscheme pyte
        colorscheme ayu
        " let ayucolor="dark"   " for dark version of theme
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme

        "-TOP------------------------------------------------------------------------------
        highlight DiffAdd           cterm=bold ctermbg=22
        highlight DiffDelete        cterm=bold ctermbg=3
        highlight DiffChange        cterm=bold ctermbg=11
        highlight DiffChange        cterm=bold ctermbg=52

        hi SpecialKey ctermfg=251 guifg=#999999

        highlight Class cterm=bold ctermbg=88
        highlight Function cterm=bold ctermbg=19
        highlight LocalVariable cterm=bold ctermbg=14
        highlight GlobalVariable cterm=bold ctermbg=207

        highlight UnderlineTag  cterm=underline  

        "==================================================================================
        " highlight link LspErrorText GruvboxRedSign 
        " highlight clear LspWarningLine
        " au CursorHold * sil call CocActionAsync('highlight')
        " au CursorHoldI * sil call CocActionAsync('showSignatureHelp')
        "==================================================================================

        "==================================================================================
        " hi Enumerator guifg="c000c0"
        " Class           : Class
        " DefinedName     : Define
        " Enumerator      : Enumerator
        " Function        : Function or method
        " EnumerationName : Enumeration name
        " Member          : Member (of structure or class)
        " Structure       : Structure Name
        " Type            : Typedef
        " Union           : Union Name
        " GlobalConstant  : Global Constant
        " GlobalVariable  : Global Variable
        " LocalVariable   : Local Variable
        "==================================================================================

        "------------------------------------------------------
        hi Visual cterm=bold ctermbg=2 ctermfg=NONE  guibg=#006600

        "------------------------------------------------------
        hi Comment        ctermfg=249  guifg=#004400 guibg=#F070A0
        hi Comment        ctermfg=249  guibg=#000050 guifg=#DDCCDD
        "------------------------------------------------------
        hi pythonSelf  ctermfg=68  guifg=#3f57d7 cterm=bold gui=bold
        "-TOP---!!!---------------------------------------------------------------------------
        hi Search         ctermbg=11  guibg=#FFff00
        hi Normal         ctermbg=234 guibg=#333233
        hi MatchParen     ctermbg=39  ctermfg=11  cterm=bold

        set signcolumn=yes
        " hi SignColumn     ctermbg=230       guibg=#00ff00
        hi signcolumn     ctermbg=23 

        hi LineNr         ctermbg=17 ctermfg=15   guibg=#10205f  guifg=#ffffff
        "--------------------------------------------------------------------------------- 
        "red let g:indentLine_color_term = 251
        "red let g:indentLine_newVersion = 0
        "--------------------------------------------------------------------------------- 
        " :sign define piet text=>> texthl=Search
        " :exe ":sign place 2 line=240 name=piet file=" . expand("%:p")

        "--------------------------------------------------------------------------------
        hi CursorLine     ctermbg=90  guibg=#870087
        set cursorcolumn
        hi CursorColumn   ctermbg=16 guibg=#870087 

        "--------------------------------------------------------------------------------
        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=14   guibg=#005500

        set pumheight=12
        " Popup menu hightLight Group
        hi Pmenu          ctermfg=1  ctermbg=255  guibg=#770047

        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE
        hi PmenuSel       ctermbg=10 ctermfg=1
        let g:CommandTHighlightColor = 9

        "--------------------------------------------------------------------------------
        silent! set complete& completeopt=menu infercase noshowfulltag
        "suppress intro message because the above makes it look bad
        "set shortmess+=c
        set shortmess+=I
        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "------------------------------------------------------

        hi customPink     ctermbg=245 ctermfg=White  guifg=#ff5f00 guibg=#ccbbcc
        hi lightGray      ctermbg=12
        hi darkGray       ctermbg=211 guibg=#ffbbff  guifg=#8000f0


        hi Pmenue        ctermfg=11
        set nuw =4
        set list
        set listchars=tab:▸\

        "---???------------------------------------------------
        call matchadd('darkGray', 'NEXT')
        call matchadd('darkGray', 'TODO')
        call matchadd('darkGray', '!!!')
        call matchadd('darkGray', '???')
        call matchadd('darkGray', 'AAA')
        call matchadd('darkGray', 'KKK')
        call matchadd('darkGray', 'MMM')
        call matchadd('darkGray', 'TTT')
        call matchadd('darkGray', 'DDD')
        call matchadd('darkGray', 'POC')
        call matchadd('customPink', '===')
        call matchadd('customPink', '==')
        call matchadd('customPink', '=')
        call matchadd('customPink', '###')
        call matchadd('customPink', ':::')
        call matchadd('customPink', '::')
        call matchadd('customPink', '---')
        call matchadd('customPink', '--')
        call matchadd('customPink', '-')
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "source ~/git/bTest/kDot/myPlug/logoCyan.vim
        " source ~/git/bTest/kDot/myPlug/nHydra.vim
        "------------------------------------------------------
        "source ~/git/bTest/kDot/myPlug/NNV.vim
        "let g:nnv_search_paths = ['~/git/bTest/']
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
        "------------------------------------------------------------------------------------------
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
        "-------------------------------------------------------------------------------------------
        nmap  n nzz
        nmap  N Nzz
        nmap  g* g*zz
        nmap  g# g#zz
"---------------------------------------------------------------------------------------------------
"::::::::::::::::::::::::::::::-=NAVI2=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"---------------------------------------------------------------------------------------------------

        "------------------------
        nmap <tab>     :bn<cr>
        nmap <s-tab>   :bp<cr>
        "------------------------
        "nnoremap <C-j> :bn<cr>
        "nnoremap <C-k> :bp<cr>
        "------------------------
        "map <C-J> <C-W>j<C-W>_
        "map <C-K> <C-W>k<C-W>_
        "map <C-=> <C-W>=
        "------------------------

        "---------------------------------------------------
        "nnoremap <S-j> :bn<cr>
        "nnoremap <S-k> :bp<cr>
        "---------------------------------------------------
        nnoremap <S-right> :vertical resize +3<cr>
        nnoremap <S-left>  :vertical resize -3<cr>
        nnoremap <S-up>    :resize +3<cr>
        nnoremap <S-down>  :resize -3<cr>

        "--???-----------------------------------------------------------------------------
        noremap <silent> <S-up> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <S-down> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        "------------------SCROLL----------------------------------------------------------
        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
        "----------------------------------------------------------------------------------

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
        "==========================================================================================
        nnoremap ;f ?^func\\|^[a-zA-Z].*func<CR>,/
        "==========================================================================================
        nnoremap ;d mayiw`a:exe ":Capture !dict -P - $(echo " . @" . "\| recode latin1..utf-8)"<CR>

        nnoremap ,d mayiw`a:exe ":Capture !dict -d fd-eng-deu - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
        "==========================================================================================
        "Transport Down Ex: Pull word under cursor into :Ex LHS of a subs ztitute (replace)
        nnoremap ,w :<C-r>=expand("<cword>")<CR>
        nnoremap ;w :<C-r>=getline(".")<CR>

        "---------------------------------------------------------------------------------- 
        "---------------------------------------------------------------------------------- 
        nmap ,, <Plug>(easymotion-overwin-w)
        nmap ;; <Plug>(easymotion-overwin-w)
        imap ;; <ESC>

        let g:EasyOperator_line_do_mapping = 0
        omap ;l  <Plug>(easyoperator-line-select)
        xmap ;l  <Plug>(easyoperator-line-select)
        nmap d;l <Plug>(easyoperator-line-delete)
        nmap p;l <Plug>(easyoperator-line-yank)


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
        "---FIREFOX----www.ewb.de------------------------------------------------------------------
        
        "==========================================================================================
        nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        nnoremap <localleader>o :Utl<CR>
        nnoremap ;o :Utl<CR>
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
        "---TODO------------------------------------------------------------
        imap <C-s>    <Plug>(neosnippet_start_unite_snippet)
        imap <C-k>    <Plug>(neosnippet_expand_or_jump)
        smap <C-k>    <Plug>(neosnippet_expand_or_jump)
        xmap <C-k>    <Plug>(neosnippet_expand_target)
        nnoremap <Leader>y :<C-u>Unite -buffer-name=neosnippet neosnippet<CR>

        "---------------------------------------------------------------
        " imap <C-b>    <Plug>(neosnippet_expand_or_jump)
        "---------------------------------------------------------------

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
        ""Python runners
        "autocmd! filetype python noremap <buffer> <F4> :w<CR>:!python %<CR>
        "autocmd! filetype python inoremap <buffer> <C-F4> <Esc>:w<CR>:!python %<CR>
        "autocmd! filetype python noremap <buffer> <S-F4> :w<CR>:!ipython %<CR>
        "autocmd! filetype python inoremap <buffer> <S-F4> <Esc>:w<CR>:!ipython %<CR>
        "noremap <buffer> <F4> :w<CR>:!python %<CR>
        "noremap <buffer> <C-F4> :w<CR>:!clear;python %<CR>
        "noremap <buffer> <S-F4> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
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
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
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
        "---------------------------------------------------------------

        "==================================================================================
        "====

                nnoremap <LocalLeader>; :CodeQueryMenu Unite Full<CR>
                " nnoremap <LocalLeader>; :CodeQueryMenu Unite Magic<CR>
                " Or enable typing (to search menu items) by default
                nnoremap <LocalLeader>\ :CodeQueryMenu Unite Magic<CR>A

                " Trigger db building (in current filetype) when your query fails
                let g:codequery_trigger_build_db_when_db_not_found = 1
                " Custom your `CodeQuery Text` commands
                let g:codequery_find_text_cmd = 'Ack!'
                
                let g:codequery_find_text_from_current_file_dir = 0
                " 0 => search from project dir (git root directory -> then the directory containing xxx.db file)
                " 1 => search from the directory containing current file
                
                " If you use ':CodeQuery Symbol' in a txt file, of course, it will fail due to wrong filetype.
                " With the following option set to 1, ':CodeQuery Text' will be automatically sent when your query fails.
                let g:codequery_auto_switch_to_find_text_for_wrong_filetype = 0

        "====
        "==================================================================================
        "====
                " Set tags option
                set tags=./javascript_tags;/
                set tags+=./python_tags;/
                set tags+=./ruby_tags;/
                set tags+=./go_tags;/
                set tags+=./java_tags;/
                set tags+=./c_tags;/

        "====
        "==================================================================================

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

        "------------------------------InsertMode Scroll-------------------------------""
        :inoremap <C-E> <C-X><C-E>
        " :inoremap <C-Y> <C-X><C-Y>

        "==========================================================================================
        "::::::::::::::::::::::::::::::-UNFUC-:::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
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
        "startput" will directly put the most recent item in the shared history:
        "=============
        "startput" will directly put the most recent item in the shared history:


       "========================================================
       "===YANK2================================================
       "========================================================
       nmap zp <Plug>yankstack_substitute_older_paste
       nmap zn <Plug>yankstack_substitute_newer_paste

       " map p <Plug>(miniyank-autoput)
       " map P <Plug>(miniyank-autoPut)
       " C-c and C-v - Copy/Paste to global clipboard
       vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]p
       "============================================================================================
       "function ! SetupCommandAlias(input, output) exec 'cabbrev <expr> '
       ".a:input \ . ' ((getcmdtype() is# ":" && getcmdline() is# "' .a:input.
       "'")' \ . '? ("' .a:output. '") : ("' .a:input. '"))' endfunction call
       "SetupCommandAlias( "grep" , "GrepperGrep" )
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
        " create it with the shell command "
        " mkid file1 file2 ..

        map _u :call ID_search()<Bar>execute "/\\<" . g:word . "\\>"<CR>
        map _n :n<Bar>execute "/\\<" . g:word . "\\>"<CR>

        function! ID_search()
                let g:word = expand("<cword>")
                let x = system("lid --key=none ". g:word)
                let x = substitute(x, "\n", " ", "g")
                execute "next " . x
        endfun

        " To use it, place the cursor on a word, type "_u" and vim will load the file
        " that contains the word.  Search for the next occurrence of the word in the
        " same file with "n".  Go to the next file with "_n".

        " This has been tested with id-utils-3.2 (which is the name of the id-tools
        " archive file on your closest gnu-ftp-mirror).
        "--------------------------------------------------------------------------------- 
        "--------------------------------------------------------------------------------- 
        " nmap gz <Plug>ZVOperator
        " vmap <localleader>z <Plug>ZVVisSelection
        nmap ;z <Plug>Zeavim
        nmap <Leader>z <Plug>ZVKeyDocset
"===============================================================================================================
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
        command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                                \ | wincmd p | diffthis
endif
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

"===============================================================================================================
nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
"===============================================================================================================
" Search for visually highlighted text
" :vmap ff y/<C-R>"<CR>
"===============================================================================================================

"===============================================================================================================
" Since teaching a lesson on pytest in our 100 Days of Code course I discovered
" coverage and made this alias in my .vimrc to simply check it with one
" keystroke:
" nmap ,t :w<CR>:!pytest -s --cov-report term-missing --cov='.'<CR>
" You have to install this plugin for it to work:
" # enable venv (TODO: switch to pipenv)
" pip install pytest-cov
"===============================================================================================================
        nmap <silent> <Leader>d <Plug>DictSearch
        nnoremap <Leader>t :!goldendict <C-r><C-w><CR>

 nmap <Leader>s <Plug>(textobj-diff-hunk-n)


"===============================================================================================================
"===VIM-SARTIFY-1===============================================================================================
"===============================================================================================================
" autocmd!  VimEnter * execute ":Startify"
" autocmd!  VimEnter * execute ":SearchIndex"
"===============================================================================================================
let g:startify_custom_header      =
        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

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
let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'bundle/.*/doc',
        \ '/data/repo/neovim/runtime/doc',
        \ '/Users/mhi/local/vim/share/vim/vim74/doc',
        \ ]

"===============================================================================================================
let g:startify_bookmarks = [
        \ '~/git/bTest/kDot/kIng19.sh',
        \ '~/git/bTest/kDot/k2MinFF.vim',
        \ '~/git/bTest/kDot/k2MinFzfDeoLs.vim',
        \ '~/git/bTest/kDot/kZshrc19.sh',
        \ '~/git/bTest/kDot/kBank21.yml',
        \ ]

"===============================================================================================================
let g:startify_custom_footer =
        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

"===============================================================================================================
let g:startify_list_order = [
                        \ ['   Commands'], 'commands',
                        \ ['   Sessions'], 'sessions',
                        \ ['   MRU Files'], 'files',
                        \ ['   MRU Files in Current Dir'], 'dir',
                        \ ['   Bookmarks'], 'bookmarks',
                        \ ]

"===============================================================================================================
let g:startify_session_dir = '~/git/bTest/kDot/zSS'
let g:startify_session_sort = 1
let g:startify_session_number = 5

"===============================================================================================================
"\ {'m': ['My magical function', 'call Magic()']},
"\ ['Vim Reference', 'h ref'],
"===============================================================================================================
let g:startify_commands = [
                        \ {'a': ['seti', ':colorscheme seti']},
                        \ {'b': ['FZFMru', ':FZFMru']},
                        \ {'i': ['FFMarks', ':FFMarks']},
                        \ {'c': ['FFHistory', ':FFHistory']},
                        \ {'d': ['FFHelptags', ':FFHelptags']},
                        \ {'e': ['ZPlugHelp', ':ZPlugHelp']},
                        \ {'k': ['ZTag', ':ZTag']},
                        \ {'l': ['ZFiles', ':ZFiles']},
                        \ {'o': ['ZDeviList', ':ZDeviList']},
                        \ {'n': ['ZLibList', ':ZLibList']},
                        \ {'f': ['LGHistory', ':LGHistory']},
                        \ {'g': ['CommandTHelp', ':CommandTHelp']},
                        \ {'x': ['FZFDefinitions', ':FZFDefinitions']},
                        \ {'p': ['List', ':List']},
                        \ {'r': ['List', ':List']},
                        \ {'u': ['unite', ':Unite help buffer file_mru file file_rec bookmark']},
                        \ ]

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
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> M :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
"===============================================================================================================
nnoremap <silent> M :call CocActionAsync('doHover')<CR>
"=======================================================================
"=======================================================================
" autocmd FileType json syntax match Comment +\/\/.\+$+
"===============================================================================================================
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
set cmdheight=2
" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()
 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"===============================================================================================================
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"===============================================================================================================
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"===============================================================================================================
" Highlight symbol under cursor on CursorHold
" Highlight symbol under cursor on CursorHold
" err- autocmd CursorHold * silent call CocActionAsync('highlight')
"===============================================================================================================
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"===============================================================================================================
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"---POC--- Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>q  <Plug>(coc-fix-current)
"===============================================================================================================

"===============================================================================================================
" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

"=???==========================================================================================================
nmap <silent> <C-d> <Plug>(coc-definition)
nmap <silent> <C-,> <Plug>(coc-references)
nn <silent> K :call CocActionAsync('doHover')<cr>

"===============================================================================================================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> ; :<c-u>WhichKey  ';'<CR>

"===============================================================================================================
"===============================================================================================================
nnoremap <leader>l :lnext<CR>
nnoremap <leader>p :lprevious<CR>
nnoremap <leader>r :lrewind<CR>

"==========================================================================================
command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')
"==========================================================================================


"===============================================================================================================
"===============================================================================================================

"===============================================================================================================
"===============================================================================================================

"===============================================================================================================
"===============================================================================================================

"===============================================================================================================
"===============================================================================================================
