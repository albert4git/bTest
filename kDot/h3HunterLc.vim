"==================================================================================================
" File: h1Hunter.vim
"==================================================================================================
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Last Modified:      Do 10 Okt 2019 07:08:53  CEST
"==================================================================================================
"==================================================================================================

        "set path+=.,/home/red/git/aTest/pyLabGitPdbPythonMode27
        "----------------------------------------------------------------------------------
        " set runtimepath+=~/vim-amake

        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/.config/nvim/init.vim'
        "----------------------------------------------------------------------------------
        let g:python_host_prog = '/usr/bin/python2'
        let g:python3_host_prog = '/usr/bin/python3'
        "let g:deoplete#sources#jedi#extra_path = $PYTHONPATH
        "let g:python_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim2/bin/python'
        "let g:python3_host_prog = '/Users/davidbrewer/.pyenv/versions/neovim3/bin/python'
        "let g:python3_host_prog=expand('~/anaconda3/bin/python')
        "------------------------------------------------------------------------------------------

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
        set shell=/bin/bash
        set shell=/bin/zsh
        set tags=.tags;
        set tags+=tags;
        ":set tags=./tags,tags,/home/user/commontags

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

        "----------------------------------------------------------------------------------
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
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

        "==================================================================================
        if executable('ag')
                set grepprg=ag\ --nogroup\ --nocolor\ --column\ --ignore-dir\ node_modules\ --ignore-dir\ bower_components
                set grepformat=%f:%l:%c:%m
        endif

        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
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
        " read/write a .viminfo file...
        "---Editing---------------------------------------------------------------------------------
        silent! set iminsert=0 imsearch=0 nopaste pastetoggle= nogdefault comments& commentstring=#\ %s
        silent! set smartindent autoindent shiftround shiftwidth=8 expandtab tabstop=4 smarttab softtabstop=8
        silent! set foldclose=all foldcolumn=1 nofoldenable foldlevel=0 foldmarker={{{,}}} foldmethod=marker foldminlines=6
        silent! set textwidth=0 backspace=indent,eol,start nrformats=hex formatoptions=cmMj nojoinspaces
        silent! set nohidden autoread noautowrite noautowriteall nolinebreak mouse=a modeline& modelines&
        silent! set noautochdir write nowriteany writedelay=0 verbose=0 verbosefile= notildeop noinsertmode
        set modelines=0
        "------------------------------------------------------------------------------------------
        set switchbuf=useopen
        " do not auto insert comment chars on newline
        autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        set hidden

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

"===============
"---PlugStart---
"===============

call plug#begin('~/.config/nvim/plugged/')
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'nixprime/cpsm'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'       
        Plug 'vim-scripts/L9'
        "---------------------------------------------------------------------------------- 
        Plug 'prabirshrestha/async.vim'
        Plug 'skywind3000/asyncrun.vim'

        "-------------------------------------------------------------------------- 
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-unimpaired'
        "---------------------------------------------------------------------------------- 
        Plug 'google/vim-maktaba'
        "-Strongly recommended: easy configuration of maktaba plugins.
        Plug 'google/vim-glaive'
                let g:myplugin_enablefeature = 1
                let g:myplugin_defaultdir = $HOME
                let g:myplugin_weirdmode = 'm'
        Plug 'google/vim-syncopate'
        "---------------------------------------------------------------------------------- 
        Plug 'tyru/capture.vim'
        Plug 'thinca/vim-quickrun'
        "------------------------------------------------------------------------------------------
        Plug 'majutsushi/tagbar'
                highlight TagbarHighlight   ctermfg=051 ctermbg=9 cterm=bold
                highlight TagListTagName    ctermfg=250
                highlight TagbarFoldIcon    ctermfg=051 ctermbg=9 
                highlight TagbarHelp        ctermfg=051 ctermbg=9
        Plug 'ludovicchabant/vim-gutentags'
        Plug 'vim-scripts/genutils'
        Plug 'guns/xterm-color-table.vim'
        "---------------------------------------------------------------------------------- 
        Plug 'sjl/gundo.vim'
        "----------ADD---------------------------------------------------------------------
        Plug 'haya14busa/incsearch.vim'
        Plug 'vim-scripts/SearchComplete'
        Plug 'tpope/vim-abolish'
        " Plug 'tpope/vim-endwise'
        "<c-a> and <c-x> to toggle true/false, on/off, increment dates or weekday names
        Plug 'nishigori/increment-activator'
        Plug 'osyo-manga/vim-anzu'
        Plug 'xolox/vim-misc'
        Plug 'ivyl/vim-bling'
                let g:bling_time = 42
                let g:bling_color_fg = 'green'
                let g:bling_color_cterm = 'reverse'
        "------------------------------------------------------------------------------------------ 
        "----------------------------------------------------------------------------------
        "---------------------------------------------------------
        "----!!!---LGHistory--------------------------------------
        "---------------------------------------------------------
        Plug 'm42e/vim-lgh'
        "---------------------------------------------------------
        Plug 'ap/vim-buftabline'
        "---------------------------------------------------------------------------------- 
        Plug 'mhinz/vim-startify'
        Plug 'vim-scripts/timestamp.vim'
        Plug 'blueyed/vim-diminactive'
        "---------------------------------------------------------------------------------- 
        Plug 'kana/vim-textobj-user'
        "----------------------------------------------------------------------------------
        Plug 'adriaanzon/vim-textobj-matchit'
        "`am` and `im` :if-ifend , for-endfore ..
        "----------------------------------------------------------------------------------
        Plug 'gilligan/textobj-gitgutter'
                vmap ih <Plug>(textobj-gitgutter-i)
        "---------------------------------------------------------------------------------- 
        Plug 'coderifous/textobj-word-column.vim'
        "----------------------------------------------------------------------------------
        Plug 'airblade/vim-gitgutter'
                nmap ]c <Plug>GitGutterNextHunk
                nmap [c <Plug>GitGutterPrevHunk
        "------------------------------------------------------
                nmap hp <Plug>GitGutterPreviewHunk
                nmap hs <Plug>GitGutterStageHunk
                nmap hu <Plug>GitGutterUndoHunk
        "------------------------------------------------------
                let g:gitgutter_signs = 1
                let g:gitgutter_max_signs = 2000
        "--------------------------------------------------------------------------
                highlight GitGutterAdd ctermfg=green   guifg=#00ffff 
                highlight GitGutterChange ctermfg=yellow
                highlight GitGutterDelete ctermfg=red
                highlight GitGutterChangeDelete ctermfg=cyan
        "--------------------------------------------------------------------------

        "---------------------------------------------------------------------------------- 
        Plug 'brooth/far.vim'
        "---------------------------------------------------------------------------------- 
        Plug 'osyo-manga/vim-brightest'
                let g:brightest#highlight = { "group" : "Define" }
                " JAPAN
        "---------------------------------------------------------------------------------- 
        Plug 'roxma/python-support.nvim'
                let g:python_support_python2_require = 0
                let g:python_support_python3_require = 1
        "---------------------------------------------------------------------------------- 
        Plug 'fs111/pydoc.vim', {'external_commands': ['pydoc']}
                " let g:pydoc_cmd = '/usr/bin/pydoc'
                let g:ref_pydoc_cmd = 'pydoc'
                let g:ref_pydoc_complete_head = 1
                " let g:pydoc_cmd = 'python -m pydoc'
                " let g:pydoc_open_cmd = 'vsplit'
                " " If you want pydoc to switch to an already open tab with pydoc page,
                " let g:pydoc_use_drop=1
                " let g:pydoc_window_lines=15
                " " let g:pydoc_highlight=0
        "---------------------------------------------------------------------------------- 
        Plug 'hdima/python-syntax'
        "---------------------------------------------------------------------------------- 
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        "--------------------TODO--------------------------------------------------------- 
        " Plug 'google/vim-coverage'
        "--------------------------------------------------------------------------------- 
        " Plug 'SkyLeach/pudb.vim'
        " if has('nvim')
        "         let g:python_host_prog='~/.virtualenvs/neovim2/bin/python'
        "         let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python'
        "         " set the virtual env python used to launch the debugger
        "         let g:pudb_python='~/.virtualenvs/poweruser_tools/bin/python'
        "         " set the entry point (script) to use for pudb
        "         let g:pudb_entry_point='~/src/poweruser_tools/test/test_templates.py'
        "         " Unicode symbols work fine (nvim, iterm, tmux, nyovim tested)
        "         let g:pudb_breakpoint_symbol='☠'
        " endif

        "----------------------------------------------------------------------------------
         Plug 'mtth/scratch.vim'
         "-----------------------------------------------------------
         Plug 'AndrewRadev/undoquit.vim'
        "-------------- 
        "---c-w+u------ 
        "--------------------------------------------------------------------------------- 
         Plug 'maxbrunsfeld/vim-yankstack'
        "----------------------------------------------------------------------------------
        Plug 'easymotion/vim-easymotion'
                let g:EasyMotion_smartcase = 1
                let g:EasyMotion_do_mapping = 0 "-Disable default mappings
                nmap <LocalLeader><LocalLeader> <Plug>(easymotion-overwin-w)
        "----------------------------------------------------------------------------------
        Plug 'wellle/visual-split.vim'
                " :VSSplit, :VSSplitAbove or :VSSplitBelow to create the split
                " :VSResize to execute the VSResize ex command on the selected range
                " nmap <C-W>r  <Plug>(Visual-Split-Resize)
                " nmap <C-W>s <Plug>(Visual-Split-Split)
        "---------------------------------------------------------------------------------- 
        Plug 'skywind3000/vim-preview'
        "---???---
        "----------------------------------------------------------------------------------
         Plug 'henrik/vim-qargs'
        Plug 'romainl/vim-qf'
        Plug 'yssl/QFEnter'
        "--------------------------------------------------------------------------
        Plug 'kana/vim-textobj-diff'
        "---------------------------------------------------------------------------------- 
        Plug 'kshenoy/vim-signature'
        "---------------------------------------------------------------------------------- 
        Plug 'machakann/vim-highlightedyank'
                let g:highlightedyank_highlight_duration = -1
        "---------------------------------------------------------------------------------- 
        Plug 'Yggdroot/indentLine'
                let g:indentLine_enabled = 1
                let g:indentLine_noConcealCursor='nc'
                let g:indentLine_color_term = 10
                let g:indentLine_color_gui = '#A4E57E'
                let g:indentLine_color_gui = '#ffFF00'
                let g:indentLine_color_gui = '#ff5f00'
                "let g:indentLine_setConceal = 0
                let g:indentLine_bgcolor_term = 202
                    let g:indentLine_faster = 1
                    let g:indentLine_char = '.'
                    let g:indentLine_char = '|'
                    let g:indentLine_first_char='.'
                    let g:indentLine_first_char='|'
                    let g:indentLine_showFirstIndentLevel=1
                    let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']
        "------------------Nice------------------------------------------------------------ 
        Plug 'vim-scripts/underlinetag'
        augroup UnderlineTag
                autocmd!
                autocmd BufEnter *.py UnderlineTagOn
        augroup END
        "----------------------------------------------------------------------------------
        Plug 'terryma/vim-smooth-scroll'
        "----------------------------------------------------------------------------------
        Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
        "----------------------------------------------------------------------------------
        " Plug 'vigoux/LanguageTool.nvim'
        " let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'
        " hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        " hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none
        "---------------------------------------------------------------------------------- 
        "---:T---:Tnew---:Topen---:TREPL---------------------------------------------------
        "---------------------------------------------------------------------------------- 
        Plug 'kassio/neoterm'
                au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
                au VimEnter,BufRead,BufNewFile *.idr set filetype=idris
                au VimEnter,BufRead,BufNewFile *.lidr set filetype=lidris
                au VimEnter,BufRead,BufNewFile *.lfe, set filetype=lfe
                " <Plug>(neoterm-repl-send)
        "---------------------------------------------------------------------------------- 
        Plug 'brookhong/cscope.vim'
        "-------------------------TESTING-------------------------------------------------
        "---------------------------------------------------------------------------------- 
        Plug 'alvan/vim-closetag'
        let g:closetag_close_shortcut = '<leader>>'
        let g:closetag_filetypes = 'html,xhtml,phtml'
        let g:closetag_xhtml_filetypes = 'xhtml,jsx'

        "---------------------------------------------------------------------------------- 
        " Plug 'vim-scripts/CRefVim'
        ":Acks- Plug 'wincent/ferret'

        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------

        "---------------------------------------------------------------------------------- 
        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/seoul256.vim'
        Plug 'junegunn/limelight.vim'
        "---TRANSPORTER--------------------------------------------------------------------
        Plug 'matze/vim-move'
                let g:move_key_modifier = 'C'
        "---------------------------------------------------------------------------------- 
        "--NewNew---TODO------------------------------------------
        "---------------------------------------------------------
        Plug 'haya14busa/vim-easyoperator-line'
        "--------------------------------------------------------------------------------- 
        Plug 'unblevable/quick-scope'
        augroup qs_colors
                autocmd!
                autocmd ColorScheme * highlight QuickScopePrimary  ctermfg=81 cterm=underline
                autocmd ColorScheme * highlight QuickScopeSecondary  ctermfg=93 cterm=underline
        augroup END
        "--------------------Nice---------------------------------------------------------- 
        Plug 'moll/vim-bbye'
        "---------------------------------------------------------------------------------- 
        Plug 'flazz/vim-colorschemes'
        Plug 'rafi/awesome-vim-colorschemes'
        Plug 'rakr/vim-one'
        Plug 'chriskempson/base16-vim'
        Plug 'trusktr/seti.vim'
        Plug 'morhetz/gruvbox'
        Plug 'ayu-theme/ayu-vim'

        "----------------------------------------------------------------------------------
        "Plug 'gko/vim-coloresque'
        "Plug 'vim-scripts/tagselect'
        "Plug 'xolox/vim-easytags'

        "------------------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        Plug 'editorconfig/editorconfig-vim'
        "----------------------------------------------------------------------------------
        Plug 'junegunn/fzf'
        Plug 'junegunn/fzf.vim'
        Plug 'tiagoinacio/fzf-bookmark.vim'
        Plug 'runfalk/vim-fzf-extended'

        "---------------------------------------------------------------------------------- 
        "Plug 'ryanoasis/vim-devicons'
        "---------------------------------------------------------------------------------- 
        Plug 'tylerhunt/vim-spark'
        "---------------------------------------------------------------------------------- 
        Plug 'vim-scripts/Emmet.vim'
        let g:user_emmet_settings = {
                                \  'indentation' : '  ',
                                \  'perl' : {
                                \    'aliases' : {
                                \      'req' : 'require '
                                \    },
                                \    'snippets' : {
                                \      'use' : "use strict\nuse warnings\n\n",
                                \      'warn' : "warn \"|\";",
                                \    }
                                \  }
                                \}

        let g:user_emmet_expandabbr_key = '<c-\>'
        let g:use_emmet_complete_tag = 1
        "---------------------------------------------------------------------------------- 
        " div>p#foo
        " div>p#foo$*2
        " div>p#foo$*2>div.baran
        "--------------------------------------------------------------------------------- 
        "------------------------ START --REPL-------------------------------------------- 
        "--------------------------------------------------------------------------------- 
        Plug 'jalvesaq/vimcmdline'
                " vimcmdline options
                let cmdline_vsplit      = 1      " Split the window vertically
                let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
                let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
                let cmdline_term_height = 15     " Initial height of interpreter window or pane
                let cmdline_term_width  = 80     " Initial width of interpreter window or pane
                let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
                let cmdline_outhl       = 1      " Syntax highlight the output
                let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)
                let cmdline_app         = {}
                " let cmdline_app['python'] = 'ptipython3'
                " let cmdline_app['ruby']   = 'pry'
                " let cmdline_app['sh']     = 'bash'
                if has('gui_running') || &termguicolors
                        let cmdline_color_input    = '#9e9e9e'
                        let cmdline_color_normal   = '#00afff'
                elseif &t_Co == 256
                        let cmdline_color_input    = 247
                        let cmdline_color_normal   =  39
                        let cmdline_color_number   =  51
                        let cmdline_color_integer  =  51
                        let cmdline_color_float    =  51
                        let cmdline_color_complex  =  51
                        let cmdline_color_negnum   = 183
                        let cmdline_color_negfloat = 183
                        let cmdline_color_date     =  43
                        let cmdline_color_true     =  78
                        let cmdline_color_false    = 203
                        let cmdline_color_inf      =  39
                        let cmdline_color_constant =  75
                        let cmdline_color_string   =  79
                        let cmdline_color_stderr   =  33
                        let cmdline_color_error    =  15
                        let cmdline_color_warn     =   1
                        let cmdline_color_index    = 186
                endif
        "---------------------------------------------------------------------------------- 
        "------------------------ END --REPL----------------------------------------------- 
        "---------------------------------------------------------------------------------- 
        Plug 'Shougo/echodoc.vim'
                set cmdheight=2
                " set noshowmode
                let g:echodoc_enable_at_startup = 1
                "let g:echodoc#type = 'virtual'
                let g:echodoc#type = 'floating'
                " change Pmenu to your highlight group
                highlight link EchoDocFloat Pmenu
                
        "------------------------------------------------------------------ 
        Plug 'metakirby5/codi.vim'
        "--------------------------------------------------------------------------------- 
        Plug 'KabbAmine/zeavim.vim'
        "---FUZZY-SEARCH------------------------------------------------------------------ 
        " Plug 'junegunn/vim-oblique'
        "--------------------------------------------------------------------------------- 
        "         hi! def link ObliqueCurrentMatch Keyword
        "         hi! def link ObliquePrompt       Structure
        "         hi! def link ObliqueLine         String
        "--------------------------------------------------------------------------------- 
        Plug 'junegunn/vim-easy-align'
                " Start interactive EasyAlign in visual mode (e.g. vipga)
                xmap ga <Plug>(EasyAlign)
                " Start interactive EasyAlign for a motion/text object (e.g. gaip)
                nmap ga <Plug>(EasyAlign)
        "--------------------------------------------------------------------------------- 

        "--------------------------------------------------------------------------------- 
        Plug 'voldikss/vim-translate-me' 
        Plug 'iamcco/dict.vim'
                let g:api_key = "1932136763"
                let g:keyfrom = "aioiyuuko"
        "--------------------------------------------------------------------------------- 
        Plug 'ron89/thesaurus_query.vim'
        let g:tq_mthesaur_file="/home/red/git/bTest/kDot/DICT/mthesaurGu.txt"
        "------------------------------
        " let s:thesaurus_pat ="/home/red/git/bTest/kDot/DICT/mthesaurGu.txt"
        "----------------------------------------------------------------------------------
        Plug 'mattn/emmet-vim'
        Plug 'tpope/vim-eunuch'
        Plug 'tpope/vim-surround'
        "----------------------------------------------------------------------------------
        Plug 'itchyny/lightline.vim'
        Plug 'yarisgutierrez/ayu-lightline'

        "----------------------------------------------------------------------------------
        Plug 'scrooloose/nerdtree'
        Plug 'ivalkeen/nerdtree-execute'
        " Plug 'Linfee/nerdtree-open'
        Plug 'Xuyuanp/nerdtree-git-plugin'
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
                "-----------------------------------
                 let NERDTreeShowBookmarks=1
                 let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
                 let NERDTreeChDirMode=0
                 let NERDTreeMinimalUI = 1
                 let NERDTreeDirArrows = 1
                 let NERDTreeQuitOnOpen=1
                 let NERDTreeMouseMode=2
                 let NERDTreeShowHidden=1
                 let NERDTreeKeepTreeInNewTab=1
                 " always open NERDTree in the appropriate directory.
                 function! NERDTreeToggleInCurDir()
                         if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
                                 exe ":NERDTreeClose"
                         else
                                 if (expand("%:t") != '')
                                         exe ":NERDTreeFind"
                                 else
                                         exe ":NERDTreeToggle"
                                 endif
                         endif
                 endfunction
        "----------------------------------------------------------------------------------
                 let g:NERDDefaultAlign = 'left'
                 " let g:NERDCommentEmptyLines = 1
                 " let g:NERDTrimTrailingWhitespace = 1
                 " NERDTrees File highlighting
                 function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
                         exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
                         exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
                 endfunction
        "----------------------------------------------------------------------------------
                call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
                call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
                call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
                call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
                call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
                call NERDTreeHighlightFile('vim', 'Red', 'none', 'red', '#151515')
                call NERDTreeHighlightFile('js', 'blue', 'none', '#ffa500', '#151515')
                call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
                call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
                call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        Plug 'lilydjwg/colorizer'
        "----------------------------------------------------------------------------------
        Plug 'sheerun/vim-polyglot'
        "----------------------------------------------------------------------------------
        Plug 'google/vim-codefmt'
                augroup autoformat_settings
                        autocmd FileType bzl AutoFormatBuffer buildifier
                        autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
                        autocmd FileType dart AutoFormatBuffer dartfmt
                        autocmd FileType go AutoFormatBuffer gofmt
                        autocmd FileType gn AutoFormatBuffer gn
                        " autocmd FileType html,css,json AutoFormatBuffer js-beautify
                        autocmd FileType java AutoFormatBuffer google-java-format
                        autocmd FileType python AutoFormatBuffer yapf
                        " Alternative: autocmd FileType python AutoFormatBuffer autopep8
                        autocmd FileType json syntax match Comment +\/\/.\+$+
                augroup END

        "--------------------------------------------------------------------------------- 
        Plug 'godlygeek/tabular'

        "--------------------------------------------------------------------------------- 
                " abc,def,ghi , some , shrt 
                " a,b,c
        "--------------------------------------------------------------------------------- 
        Plug 'dhruvasagar/vim-table-mode'
                let g:table_mode_corner_corner='+'
                let g:table_mode_header_fillchar='='
                " :TableModeToggle
                " +-------+---------+--------+
                " | hallo | albert  | montag |
                " +=======+=========+========+
                " | isr   | student | id     |
                " +-------+---------+--------+

        "----------------------------------------------------------------------------------
        Plug 'liuchengxu/vim-which-key'


        "=====DEOSTART=====================================================================
        "-- Plug 'davidhalter/jedi-vim'
        "-- Plug 'zchee/deoplete-jedi'
        "---- Plug 'vhakulinen/neovim-intellij-complete-deoplete'
        "==================================================================================
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        set runtimepath+=~/.config/nvim/plugged/deoplete.nvim/
        "----------------------------------------------------------------------------------
        Plug 'lighttiger2505/deoplete-vim-lsp'
        "----------------------------------------------------------------------------------
        Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
        "==================================================================================
        Plug 'zchee/deoplete-clang'

        "=================================================================================
        Plug 'wokalski/autocomplete-flow'
                let g:autocomplete_flow#insert_paren_after_function = 0
        "=================================================================================
        "============ADD==================================================================
        Plug 'eagletmt/neco-ghc'
                let g:haskellmode_completion_ghc = 1
                autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
        "=================================================================================
        Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
                let g:deoplete#sources#go#package_dot = 1
                let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
        "=================================================================================
        Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
        Plug 'mkusher/padawan.vim'
                let $PATH=$PATH . ':' . expand('~/.config/composer/vendor/bin/')
                let g:padawan#composer_command = "/usr/bin/composer"
        "=================================================================================
        Plug 'artur-shaik/vim-javacomplete2'
                nnoremap <leader>cj :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
                autocmd filetype java nnoremap <F4> :w <bar> !javac % && java -enableassertions %:p <CR>
                " imap <F3> <Plug>(JavaComplete-Imports-RemoveUnused)
                " nmap <F4> <Plug>(JavaComplete-Imports-Add)
                " nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)
                " nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
                " :setlocal omnifunc=javacomplete#Complete
                " :setlocal completefunc=javacomplete#CompleteParamsInfo
                " autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
        "=================================================================================
        Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
        Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
        "=================================================================================
        Plug 'fishbullet/deoplete-ruby'
        Plug 'takkii/ruby-dictionary3'
        "=================================================================================
        "=================================================================================
        "--language--client-CHECK-LIST--
        "=================================================================================
        let g:LanguageClient_serverCommands = {
                                \ 'haskell': ['hie', '--lsp'],
                                \ 'c': ['ccls', '--log-file=/tmp/ccls.log'],
                                \ 'cpp': ['ccls', '--log-file=/tmp/ccls.log'],
                                \ 'python': ['pyls', '--log-file=/tmp/pyls.log'],
                                \ }
        "==================================================================================
        "=====DEOEND1======================================================================
        "==================================================================================

        "----------------------------------------------------------------------------------
        let g:autocomplete_deoplete = 'deoplete'
        "----------------------------------------------------------------------------------
        let g:deoplete#sources = {}
        let g:deoplete#sources.cpp = ['LanguageClient']
        let g:deoplete#sources.python = ['LanguageClient']
        let g:deoplete#sources.python3 = ['LanguageClient']
        let g:deoplete#sources.rust = ['LanguageClient']
        let g:deoplete#sources.c = ['LanguageClient']
        let g:deoplete#sources.vim = ['vim']

        "===DEOPLETE-CLANG=========================================================================
        let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-6.0/lib/libclang.so.1"
        let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
        let g:deoplete#sources#clang#sort_algo = 'priority' " alphabetical

        "==========================================================================================
        "? let g:clang_auto = 1
        "? let g:clang_cpp_options = '-std=c++ -stdlib=libc++'
        "? let g:clang_exec = 'clang'
        "==========================================================================================

        let g:deoplete#enable_at_startup = 1
        call deoplete#custom#option('refresh_always', v:true)
        "--------------------------------------------------------------------------------
        let g:deoplete#enable_ignore_case = 1
        let g:deoplete#enable_smart_case = 1
        let g:deoplete#enable_camel_case = 1
        let g:deoplete#enable_refresh_always = 1
        let g:deoplete#max_abbr_width = 0
        let g:deoplete#max_menu_width = 0
        " let g:deoplete#enable_yarp = 1

        "--------------------------------------------------------------------------------
        let g:deoplete#sources#ternjs#timeout = 3
        let g:deoplete#sources#ternjs#types = 1
        let g:deoplete#sources#ternjs#docs = 1

        "--------------------------------------------------------------------------------
        let g:deoplete#skip_chars = ['(', ')', '<', '>']
        let g:deoplete#tag#cache_limit_size = 800000
        let g:deoplete#file#enable_buffer_path = 1

        "--------------------------------------------------------------------------------
        " If you want to trigger deoplete manually, see also
        " |deoplete-options-auto_complete|, which should be 1 then
        " set to 1 if you want to disable autocomplete
        let g:deoplete#disable_auto_complete = 0
        let g:deoplete#auto_complete_start_length=1

        autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

        "==========================================================================================
        "---ZELENKA---ZELIONKA---ZELEN---PREVIEW---------------------------------------------------
        "==========================================================================================
        autocmd! FileType python setlocal completeopt+=preview
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        " Plugin key-mappings.
        inoremap <expr><C-g>     deoplete#undo_completion()
        inoremap <expr><C-l>     deoplete#refresh()
        " inoremap <expr><C-h>     deoplete#smart_close_popup()."\<C-h>"
        inoremap <expr><C-k>     deoplete#smart_close_popup()
        inoremap <C-space>     <Esc>a

        " imap <expr> <C-Space>  deoplete#manual_complete()
        "--------------------------------------------------------------------------------
        autocmd! FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd! FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd! FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd! FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd! FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd! FileType haskell setlocal omnifunc=necoghc#omnifunc
        autocmd! FileType python setlocal omnifunc=pythoncomplete#Complete
        " autocmd! FileType python setlocal omnifunc=jedi#completions
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
        "set completeopt=menuone,menu,longest,preview
        set omnifunc=syntaxcomplete#Complete
        set completeopt=menu
        "----------------------------------------------------------------------------------
        call deoplete#custom#source('LanguageClient','mark', 'langCl')
        call deoplete#custom#source('omni',          'mark', 'omni')
        call deoplete#custom#source('flow',          'mark', 'flow')
        call deoplete#custom#source('TernJS',        'mark', 'tern')
        call deoplete#custom#source('go',            'mark', 'go')
        call deoplete#custom#source('jedi',          'mark', 'Jedi')
        call deoplete#custom#source('vim',           'mark', 'vim')
        call deoplete#custom#source('neosnippet',    'mark', 'neoSnp')
        call deoplete#custom#source('around',        'mark', 'round')
        call deoplete#custom#source('buffer',        'mark', 'Buf')
        call deoplete#custom#source('tmux-complete', 'mark', 'tmux')
        call deoplete#custom#source('syntax',        'mark', 'synt')
        call deoplete#custom#source('member',        'mark', 'mmbr')
        call deoplete#custom#source('neosnippet',    'rank', 690)
        call deoplete#custom#source('ultisnips',     'rank', 680)
        call deoplete#custom#source('padawan',       'rank', 660)
        call deoplete#custom#source('go',            'rank', 650)
        call deoplete#custom#source('vim',           'rank', 640)
        call deoplete#custom#source('flow',          'rank', 630)
        call deoplete#custom#source('TernJS',        'rank', 620)
        call deoplete#custom#source('LanguageClient','rank', 610)
        call deoplete#custom#source('jedi',          'rank', 600)
        call deoplete#custom#source('tag',           'rank', 550)
        call deoplete#custom#source('omni',          'rank', 500)
        call deoplete#custom#source('member',        'rank', 500)
        call deoplete#custom#source('file_include',  'rank', 420)
        call deoplete#custom#source('file',          'rank', 410)
        call deoplete#custom#source('around',        'rank', 330)
        call deoplete#custom#source('buffer',        'rank', 320)
        call deoplete#custom#source('dictionary',    'rank', 310)
        call deoplete#custom#source('tmux-complete', 'rank', 300)
        call deoplete#custom#source('syntax',        'rank', 200)
        "==================================================================================
        Plug 'w0rp/ale'
        let g:ale_sign_column_always = 0
        let g:ale_emit_conflict_warnings = 0
        let g:ale_lint_on_text_changed = 'never'
        let g:ale_set_loclist = 0
        let g:ale_set_quickfix = 1
        "---------------------------------------
        let g:ale_set_signs = 0
        "---------------------------------------
        "==================================================================================
        hi link ALEErrorSign    custRed
        hi link ALEWarningSign  custYellow
        hi link ALEInfoSign     custGreen
        "==================================================================================
        let diagnosticsDisplaySettings={
                                \       '1': {
                                \           'name': 'Error',
                                \           'texthl': 'ALEError',
                                \           'signText': 'cR',
                                \           'signTexthl': 'ALEErrorSign',
                                \           'virtualTexthl': 'custRed',
                                \       },
                                \       '2': {
                                \           'name': 'Warning',
                                \           'texthl': 'ALEWarning',
                                \           'signText': 'cW',
                                \           'signTexthl': 'ALEWarningSign',
                                \           'virtualTexthl': 'custYellow',
                                \       },
                                \       '3': {
                                \           'name': 'Information',
                                \           'texthl': 'ALEInfo',
                                \           'signText': 'cI',
                                \           'signTexthl': 'ALEInfoSign',
                                \           'virtualTexthl': 'custGreen',
                                \       },
                                \       '4': {
                                \           'name': 'Hint',
                                \           'texthl': 'ALEInfo',
                                \           'signText': 'cH',
                                \           'signTexthl': 'custGreen',
                                \       },
                                \  }
        "==================================================================================
        let g:LanguageClient_diagnosticsDisplay=diagnosticsDisplaySettings
        "==================================================================================



call plug#end()
"==========================
"----PlugEnd---PlugStop----
"==========================

        "----------------------------------------------------------------------------------
         source ~/git/bTest/kDot/logoABB.vim
         source ~/git/bTest/kDot/legoHFunc.vim
        "----------------------------------------------------------------------------------
        "source ~/git/bTest/kDot/myPlug/logoCyan.vim
        " source ~/git/bTest/kDot/myPlug/nHydra.vim
        "----------------------------------------------------------------------------------
        "-------------------------------Gold Stuck.chen------------------------------------
        "----------------------------------------------------------------------------------
        set termguicolors
        "source mix/n-badwolf.vim 
        "source ~/git/bTest/kDot/mix/n-badwolf.vim
        "colorscheme molokai
        "colorscheme candycode
        colorscheme desert
        colorscheme badwolf
        colorscheme ayu
        let ayucolor="dark"   " for dark version of theme
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

        highlight UnderlineTag  cterm=underline  gui=underline guifg=#555555

        "----------------------------------------------------------------------------------
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

        "---TOP---!!!----------------------------------------------------------------------
        hi pythonSelf  ctermfg=68 cterm=bold 
        hi Search         ctermbg=11 
        " hi Normal         ctermbg=235 guibg=#333333
        hi ColorColumn    ctermbg=22
        hi MatchParen     ctermbg=39 ctermfg=11  cterm=bold
        set signcolumn=yes
        hi signcolumn     ctermbg=23 guibg=14
        " highlight SignColumn     ctermbg=230       guibg=#00ff00

        hi LineNr         ctermbg=17 ctermfg=15   guibg=#020202
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#10205f  guifg=#ffffff
        "--------------------------------------------------------------------------------- 
        "red let g:indentLine_color_term = 251
        "red let g:indentLine_newVersion = 0
        "--------------------------------------------------------------------------------- 

        "--------------------------------------------------------------------------------
        hi CursorLine     ctermbg=90  guibg=#870087
        set cursorcolumn
        hi CursorColumn   ctermbg=16 guibg=#870087 

        "--------------------------------------------------------------------------------
        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=240
        hi ColorColumn    ctermbg=14   guibg=#005500
        hi Visual cterm=bold ctermbg=2 ctermfg=NONE  guibg=#005500
        hi Comment        ctermfg=249 guifg=#dddddd  guibg=#ff3f00

        "--------------------------------------------------------------------------------
        set pumheight=12
        " Popup menu hightLight Group
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#006600
        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE guibg=#660000
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE guibg=#000066
        hi PmenuSel       ctermbg=10 ctermfg=1  guibg=#BF0011

        let g:CommandTHighlightColor = 9

        "--------------------------------------------------------------------------------
        silent! set complete& completeopt=menu infercase noshowfulltag
        "suppress intro message because the above makes it look bad
        set shortmess+=I
        "set shortmess+=c
        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "--------------------------------------------------------------------------------
        hi customPink     ctermbg=245 ctermfg=White  guibg=#ccbbcc guifg=#ff3f00
        hi lightGray      ctermbg=12  guibg=#4c6b6c guifg=#ff5fa0
        hi darkGray       ctermbg=211 guibg=#ffff00  guifg=#8000f0

        "--------------------------------------------------------------------------------
        hi custRed     ctermbg=Red   ctermfg=White  guibg=#ffFF97  guifg=#ff0011
        hi custGreen   ctermbg=Green ctermfg=White  guibg=#Afffaf  guifg=#0024fF
        hi custYellow  ctermbg=Blue  ctermfg=White  guibg=#AfffDf  guifg=#ff5f00
        "--------------------------------------------------------------------------------
        hi Pmenue        ctermfg=11
        set nuw =4
        set list
        set listchars=tab:▸\

        "--------------------------------------------------------------------------------
        call matchadd('lightGray', 'NEXT')
        call matchadd('lightGray', 'AAA')
        call matchadd('darkGray', 'TODO')
        call matchadd('darkGray', '!!!')
        call matchadd('darkGray', '???')
        call matchadd('darkGray', 'KKK')
        call matchadd('darkGray', 'MMM')
        call matchadd('darkGray', 'TTT')
        call matchadd('darkGray', 'DDD')
        call matchadd('customPink', '=')
        call matchadd('customPink', '#')
        call matchadd('customPink', ':')
        call matchadd('customPink', '-')
        "------------------------------------------------------

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        autocmd! User Oblique       normal! zz
        autocmd! User ObliqueStar   normal! zz
        autocmd! User ObliqueRepeat normal! zz

        hi! def link ObliqueCurrentMatch Keyword
        hi! def link ObliquePrompt       Structure
        hi! def link ObliqueLine         String
        let g:oblique#clear_highlight =0

"-AAA16---Wildmenu------------------------------------------------------------------------------{{{
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
        ":::::::::::::::<FORMAT>::::::::::::::LINES::::::::::::::::::::::::::::::::::::::::::::::::
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

        "==========================================================================================
        nmap ,, <Plug>(easymotion-overwin-w)
        nmap ;; <Plug>(easymotion-overwin-w)
        imap ;; <ESC>

        "------------------------------------------------------------------
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

        "==========================================================================================
        "::::::::::::::::::::::::::::::-2MAGIC2-:::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        vmap <A-c> :w !cat >> ./zbuf<CR>

        "==========================================================================================
        "==:Ex-TRIGER==MAGIC==Execute VIM colon command under cursor==:ls==========================
        "==========================================================================================
        " nnoremap <C-z> yy:<C-r>"<cr>
        " PUT to :ex
        nnoremap ;x yy:<C-r>"<cr>

        "==========================================================================================
        "---PlusMinusColor-------------------------------------------------------------------------
        "==========================================================================================
        nnoremap ( <c-x>:y x\|@x<cr>
        nnoremap ) <c-a>:y x\|@x<cr>
        "==========================================================================================
        "---FIREFOX----www.ewb.de------------------------------------------------------------------
        "==========================================================================================
        
        "==========================================================================================
        nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        nnoremap <localleader>o :Utl<CR>
        nnoremap ;o :Utl<CR>
        "------------------------------------------------------------------------------------------
        "===Control-] pop open a window and show the tag there.====================================
        "------------------------------------------------------------------------------------------
        nnoremap <A-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
        "------------------------------------------------------------------------------------------
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
        "------------------------------------------------------------------------------------------
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
        "------------------------------------------------------------------
        nnoremap <Leader>1 :SideSearch <C-r><C-w><CR> | wincmd p
        command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
        nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nnoremap <Leader>2 :PymodeDoc <cword> .<cr>
        "------------------------------------------------------------------
        nnoremap <Leader>3 :Pydoc <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nnoremap <Leader>4 <Plug>AgRawSearch
        "------------------------------------------------------------------
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nnoremap ff :NV <C-r><C-w><CR> | wincmd p
        nnoremap FF :ZRg <C-r><C-w><CR> | wincmd p
        nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
        nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
        nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        "------------------------------------------------------------------

        "==========================================================================================
        "====
        nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>

        "---------------------------------------------------------------
        nnoremap <F6> :FFLines <C-r><C-w><CR> | wincmd p
        nnoremap <F7> :FFBLines <C-r><C-w><CR> | wincmd p

        "==========================================================================================
        nnoremap ,h :CommandTHelp<cr>
        nnoremap ;h :CommandTHelp<cr>
        "==========================================================================================
        nmap cc  gcl
        "==========================================================================================
        nnoremap <F8> :LocationToggle<cr>
        nnoremap <LocalLeader>n :lnext<cr>zvzz
        nnoremap <LocalLeader>b :lprev<cr>zvzz
        "==========================================================================================
        nnoremap <F9> :call ToggleQuickFix()<CR>
        nnoremap <Leader>n :cnext<cr>zvzz
        nnoremap <Leader>b :cprev<cr>zvzz
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

        "---------------------------------------------------------------------------------- 
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
        "==================================================================================
        "---Open-Quickfix-window-automatically---------------------------------------------
        "==================================================================================
        autocmd QuickFixCmdPost grep cwindow
        autocmd! vimrc QuickfixCmdPost [^l]* nested copen | wincmd p
        autocmd! vimrc QuickfixCmdPost l* nested lopen | wincmd p

"===============================================================================================================
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
        command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                                \ | wincmd p | diffthis
endif

"===============================================================================================================
nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
"===============================================================================================================

"===============================================================================================================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> ; :<c-u>WhichKey  ';'<CR>
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

"===============================================================================================================

"===============================================================================================================

"===============================================================================================================
