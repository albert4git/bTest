" File: s15SynDeoLc.vim syn N15SYN bimini
" Created:            Di 09 Apr 2019 12:46:44  CEST
" Lass Modified:      Fr 07 Feb 2020 07:03:47  CET
"++AAA++#TAG+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"%%%%!!!%%%OK1%%%NICE%%%???%%%GAIL%%%OnTOP%%%%%%%%%%%%%%%%%%%%%%%%%%%%PROJECTIONIST%%%%TEMPLATING%%%%%%%%%%%%
"*******************************************Extra1***********************************************************
"%%#LeaderGuide%%%#STARTIFY%%%#QMENU%%%#Pyy%%%%%%%#PDOC%%%#DeoJedi%%%#VimOmni%%%#ULTI%%%%%#VimOmni%%%#EXEC%%%
"%%%%%%%%%%%%%%%%#PreSet%%%%%%%%#PySet%%%%%%%%%%%%%%%%#UNDO%%%%%%%%#MainSet%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"%%%%%%%%%%%#ADVANCED%%%%%#BEST%%%%%#SMART%%%%%%%%%%%#NOWO%%%%%#NEXT%%%%%#FRESH%%%%#TODO%%%%#ERROR%%%%%%%%%%%
"*****************************************COMPAS*************************************************************
"%%%%#LLINE%%%%#SOURCE%%%#WILD%%%%#NMODE%%%#IMODE%%%%#VMODE%%%%#CMODE%%%%#NAVI%%%%#WINMODE%%%%%#F2%%%%%%%%%%%
"************************************************************************************************************
"%%%%#HELP%%%%%#DOC%%%%%#FORMAT%%%%%#CommandT%%%%#CtrlSF%%%%%#FOLD%%%%%#FIND%%%%#SEARCH%%%%#FUNC%%%%%#FZF%%%%
"************************************************************************************************************
"%%%%#LEADER%%%%%#COC%%%%%#DEO%%%%%#AUTO%%%%#OPER%%%%%%#TMUX%%%%%%#IABBR%%%%#CYAN%%%%#OOO%%%%%%%%%%%%%%%%%%%%
"************************************************************************************************************
"%%%%#PYYPLUG%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"************************************************************************************************************
" +---+---------------+-----------------+---------------------+------------------+------------+----------+
" | H | [RUN]         | [FZF]           | [FIND]              | [FUNC]           | [Fugitive] | [EUNUCH] |
" +===+===============+=================+=====================+==================+============+==========+
" | 1 | [?]#REPL      | :MMBLines F7,\\ | :                   | :TableModeToggle | :Gwrite    |          |
" | 2 |               | :FZFDefinitions | :NV                 | :DimInactive     | :Gdiff     |          |
" | 3 | [?]#Linting   | :FZFFreshMru    | :SS                 | :Clap yanks      | :Gstatus   |          |
" | 4 | [n]#Jedi      | :FZFMru         | :MAg                | :SignatureListM  | :Glog      |          |
" | 5 | [x]#LSP       | :MGit           | :MMRg               |                  | :FZF!      |          |
" | 6 | [t]#Coc       | :MLibList       | :FindNonAscii       |                  | :Buffers   |          |
" | 7 | [x]#EasyAlign | :MPlugHelp      | ?scope              |                  | :GFiles?   |          |
" | 8 | [x]#leon      | :MTag           | :TagbarToggle       |                  |            |          |
" | 9 | []#EndTO      | :MRU            | :AG mao ~/Documents |                  |            |          |
" | 1 |               | :VSearchMe v*   | :MMLocate           |                  |            |          |
" | 9 |               | :MMFiles        |                     |                  |            |          |
" | 9 |               | :               |                     |                  |            |          |
" | 9 |               | :               | ABOLISH             |                  |            |          |
" +---+---------------+-----------------+---------------------+------------------+------------+----------+
"++bbb++++++++++++++++++++++++++++++++++}}}
"++AAA++:SS++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"---------------------------------
cabbrev SS  SideSearch
cabbrev MA  MMMarks
cabbrev ML  MMLines
cabbrev MBL MMBLines
cabbrev MM  FZFMru
cabbrev MF  MFiles
cabbrev MS  MMSnippets
cabbrev MD  FZFDefinitions
cabbrev MC  MMCommands
cabbrev MH  MMHelptags
cabbrev CY  Clap yanks
cabbrev CJ  Clap jumps
cabbrev CC  Clap command
cabbrev CR  Clap registers
cabbrev CM  Clap marks
cabbrev CH  Clap hist:
"---------------------------------
nnoremap <C-p>  :Clap yanks<CR>
"---------------------------------
"*********#SPELL****************
nmap == :call FzfSpell()<CR>
"---------------------------------
"==================================================================================
" :Git[!] [args]
" :Gstatus
" :Gcommit [args]
" :Gedit/:Gsplit/:Gvsplit/:Gtabedit/:Gpedit [revision]
" :Gwrite/:Gwq {path}
" :Gmove {destination}
" :Gremove
" :{range}Gread [revision]/[args]
" :Gdiff/:Gsdiff/:Gvdiff [revision]
" :Ggrep/:Glgrep [args] -- :grep/:lgrep with git-grep as 'grepprg'
" :Glog [args] -- load all previous revisions of current file into quickfix
" :[range]Gblame {flags}
" :[range]Gbrowse {revision}
"==================================================================================
"+++++++++++++++++++++++++++++++++++++bbb++}}}
"++AAA++#PreSet+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
autocmd!
hi clear
"!!!syntax on
" set foldclose=all
set modifiable

"==================================================================================================================
set guicursor=a:block-blinkon100-Cursor/Cursor
set gcr=a:block
set gcr+=o:hor50-Cursor
set gcr+=n:CursorN
set gcr+=i-ci-sm:InsertCursor
set gcr+=r-cr:ReplaceCursor-hor20
set gcr+=c:CommandCursor
set gcr+=v-ve:VisualCursor
set gcr+=a:blinkon100

"======================================ABC=========================================
set confirm
set browsedir=buffer
set fileencoding=utf8
set fileformats=unix,mac,dos
set fileformat=unix
set encoding=UTF-8
scriptencoding utf-8
set shortmess+=Ic
set shortmess+=W
set modelines=0
set winaltkeys=no
set guioptions=cMe
set helpheight=9
set showmode
set redrawtime=10000
set conceallevel=0
set conceallevel=2
"++bbb+++++++++++++++++EPRE+++++}}}
"++AAA++#PySet+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " let $PATH = expand('~/bin').':/usr/local/bin/:'.$PATH
        " set path=.,,src/**,lib/**,docs/**
        set path+=.,/home/red/
        "----------------------------------------------------------------------------------
        let $MYVIMRC='~/git/bTest/sPot/s11DeoLc.vim'
        "----------------------------------------------------------------------------------
        let g:python_host_prog = '/usr/bin/python2'
        let g:python3_host_prog = '/usr/bin/python3'
        "let g:python3_host_prog=expand('~/anaconda3/bin/python')
        "----------------------------------------------------------------------------------
        set dictionary+=/home/red/git/bTest/DICT/english-words.txt
"++bbb+++++++++++++++++++}}}
"++AAA++#UNDO++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        filetype on
        filetype plugin on
        filetype indent on
        "----------------------------------------------------------------------------------
        let maplocalleader=','
        let mapleader=' '
        "----------------------------------------------------------------------------------
        set nocompatible
        set shell=/bin/zsh
        "++Ctags++{{{
                let generate_tags=1
                set tags=.tags;
                set tags+=tags;
                "----------------------------------------------------------------------------------
                set tags=./tags;/,~/.vimtags
                " Make tags placed in .git/tags file available in all levels of a repository
                let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
                if gitroot != ''
                        let &tags = &tags . ',' . gitroot . '/.git/tags'
                endif
        "++}}}
        "----------------------------------------------------------------------------------
        " set spelllang=de,tech_speak
        " 'zg': add, 'zw': remove.
        "----------------------------------------------------------------------------------
        set spellsuggest=best
        set spelllang=de
        set spelllang=en
        set spell
        set nospell
        "==================================================================================
        " :MMake to perform a :make and to open any result quickfix window:
        " command -nargs=* MMake make <args>|cwindow 3
        "==================================================================================
        set makeprg=gcc\ -o\ %<\ %
        "----------------------------------------------------------------------------------
        set errorformat+=%f:%l.%c-%*[0-9]:\ %m
        set errorformat+=%f:%l.%c:\ %m
        set errorformat+=%f:\ %m
        "==================================================================================
        "set grepprg=/bin/grep\ -nH
        set grepprg=rg\ --vimgrep
        "----------------------------------------------------------------------------------
        if executable('ag')
                set grepprg=ag\ --nogroup\ --nocolor\ --column\ --ignore-dir\ node_modules\ --ignore-dir\ bower_components
                set grepformat=%f:%l:%c:%m
        endif

        let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'

        "==================================================================================
        " ----------------------------------------------------------------------------
        " ack.vim   [#FRESH]
        " ----------------------------------------------------------------------------
        if executable('ag')
        let &grepprg = 'ag --nogroup --nocolor --column'
        else
        let &grepprg = 'grep -rn $* *'
        endif
        command! -nargs=1 -bar Grepack execute 'silent! grep! <q-args>' | redraw! | copen
        " -----[END:#FRESH]------------------------------------------------------------------
        "==================================================================================

        "==================================================================================
        "----------------------------------------------------------------------------------
        let g:pymode_python = 'python3'
        "----------------------------------------------------------------------------------
        "==================================================================================
        set noswapfile
        set backup
        set undodir=~/.config/nvim/undoDir/
        set backupdir=~/.config/nvim/backUpDir/
        set directory=~/.config/nvim/swapDir/
        "==================================================================================
        if !isdirectory(expand(&undodir))
                call mkdir(expand(&undodir), "p")
        endif
        if !isdirectory(expand(&backupdir))
                call mkdir(expand(&backupdir), "p")
        endif
        if !isdirectory(expand(&directory))
                call mkdir(expand(&directory), "p")
        endif
        "==================================================================================
        set undofile
        set undoreload=2000
        "==================================================================================
        "==================================================================================

"++bbb+++++++++++++++EUNDO++++++}}}
"++AAA++#MainSet++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        set iskeyword-=.                    " '.' is an end of word.designator
        set iskeyword-=#                    " '#' is an end of word#designator
        set iskeyword-=-                    " '-' is an end of word=designator
        silent! set wrapscan ignorecase smartcase incsearch hlsearch magic
        "-Appearance---
        silent! display=lastline,uhex nowrap wrapmargin=0 guioptions=ce key=
        silent! set noshowmatch  noshowmode cmdheight=1 cmdwinheight=10
        silent! set noshowcmd ruler rulerformat= laststatus=2 statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c
        silent! set title titlelen=100 titleold= titlestring=%f noicon norightleft showtabline=1
        silent! set cursorline nocursorcolumn colorcolumn= concealcursor=nvc conceallevel=3 norelativenumber
        silent! set list listchars=tab:>\ ,nbsp:_ synmaxcol=800 ambiwidth=double breakindent breakindentopt=
        silent! set nosplitbelow nosplitleft startofline linespace=0 whichwrap=b, scrolloff=2 sidescroll=0
        silent! set equalalways nowinfixwidth nowinfixheight winminwidth=3 winminheight=3 nowarn noconfirm
        silent! set fillchars=vert:\|,fold:\  eventignore= helplang=en viewoptions=options,cursor virtualedit=
        "======================================================================================================
        set nuw =4
        "======================================================================================================
        set nowrap
        "---set whichwrap=b,s,h,l,<,>,[,]
        set splitbelow splitright
        set viminfo='20,\"80
        "---Editing---------------------------------------------------------------------------------
        silent! set iminsert=0 imsearch=0 nopaste pastetoggle= nogdefault comments& commentstring=#\ %s
        silent! set smartindent autoindent shiftround shiftwidth=8 expandtab tabstop=4 smarttab softtabstop=8
        silent! set textwidth=0 backspace=indent,eol,start nrformats=hex formatoptions=cmMj nojoinspaces
        silent! set nohidden autoread noautowrite noautowriteall nolinebreak mouse=a modeline& modelines&
        silent! set noautochdir write nowriteany writedelay=0 verbose=0 verbosefile= notildeop noinsertmode
        silent! set foldcolumn=1 nofoldenable foldlevel=0 foldmarker={{{,}}} foldmethod=marker foldminlines=6
        "------------------------------------------------------------------------------------------
        set backspace=2
        "------------------------------------------------------------------------------------------
        set linebreak
        set breakindentopt=sbr " showbreak will be handled correctly
        set virtualedit=block
        set formatoptions=cqj
        "TOP neovim specific
        set inccommand=split
        "------------------------------------------------------------------------------------------
        set switchbuf=useopen    " reveal already opened files from the
        set hidden               " Hide buffer instead of abandoning when unloading
        "------------------------------------------------------------------------------------------
        silent! set clipboard=unnamed
        silent! set clipboard+=unnamedplus
        "------------------------------------------------------------------------------------------
        "-Performance
        silent! set updatetime=300 timeout timeoutlen=300 ttimeout ttimeoutlen=50 ttyfast lazyredraw
        silent! set noerrorbells visualbell t_vb=
        set history=9024
        "------------------------------------------------------------------------------------------
        set nosm
        set wmh=0
        "------------------------------------------------------------------------------------------
        set report=0 " always report changed lines
        "------------------------------------------------------------------------------------------
        set diffopt+=vertical
        "------------------------------------------------------------------------------------------
        "char = can be removed from the list of valid filename char. JAVA_HOME=/opt/java/jdk1.4
        set isfname-==
        "------------------------------------------------------------------------------------------
        set autowrite  " Writes on make/shell commands
        set cf         " Enable error files & error jumping.
        set nonu
        set nu
        "----------------------------------------------------------------------------------
        set showmatch
        set matchpairs+=(:),{:},[:],<:>
        set matchpairs+=':'
        set matchtime=5
        set scrolloff=2
"++bbb+++++++++++++++++++++++EMAIN+++++++}}}
"=eHapyEnd=
call plug#begin('~/.config/nvim/plugged/')
"++AAA++#PLUG1++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'c9s/helper.vim'
        Plug 'c9s/treemenu.vim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        Plug 'tomtom/tlib_vim'
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/L9'
        Plug 'vim-scripts/FuzzyFinder'
        "----------------------------------------------------------------------------------
        Plug 'prabirshrestha/async.vim'
        Plug 'skywind3000/asyncrun.vim'
                let g:asyncrun_open = 15
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/genutils'
        Plug 'LucHermitte/lh-vim-lib'
        Plug 'inkarkat/vim-ingo-library'
        "----------------------------------------------------------------------------------
        Plug 'bronson/vim-trailing-whitespace'
        " :FixWhitespace
        "--------------------------------------
        Plug 'ntpeters/vim-better-whitespace'
                " :StripWhitespace,
                " g:strip_whitespace_on_save (defaults to 0)
                let g:strip_whitespace_on_save = 1
        "----------------------------------------------------------------------------------
        Plug 'farmergreg/vim-lastplace'
                let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
                " let g:lastplace_ignore_buftype = "quickfix,nofile,help",
                let g:lastplace_open_folds = 0
        "==================================================================================
        Plug 'tpope/vim-commentary'
        "--------------------------------------
        " Plug 'scrooloose/nerdcommenter'
        " Plug 'tomtom/tcomment_vim'
        Plug 'tpope/vim-speeddating'
        "--------------------------------------
        Plug 'tpope/vim-repeat'
        Plug 'vim-scripts/visualrepeat'
        "======================================
        Plug 'tpope/vim-eunuch'
        "======================================
        " dog:cat
        " :%S/box{,es}/bag{,s}/g
        Plug 'tpope/vim-abolish'
        "----------------------------------------------------------------------------------
        Plug 'sjl/gundo.vim'
        "----------------------------------------------------------------------------------
        Plug 'kshenoy/vim-signature'
        " :SignatureListMarkers  : List all markers
        "==================================================================================
        Plug 'exvim/ex-matchit'
        "----------------------------------------------------------------------------------
        Plug 'ervandew/supertab'
        "----------------------------------------------------------------------------------
        Plug 'ludovicchabant/vim-gutentags'
        "----------------------------------------------------------------------------------
        Plug 'majutsushi/tagbar'
                highlight TagbarHighlight   ctermfg=051 ctermbg=9 cterm=bold
                highlight TagListTagName    ctermfg=250
                highlight TagbarFoldIcon    ctermfg=051 ctermbg=9
                highlight TagbarHelp        ctermfg=051 ctermbg=9
        "----------------------------------------------------------------------------------
         Plug 'henrik/vim-qargs'
         "-----------------------------------------------------------
         Plug 'AndrewRadev/undoquit.vim'
        "==================================================================================
        Plug 'mbbill/undotree'
        "==================================================================================
        "---c-w+u------
         Plug 'maxbrunsfeld/vim-yankstack'
        "==================================================================================
        Plug 'vim-scripts/timestamp.vim'
        "----------------------------------------------------------------------------------
        "======RepeatMove==================================================================
        Plug 'vim-scripts/repmo.vim'
                :let repmo_key = ")"
                :let repmo_revkey = "("
        "---Perfection--Continuity------
        Plug 'terryma/vim-smooth-scroll'
        "==================================================================================
        Plug 'Shougo/junkfile.vim'
        "==================================================================================
        Plug 'sickill/vim-pasta'
                let g:pasta_disabled_filetypes = ['coffee', 'yaml']
                let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'python', 'java', 'css', 'vim', 'sh']
                let g:pasta_paste_before_mapping = ',P'
                "---Perfection--Continuity------
                let g:pasta_paste_after_mapping = ',p'
                "---Perfection--Continuity------
        "==================================================================================
"++bbb+++++++++++++++ENDPLUG1+++}}}
"++aaa++#WINPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        Plug 'easymotion/vim-easymotion'
        " Plug 'easymotion/vim-easymotion', {'on': '<plug>(easymotion-s2)'}
                let g:EasyMotion_smartcase = 1
                "-Disable default mappings
                let g:EasyMotion_do_mapping = 0
        "----------------------------------------------------------------------------------
         Plug 'mtth/scratch.vim'
        "==================================================================================
        Plug 'wellle/visual-split.vim'
                " :VSSplit, :VSSplitAbove or :VSSplitBelow to create the split
                " :VSResize to execute the VSResize ex command on the selected range
                " nmap <C-W>r  <Plug>(Visual-Split-Resize)
                " nmap <C-W>s <Plug>(Visual-Split-Split)
        "-???-------------------------------------------------------------------------------
        Plug 'skywind3000/vim-preview'
        "VSSplit
        "====================NICE==========================================================
        Plug 'moll/vim-bbye'
        ":bufdo :Bdelete :Bwipeout
        Plug 'qpkorr/vim-bufkill'
                " :bun/:bd/:bw to close the window as well (vim command), or
                " :BUN/:BD/:BW to leave the window intact (this script).
                " :BB/:BF :BA
        Plug 'schickling/vim-bufonly'
                ":BO BufOnly :Bonly, :BOnly, :Bufonly
"++bbb++++++++++++++ENDWIN+++}}}
"++AAA++#COLORPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        Plug 'flazz/vim-colorschemes'
        " Plug 'morhetz/gruvbox'
        "----------------------------------------------------------------------------------
        Plug 'guns/xterm-color-table.vim'
        "Plug 'gko/vim-coloresque'
        Plug 'lilydjwg/colorizer'
        "----------------------------------------------------------------------------------
        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/seoul256.vim'
        Plug 'junegunn/limelight.vim'
        "----------------------------------------------------------------------------------
        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'flrnprz/plastic.vim', { 'as': 'plastic' }
        Plug 'flrnprz/candid.vim', { 'as': 'candid' }
        Plug 'joshdick/onedark.vim'
        "------------------CAR--------------------------------------------------------------
"++bbb++++++++++++ENDCOLOR+++}}}
"++AAA++#HIPLUG+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        Plug 'mhinz/vim-halo'
        "==================================================================================
        Plug 'blueyed/vim-diminactive'
        ":DimInactiveSyntaxOn
        let g:diminactive_use_syntax = 1
        let g:diminactive_enable_focus = 1
        let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help', 'tagbar']
        "----------------------------------------------------------------------------------
        Plug 'machakann/vim-highlightedyank'
                let g:highlightedyank_highlight_duration = -1
        "--111-----------------------------------------------------------------------------
        Plug 'osyo-manga/vim-brightest'
                " let g:brightest#highlight = { "group" : "Define" }
                " let g:brightest#highlight = { "group" : "vimNumber" }
                " let g:brightest#highlight = { "group" : "vimVar" }
                " let g:brightest#highlight = { "group" : "op_lv0" }
                 let g:brightest#highlight = { "group" : "GruveBoxRedBold" }
                 let g:brightest#highlight = { "group" : "XboxGruen" }
        "-JAPAN-
        "----------------------------------------------------------------------------------
        Plug 'ivyl/vim-bling'
                " let g:bling_time = 42
                let g:bling_time = 82
                let g:bling_color_fg = 'red'
                let g:bling_color_bg = 'green'
                " let g:bling_color_cterm = 'reverse'
                let g:bling_color_gui_fg = 'cyan'
                let g:bling_color_gui_bg = 'green'
        "----------------------------------------------------------------------------------
        Plug 'nathanaelkane/vim-indent-guides'
                let g:indent_guides_enable_on_vim_startup = v:true
                let g:indent_guides_exclude_filetypes = ['help', 'man']
                let g:indent_guides_auto_colors = 0
                autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   guibg=#331144
                autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=#331159
        "==================================================================================
        Plug 'frazrepo/vim-rainbow'
        let g:rainbow_active = 1
        let g:rainbow_guifgs = ['cyan', 'DarkOrange1', 'RoyalBlue1', 'FireBrick', 'DarkOrchid1']
        "---SSTRACH--------OnTOP-----------------------------------------------------------
        " Plug 'justincampbell/vim-eighties'
        " let g:eighties_enabled = 1
        " let g:eighties_minimum_width = 72
        " let g:eighties_extra_width = 0
        " let g:eighties_compute = 1
        " let g:eighties_bufname_additional_patterns = ['fugitiveblame']

"++AAA+++++++++++++ENDHI++++}}}
"++AAA++#ExtraUnderHi++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        "=====================[#FRESH]===NICE==Pyy=========================================
        "==================================================================================
        Plug 'vim-scripts/underlinetag'
        "----------------------------------------------------------------------------------
        " TagHighlight highlight names of class, variable, types in code.
        " Usage: :UpdateTypesFile
        "----------------------------------------------------------------------------------
        " Plug 'vim-scripts/TagHighlight'
        "         if !exists('g:TagHighlightSettings')
        "                 let g:TagHighlightSettings = {}
        "         endif
        "         let g:TagHighlightSettings['TagFileName'] = 'tags'
        "         let g:TagHighlightSettings['CtagsExecutable'] = 'ctags'
        "         let g:TagHighlightSettings['CtagsVariant'] = 'exuberant'
        "         let g:TagHighlightSettings['CtagsArguments'] = []
        "         let g:TagHighlightSettings['CtagsExtraArguments'] = []
        "         let g:TagHighlightSettings['ForcePythonVariant'] = 'if_pyth3'
        "         let g:TagHighlightSettings['PythonVariantPriority'] = [
        "                                 \ "if_pyth3", "if_pyth", "python", "compiled",
        "                                 \ ]
"++bbb++}}}
"++AAA++#BESTPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/Lynx-Offline-Documentation-Browser'
        "==================================================================================
        Plug 'tyru/capture.vim'
        "==================================================================================
        Plug 'thinca/vim-quickrun'
        "==================================================================================
        Plug 'mhinz/vim-startify'
        "==================================================================================
        Plug 'ryanoasis/vim-devicons'
        "==[#BEST]==================[#QMENU]===============================================
        Plug 'skywind3000/quickmenu.vim'
        "==========[#LeaderGuide]==========================================================
        Plug 'hecal3/vim-leader-guide'
        "==================================================================================
        " Presuming you meant vim-lion, and it looks great. I have been using tabular,
        " glip
        Plug 'tommcdo/vim-lion'
        let g:lion_squeeze_spaces = 1
        "==================================================================================
        Plug 'wellle/targets.vim'
        "==================================================================================
        " Same a delimitMate, also completes unclosed brakcets when pressing enter new line
        " Bracket completion
        Plug 'cohama/lexima.vim'
        autocmd FileType clojure let b:lexima_disabled = 1
        " let g:lexima_no_default_rules = 1
        " call lexima#set_default_rules()
        "==================================================================================
        " inoremap <expr> ( lexima#expand('b', 'i')
        " call lexima#add_rule({'char': ')', 'at': '\%#)', 'leave': 1})
        " call lexima#add_rule({'char': '<BS>', 'at': '(\%#)', 'input': '<BS>', 'delete' : 1})
        "==================================================================================
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
        "----------------------------------------------------------------------------------

"++bbb+++++++++++++++ENDBEST+++}}}
"++AAA++#LLINEPLUG+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        Plug 'itchyny/lightline.vim'
        Plug 'sainnhe/lightline_foobar.vim'
        Plug 'mengelbrecht/lightline-bufferline'
        Plug 'jacoborus/tender.vim'
        "==OneWorkingBut=======================================
        Plug 'zefei/vim-wintabs'
        "==================================================================================
        " Plug 'fholgado/minibufexpl.vim'
        "==================================================================================
        "map <F9> :MBEToggle<CR>
        "map <C-J> :bn<CR>
        "map <C-K> :bp<CR>
        let g:miniBufExplStatusLineText = "MiniBufExpl"
        let g:miniBufExplVSplit = 0
        let g:miniBufExplMinSize = 1
        let g:miniBufExplMaxSize = 1
        let g:miniBufExplShowBufNumbers = 1
        " always display syntax in minibufexpl
        let g:miniBufExplForceSyntaxEnable = 1
        " for other explorers like TagList
        let g:miniBufExplModSelTarget = 1
        " omit the buffer number from MBE's buffer display
        let g:miniBufExplShowBufNumbers = 0
        let g:statusLineText = "-Indi-"
        "================?=================================================================
        hi MBENormal               guifg=#808080 guibg=fg
        hi MBEChanged              guifg=#CD5907 guibg=fg
        hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
        hi MBEVisibleChanged       guifg=#F1266F guibg=fg
        hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
        hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
        "==================================================================================
        "===GitErr==================================
        " Plug 'b4b4r07/vim-buftabs'
        "=========================================
        " Plug 'zefei/vim-wintabs-powerline'
        "----Nice-Tabs----------------------------
        " Plug 'webdevel/tabulous'
        " let tabulousLabelNameTruncate = 0
        "-----------------------------------------
        " Plug 'itchyny/thumbnail.vim'
        " Plug 'ap/vim-buftabline'
        "-----------------------------------------
        " Plug 'wesQ3/vim-windowswap'
"++bbb++++++++++++++++++++}}}
"++AAA++#OPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "===================================
        Plug 'kana/vim-textobj-user'
        "===================================
        Plug 'adriaanzon/vim-textobj-matchit'
        "am , im :if-ifend , for-endfore ..
        "==================================================================================
        Plug 'kana/vim-textobj-diff'
        "==================================================================================
        Plug 'reedes/vim-textobj-sentence'
                let g:textobj#sentence#select = 's'
                let g:textobj#sentence#move_p = '('
                let g:textobj#sentence#move_n = ')'
        "========================[#FRESH]==================================================
                Plug 'kana/vim-textobj-line'
                Plug 'Julian/vim-textobj-variable-segment'
                Plug 'kana/vim-textobj-entire'
                Plug 'deathlyfrantic/vim-textobj-blanklines'
                Plug 'whatyouhide/vim-textobj-xmlattr'
                "----------------[#TRY]------------------------------
                Plug 'paulhybryant/vim-textobj-path'
                Plug 'jceb/vim-textobj-uri'
                Plug 'mattn/vim-textobj-url'
                Plug 'vimtaku/vim-textobj-keyvalue'
                "---------------------------------------------------
                "-Plug 'kana/vim-textobj-lastpat'
                "-Plug 'whatyouhide/vim-textobj-erb'
                "-Plug 'rsrchboy/vim-textobj-heredocs'
                "---------------------------------------------------
        "==================================================================================
                Plug 'kana/vim-textobj-function'
                Plug 'Julian/vim-textobj-brace'
                Plug 'glts/vim-textobj-indblock'
                Plug 'kana/vim-textobj-indent'
                Plug 'kana/vim-textobj-fold'
                Plug 'beloglazov/vim-textobj-quotes'
                "----vac---
                Plug 'coderifous/textobj-word-column.vim'
                "----vax---
                Plug 'glts/vim-textobj-comment'
                let g:textobj_comment_no_default_key_mappings = 1
                xmap ax <Plug>(textobj-comment-a)
                omap ax <Plug>(textobj-comment-a)
                xmap ix <Plug>(textobj-comment-i)
                omap ix <Plug>(textobj-comment-i)
                xmap aX <Plug>(textobj-comment-big-a)
                omap aX <Plug>(textobj-comment-big-a)
                xmap iX <Plug>(textobj-comment-big-i)
                omap iX <Plug>(textobj-comment-big-i)
        "------------------------------------------------
                Plug 'nelstrom/vim-textobj-rubyblock'
                let g:textobj_rubyblock_no_default_key_mappings = 1
                xmap ar  <Plug>(textobj-rubyblock-a)
                omap ar  <Plug>(textobj-rubyblock-a)
                xmap ir  <Plug>(textobj-rubyblock-i)
                omap ir  <Plug>(textobj-rubyblock-i)
        "------------------------------------------------
                Plug 'junegunn/vim-after-object'
                autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
                " va=  visual after =
                " ca=  change after =
                " da=  delete after =
                " ya=  yank after =
                " apple = 'juice'
                " apple = 'juice'
        "-----------------OK1----------------------------
                Plug 'rhysd/vim-textobj-anyblock'
        "==================================================================================
        "----------------------[#TextObj]--------------------------------------------------
        "==================================================================================
        Plug 'terryma/vim-expand-region'
                 let g:expand_region_text_objects = {
                                         \ 'iw'  :0,
                                         \ 'iW'  :0,
                                         \ 'iq'  :1,
                                         \ 'ab'  :0,
                                         \ 'ij'  :1,
                                         \ 'il'  :0,
                                         \ 'io'  :1,
                                         \ 'it'  :1,
                                         \ 'ii'  :0,
                                         \ 'im'  :1,
                                         \ 'ix'  :1,
                                         \ 'if'  :1,
                                         \ 'af'  :1,
                                         \ 'aF'  :0,
                                         \ 'is'  :1,
                                         \ 'ih'  :1,
                                         \ 'ip'  :1,
                                         \ 'iz'  :1,
                                         \ 'ie'  :0
                                         \ }
        "==================================================================================
        Plug 'machakann/vim-sandwich'
                nmap s <Nop>
                xmap s <Nop>
                let g:textobj_sandwich_no_default_key_mappings = 1
                omap ia <Plug>(textobj-sandwich-auto-i)
                xmap ia <Plug>(textobj-sandwich-auto-i)
                omap aa <Plug>(textobj-sandwich-auto-a)
                xmap aa <Plug>(textobj-sandwich-auto-a)
                "-----------------------------------------------
                " [ {(hello) ( noch ) ('Mal') (tomos) } tormos]
                " f ( noch, mal , nie, mals )

        "===!!!=================================
        "Python text objects
        "Plug 'jeetsukumaran/vim-pythonsense'

        "-----------------------------------------------------------------------------------
        "---NoAutoClose-YCM-----------------------------------------------------------------
        "-----------------------------------------------------------------------------------
        " Plug 'jiangmiao/auto-pairs'
        "==================================================================================
        Plug 'alvan/vim-closetag'
        let g:closetag_close_shortcut = '<leader>>'
        let g:closetag_filetypes = 'html,xhtml,phtml'
        let g:closetag_xhtml_filetypes = 'xhtml,jsx'
        "==================================================================================
        "{ log (sin [tan( cosin ( <b>'x2'</b> ) ) ] ) }
        "==================================================================================
        "--[#SMART] <c-a> and <c-x> to toggle true/false, on/off, increment dates weekday
        "==================================================================================
        Plug 'nishigori/increment-activator'
        " Normal-mode: customized
        let g:increment_activator_no_default_key_mappings = 1
        nmap <silent> ab <Plug>(increment-activator-increment)
        nmap <silent> az <Plug>(increment-activator-decrement)
        " Insert-mode
        " imap <silent> <C-a> <Plug>(increment-activator-increment)
        " imap <silent> <C-x> <Plug>(increment-activator-decrement)
        let g:increment_activator_filetype_candidates =
                                \ {
                                \   '_': [
                                \     ['info', 'warning', 'notice', 'error'],
                                \     ['Pythonista', 'PHPer', 'Gopher'],
                                \   ],
                                \   'git-rebase-todo': [
                                \     ['pick', 'reword', 'edit', 'squash', 'fixup', 'exec'],
                                \   ],
                                \   'go': [
                                \     ['true', 'false', 'iota', 'nil'],
                                \     ['byte', 'complex64', 'complex128'],
                                \     ['int', 'int8', 'int16', 'int32', 'int64'],
                                \     ['uint', 'uint8', 'uint16', 'uint32', 'uint64'],
                                \     ['float32', 'float64'],
                                \     ['interface', 'struct'],
                                \   ],
                                \ }

        "==[#OPER]==============================
        " Plug 'kana/vim-operator-user'
        "=======================================
"++bbb+++++++++++++ENDTOBJECT+++++}}}
"++AAA++#HULK+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'airblade/vim-gitgutter'
                let g:gitgutter_signs = 1
                let g:gitgutter_max_signs = 800
                "--------------------------------------------------
                let g:gitgutter_map_keys = 0
                let g:gitgutter_max_signs = 500
                let g:gitgutter_realtime = 1
                let g:gitgutter_eager = 1
                let g:gitgutter_diff_args = '--ignore-space-at-eol'
                "--------------------------------------------------
                "--Performance-optimization---
                let g:gitgutter_realtime = 0
                let g:gitgutter_eager = 0
        "-------------------------------------------------------------------
        "-------------------------------------------------------------------
        Plug 'gilligan/textobj-gitgutter'
                vmap ih <Plug>(textobj-gitgutter-i)
                xmap ih <Plug>(textobj-gitgutter-i)
                omap ih <Plug>(textobj-gitgutter-i)
        "-------------------------------------------------------------------
        "---------HULK--hunk--HUNK--888-------------------------------------
        "-------------------------------------------------------------------
        nmap [c <Plug>(GitGutterPrevHunk)
        nmap ]c <Plug>(GitGutterNextHunk)
        "-------------------------------------------------------------------
        " nnoremap cog :GitGutterToggle<CR>
        " nnoremap <Leader>gt :GitGutterAll<CR>
        "-------------------------------------------------------------------

"++bbb++++++++++++++ENDHULK++++}}}
"++AAA++#GIT+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "--???------------------------------------------------------------------------------
        Plug 'xolox/vim-misc'
        "==================================================================================
        "====[#FUGITIVE]===================================================================
        "==================================================================================
        " Plug 'godlygeek/csapprox', {'for': 'fugitiveblame' }
        "==================================================================================
        Plug 'tpope/vim-fugitive'
        "Plug 'idanarye/vim-merginal'
        ":MerginalToggle
        "=================================================================
        "====!!!===LGHistory===[#FRESH]===================================
        "=================================================================
        Plug 'm42e/vim-lgh'
        "--------------------------------------------------------------------------
        Plug 'jreybert/vimagit'
        "===========================================================================
        " Plug 'junegunn/gv.vim'
        "   - o or <cr> on a commit to display the content of it
        "   - o or <cr> on commits to display the diff in the range
        "   - O opens a new tab instead
        "   - gb for :Gbrowse
        "   - ]] and [[ to move between commits
        "   - q to close
        "--------------------------------------------------------------------------
"++bbb+++++++++++++++++++++++}}}
"++AAA++#TransPlug++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'vim-scripts/vis'
        Plug 'lifepillar/vim-cheat40'
        Plug 'dalance/vseq.vim'
        Plug 'sk1418/HowMuch'
        Plug 'sk1418/Join'
        Plug 'salsifis/vim-transpose'
"++bbb++++++++++++++++++++++++}}}
"++AAA++#APLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "---------------------------------------
        " Plug 'vim-scripts/a.vim'
        "---------------------------------------
        Plug 'aperezdc/vim-template'
        " `g:templates_directory`
        "---------------------------------------
"++bbb++++++++++++++++++++}}}
"++AAA++#XMLPLUG++#CSS++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------------------------------------------------
        " Plug 'sukima/xmledit/'
        "----------------------------------------------------------------------------------
        " HTML / CSS / XML Bundle
        " Plug 'tpope/vim-haml', {'for': ['haml', 'sass', 'scss']}
        " Plug 'amadeus/vim-xml'
        "------------------------------------------------------------
        Plug 'elzr/vim-json'
        Plug 'cespare/vim-toml'
        Plug 'mrk21/yaml-vim'
        Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
        " CSS
        Plug 'JulesWang/css.vim', {'for': 'css'}
        Plug 'othree/csscomplete.vim', {'for': 'css'}
        Plug 'ap/vim-css-color', {'for': 'css'}
        "--------------------------------------------------
        " Plug 'AndrewRadev/tagalong.vim', {'for': 'html'}
"++bbb++}}}
"++AAA+#MD++#ORGANIZER++#ORG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        Plug 'itchyny/calendar.vim'
        "---------------------------------------------
        " Plug 'vim-pandoc/vim-pandoc'
        " Plug 'vim-pandoc/vim-pandoc-syntax'
        "--Syntax?-------------------------------------------
        " Plug 'hallison/vim-markdown'
        "---------------------------------------------
        " Plug 'gabrielelana/vim-markdown'
        " Plug 'tpope/vim-markdown'
        Plug 'plasticboy/vim-markdown'
        "----------------------------------------------------------------------------------
        " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'markdown' }
        "--DF16----------------------------------------------------------------------------
        " Plug 'mivok/vimtodo'
        " Plug 'hsitz/VimOrganizer'
        " Plug 'xolox/vim-notes'
        " Plug 'axvr/org.vim'
        " Plug ''
        Plug 'jceb/vim-orgmode'
        Plug 'dstein64/vim-startuptime'
        Plug 'vim-scripts/SyntaxRange'
        Plug 'chrisbra/NrrwRgn'
        " Plug 'dkarter/bullets.vim'
        " let g:bullets_enabled_file_types = [
        " \ 'markdown',
        " \ 'org',
        " \ 'text',
        " \ 'scratch'
        " \]

"++bbb++}}}
"++AAA++#GREP+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "-let g:nv_search_paths = ['~/git/bTest/']
        "-let g:nnv_search_paths = ['/media/red/124Black/']
        "==================================================================================
        Plug 'brookhong/cscope.vim'
        "==================================================================================
        Plug 'mhinz/vim-grepper'
        let g:grepper = {}            " initialize g:grepper with empty dictionary
        let g:grepper.repo = ['.git', '.hg', '.svn']
        let g:grepper.stop = 5000
        " let g:grepper.prompt_mapping_tool = '<leader>g'
        "==================================================================================
        "--GAIL-:StmSrch--------------
        Plug 'msbmsb/stem-search.vim'
        "=================================================================================
        Plug 'unblevable/quick-scope'
        "----------------------------------------------------------------------------------
        Plug 'vim-scripts/SearchComplete'
        "=======================================
        Plug 'sk1418/QFGrep'
        Plug 'aghareza/vim-gitgrep'
        "----------------------------------------------------------------------------------
        Plug 'romainl/vim-qf'
        Plug 'yssl/QFEnter'
        "----------------------------------------------------------------------------------
        Plug 'brooth/far.vim'
        Plug 'mileszs/ack.vim'
        Plug 'jremmen/vim-ripgrep'
        "----------------------------------------------------------------------------------
        Plug 'Chun-Yang/vim-action-ag'
        Plug 'rking/ag.vim'
        Plug 'gabesoft/vim-ags'
        let g:ags_agexe = 'rg'
        let g:ags_agargs = {
        \ '--column'         : ['', ''],
        \ '--line-number'    : ['', ''],
        \ '--context'        : ['g:ags_agcontext', '-C'],
        \ '--max-count'      : ['g:ags_agmaxcount', ''],
        \ '--heading'        : ['',''],
        \ '--smart-case'     : ['','-S'],
        \ '--color'          : ['always',''],
        \ '--colors'         : [['match:fg:green', 'match:bg:black', 'match:style:nobold', 'path:fg:red', 'path:style:bold', 'line:fg:black', 'line:style:bold'] ,''],
        \ }
        "==================================================================================
        Plug 'ddrscott/vim-side-search'
        "--heading and --stats are required!
        let g:side_search_prg = 'ag --word-regexp'
                                \. " --ignore='*.js.map'"
                                \. " --heading --stats -B 1 -A 4"
        "---------------------------------------------------------
        "*Can use vnew or new
        let g:side_search_splitter = 'vnew'
        let g:side_search_split_pct = 0.4
        "==================================================================================
        Plug 'jesseleite/vim-agriculture'
        "-:Acks- Plug 'wincent/ferret'
        "==================================================================================
        " Plug 'kien/ctrlp.vim'
        Plug 'wincent/command-t'
        "==================================================================================
        Plug 'vim-scripts/mru.vim'
                let MRU_Max_Entries = 1000
                let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix
                let MRU_Window_Height = 20
                highlight link MRUFileName GruvboxRedBold
                let MRU_Filename_Format={'formatter':'v:val', 'parser':'.*'}
        ":MRU
"++bbb+++++++++++++++ENDGREPP++++}}}
"++AAA++#FZFPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        Plug 'junegunn/fzf', { 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'pbogut/fzf-mru.vim'
           let g:fzf_mru_relative = 1
        "==================================================================================
        Plug 'runfalk/vim-fzf-extended'
                "-FZFBuffers
                "-FZFFiles
                "-FZFDefinitions
        "==================================================================================
        Plug 'alok/notational-fzf-vim'
                let g:nv_search_paths = ['~/' ]
                let g:nv_search_paths = ['/media/red/']
                let g:nv_search_paths = ['~/git/bTest/pyLabGitPdbPythonMode27']
                let g:nv_search_paths = ['/media/red/124Black/2019DocLink/']
                let g:nv_search_paths = ['~/git/bTest/']
        "--------------------------------------
"++bbb++++++++++++++++++++++}}}
"++AAA++#CLAP++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        Plug 'liuchengxu/vim-clap'
        let g:clap_provider_alias = {'hist:': 'command_history'}
        " let g:clap_open_action: Dict, { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit'}
        "========================================================
        hi default link ClapInput   Visual
        hi default link ClapDisplay Pmenu
        hi default link ClapPreview PmenuSel
        hi default link ClapMatches Search
        "========================================================
        "=ClapQuery will use the bold fg of Normal and the same bg of ClapInput
        " hi ClapDefaultPreview          ctermbg=237 guibg=#3E4452
        " hi ClapDefaultSelected         cterm=bold,underline gui=bold,underline ctermfg=80 guifg=#5fd7d7
        " hi ClapDefaultCurrentSelection cterm=bold gui=bold ctermfg=224 guifg=#ffd7d7
        "========================================================
        " hi default link ClapPreview          ClapDefaultPreview
        " hi default link ClapSelected         ClapDefaultSelected
        " hi default link ClapCurrentSelection ClapDefaultCurrentSelection
        "==================================================================================
"++bbb++++++++++++++ENDCLAP++++}}}
"++AAA++#ULTI+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'MarcWeber/vim-addon-mw-utils'
        "----------------------------------------
        Plug 'honza/vim-snippets'
        "----------------------------------------
        Plug 'SirVer/ultisnips'
"++bbb+++++++++++++++++}}}
"++AAA++#TMUX++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'benmills/vimux'
        noremap <leader>vp :VimuxPromptCommand<CR>
        noremap <leader>vr :VimuxRunLastCommand<CR>
        noremap <leader>vo :VimuxInspectRunner<CR>
        noremap <leader>vc :VimuxCloseRunner<CR>
        let g:VimuxHeight = "20"
        let g:VimuxOrientation = "v"
        let g:VimuxUseNearest = 1
        let g:VimuxPromptString = "DDD"
        let g:VimuxRunnerType = "pane"
        "pane": for panes
        "window": for windows
        "----------------------------------------
        ":Tmux
        "----------------------------------------
        Plug 'tmux-plugins/vim-tmux'
        "----------------------------------------
        " Plug 'christoomey/vim-tmux-navigator'
        Plug 'christoomey/vim-tmux-navigator'
        " nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
        "----------------------------------------
        Plug 'edkolev/tmuxline.vim' " Keep tmux theme and vim theme in sync
        "=============================================
        " tmuxline
        let g:tmuxline_powerline_separators = 0
        let g:tmuxline_preset = 'minimal'
        let g:tmuxline_theme = 'lightline'
        let g:tmuxline_preset = 'nightly_fox'
        " custom preset with shell commands
        let g:tmuxline_preset = {
                                \'a'    : '#S',
                                \'c'    : ['#(whoami)', '#(uptime  | cut -d " " -f 1,2,3)'],
                                \'win'  : ['#I', '#W'],
                                \'cwin' : ['#I', '#W', '#F'],
                                \'x'    : '#(date)',
                                \'y'    : ['%R', '%a', '%Y'],
                                \'z'    : '#H'}
"++AAA++++++++++++++++++}}}
"++AAA++#TREE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        Plug 'zgpio/tree.nvim/'
        "----------------------------------------------------------------------------------
        Plug 'scrooloose/nerdtree'
        "----------------------------------------------------------------------------------
        Plug 'Xuyuanp/nerdtree-git-plugin'
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
                "--------------------------------------------------
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
                "--------------------------------------------------
                 let g:NERDDefaultAlign = 'left'
                 let g:NERDTrimTrailingWhitespace = 1
                "--------------------------------------------------
                 function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
                         exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
                         exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
                 endfunction
        "----------------------------------------------------------------------------------
        Plug 'ivalkeen/nerdtree-execute'
        Plug 'Linfee/nerdtree-open'
        "==================================================================================
        " Plug 'francoiscabrol/ranger.vim'
        "==================================================================================
        Plug 'vifm/neovim-vifm'
                let $MYVIFMRC='~/.config/vifm/vifmrc'
                let g:vifmSplitWidth = 88
        "==================================================================================
        " Plug 'justinmk/vim-dirvish'
"++bbb++++++++++++++ETREE++++}}}
"++AAA++#TAB++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        "===[OK]======[EasyAlign]====[#SMART]==============================================
        "==================================================================================
        Plug 'junegunn/vim-easy-align'
        " Start interactive EasyAlign for a motion/text object (e.g. gaip)
        " nmap ga <Plug>(EasyAlign)
        "---------------------------------------------
        Plug 'godlygeek/tabular'
        " :Tabularize /,/r1c1l0
        " abc,def,ghi
        " a,b
        " a,b,c
        " abc , def, ghi
        "   a , b
        "   a , b  ,  c
        "----------------------------------------------------------------------------------
        Plug 'dhruvasagar/vim-table-mode'
        "-----------------------------------------------
        " Use this option to disable the plugin: 1
        " let g:loaded_table_mode = 0
        "-----------------------------------------------
        let g:table_mode_auto_align = 1
        let g:table_mode_corner_corner='+'
        let g:table_mode_header_fillchar='='
        let g:table_mode_align_char = ':'
        let g:table_mode_delete_row_map = '<M-d>'
        let g:table_mode_delete_column_map = '<M-c>'
        let g:table_mode_add_formula_map = '<M-f>'
        let g:table_mode_eval_formula_map = '<M-e>'
        let g:table_mode_cell_text_object_i_map = '<M-i>'
        let g:table_mode_sort_map = '<M-s>'
        "-----------------------------------------------
        " :TableModeToggle
        "-----------------------------------------------
        " +-------+---------+--------+
        " | hallo | albert  | montag |
        " +=======+=========+========+
        " | isr   | student | id     |
        " +-------+---------+--------+
"++bbb++++++++++++++++ETAB+++++++}}}
"++AAA++#BOOKMARK++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'MattesGroeger/vim-bookmarks'
                let g:bookmark_no_default_key_mappings = 1
                function! BookmarkMapKeys()
                        nmap mm :BookmarkToggle<CR>
                        nmap ma :BookmarkShowAll<CR>
                        nmap mi :BookmarkAnnotate<CR>
                        nmap mn :BookmarkNext<CR>
                        nmap mp :BookmarkPrev<CR>
                        nmap mc :BookmarkClear<CR>
                        nmap mx :BookmarkClearAll<CR>
                        nmap mkk :BookmarkMoveUp
                        nmap mjj :BookmarkMoveDown
                endfunction
                "------------------------------------------------------
                highlight BookmarkSign ctermbg=10 ctermfg=1 guifg=#cc1122 guibg=#FF5F00
                highlight BookmarkLine ctermbg=10 ctermfg=1 guibg=#ff5f00 guifg=#000088
                highlight BookmarkAnnotationLine ctermbg=9 ctermfg=1
                highlight BookmarkAnnotationSign ctermbg=9 ctermfg=1
                "------------------------------------------------------
                let g:bookmark_auto_close = 1
                let g:bookmark_highlight_lines = 1
                let g:bookmark_show_warning = 0
                let g:bookmark_show_toggle_warning = 0
                let g:bookmark_sign ='BM'
                let g:bookmark_highlight_lines = 1
                let g:bookmark_save_per_working_dir = 1
                let g:bookmark_auto_save = 1
                let g:bookmark_save_per_working_dir = 1
                "------------------------------------------------------
                "let g:bookmark_manage_per_buffer = 1`
                "let g:bookmark_auto_save_file = '/bookmarks'`
"++bbb+++++++++++++++++++++}}}

        Plug 'vim-scripts/spreadsheet.vim'
        " It provides three main functions:
        " Get("cell")
        " Set("cell", "value")
        " Calculate("operation")
"++AAA++#REPL++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'jalvesaq/Nvim-R'
        ",rf start
        ",l
        ":RStop
        "----------------------------------------------------------------------------------
        "---:T---:Tnew---:Topen---:TREPL--#REPL--------------------------------------------
        "----------------------------------------------------------------------------------
        Plug 'kassio/neoterm'
                au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
                au VimEnter,BufRead,BufNewFile *.idr set filetype=idris
                au VimEnter,BufRead,BufNewFile *.lidr set filetype=lidris
                au VimEnter,BufRead,BufNewFile *.lfe, set filetype=lfe
        ":vertical :Tnew
        ":TREPLSendLine
        "----------------------------------------------------------------------------------

        Plug 'jalvesaq/vimcmdline'
                let cmdline_vsplit      = 1      " Split the window vertically
                let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
                let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
                let cmdline_term_height = 15     " Initial height of interpreter window or pane
                let cmdline_term_width  = 80     " Initial width of interpreter window or pane

                let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
                let cmdline_outhl       = 1      " Syntax highlight the output
                let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)

                let cmdline_app         = {}
                let cmdline_app['python'] = 'python2'
                let cmdline_app['php']   = 'php'
                let cmdline_app['vim']   = 'vim'
                let cmdline_app['ruby']   = 'irb'
                let cmdline_app['sh']     = 'bash'
                let cmdline_app['octave'] = 'octave-cli'
                let cmdline_app['maxima'] = 'maxima-sage'
                if has('gui_running') || &termguicolors
                        let cmdline_color_input    = '#9e9e9e'
                        let cmdline_color_normal   = '#00afff'
                endif
                let cmdline_color_input    = '#9e9e9e'
                let cmdline_color_normal   = '#00afff'
                let cmdline_color_number   = '#00ffff'
                let cmdline_color_integer  = '#00ffff'
                let cmdline_color_float    = '#00ffff'
                let cmdline_color_complex  = '#00ffff'
                let cmdline_color_negnum   = '#d7afff'
                let cmdline_color_negfloat = '#d7afff'
                let cmdline_color_date     = '#00d7af'
                let cmdline_color_true     = '#5fd787'
                let cmdline_color_false    = '#ff5f5f'
                let cmdline_color_inf      = '#00afff'
                let cmdline_color_constant = '#5fafff'
                let cmdline_color_string   = '#5fd7af'
                let cmdline_color_stderr   = '#0087ff'
                let cmdline_color_error    = '#ff0000'
                let cmdline_color_warn     = '#c0ffff'
                let cmdline_color_index    = '#d7d787'

        " - `<LocalLeader>s` to start the interpreter.
        " - `<Space>` to send the current line to the interpreter.
        " - `<LocalLeader><Space>` to send the current line to the interpreter
        " - `<LocalLeader>q` to send the quit command to the interpreter.
        " For languages that can source chunks of code:
        " - In Visual mode, press:
        " - `<Space>` to send a selection of text to the interpreter.
        " - And, in Normal mode, press:
        " - `<LocalLeader>p` to send from the line to the end of paragraph.
        " - `<LocalLeader>b` to send block of code between the two closest marks.
        " - `<LocalLeader>f` to send the entire file to the interpreter.

"++bbb++++++++++++++++EREPL+++}}}
"++AAA++#ECHODOC+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'Shougo/echodoc.vim'
                set cmdheight=2
                " set noshowmode
                let g:echodoc_enable_at_startup = 1
                let g:echodoc#type = 'virtual'
                let g:echodoc#type = 'echo'
                " let g:echodoc#type = 'floating'
                " - change Pmenu to your highlight group
                " highlight link EchoDocFloat Pmenu
"++bbb+++++++++++++++++++++++}}}
"++AAA++#DICTPLUG+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "--china-------------------------------------
        " Plug 'voldikss/vim-hello-word'
        "=================================================================================
        Plug 'voldikss/vim-translate-me'
        "=================================================================================
        Plug 'iamcco/dict.vim'
                let g:api_key = "1932136763"
                let g:keyfrom = "aioiyuuko"
        "=================================================================================
        Plug 'ron89/thesaurus_query.vim'
        let g:tq_mthesaur_file="/home/red/git/bTest/sPot/DYCT/mthesaurGu.txt"
        "----------------------------------------------------------------------------------
        " Plug 'vigoux/LanguageTool.nvim'
        " let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'
        " hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        " hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none
        "----------------------------------------------------------------------------------
        " *vim-grammarous* is a powerful grammar checker for Vim.  Simply do
        " |:GrammarousCheck| to see the powerful checking. This plugin automatically
        " downloads LanguageTool, which requires Java 8+.
        " Plug 'rhysd/vim-grammarous'
        "----------------------------------------------------------------------------------
        " Plug 'xerron/wordbyword.vim'
        "----------------------------------------------------------------------------------
"++bbb+++++++++++++++++++}}}
"++AAA++#JSPLUG+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
        " Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
        "- Javascript Bundle
        Plug 'pangloss/vim-javascript', {'for': 'javascript'}
        Plug 'othree/yajs.vim', {'for': 'javascript'}
        " Plug 'posva/vim-vue', {'for': 'vue'}
        Plug 'heavenshell/vim-jsdoc'
        Plug 'udalov/kotlin-vim'
        Plug 'Shadowsith/kotlincomplete.vim'
        " Plug 'artur-shaik/vim-javacomplete2'
"++bbb++++++++++++++++++++++++++++}}}
"++AAA++#PYYPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "**********************************************************************************
        Plug 'hynek/vim-python-pep8-indent'
        Plug 'nvie/vim-flake8'
        Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
        "==================================================================================
        " Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        "==================================================================================
        " Plug 'vim-python/python-syntax'
        " let python_highlight_all = 1
        " :Python2Syntax
        " :Python3Syntax
        "===TODO===========================================================================
        " Plug 'SkyLeach/pudb.vim'
        " if has('nvim')
        "         let g:python_host_prog='~/.virtualenvs/neovim2/bin/python'
        "         let g:python3_host_prog='~/.virtualenvs/neovim3/bin/python'
        "         - set the virtual env python used to launch the debugger
        "         let g:pudb_python='~/.virtualenvs/poweruser_tools/bin/python'
        "         - set the entry point (script) to use for pudb
        "         let g:pudb_entry_point='~/src/poweruser_tools/test/test_templates.py'
        "         - Unicode symbols work fine (nvim, iterm, tmux, nyovim tested)
        "         let g:pudb_breakpoint_symbol='BP'
        " endif
        "--------------------TODO----------------------------------------------------------
        " Plug 'google/vim-coverage'
        "----------------------------------------------------------------------------------
        " Plug 'junegunn/vader.vim'
        "=============================[Pyy]================================================
        " Plug 'metakirby5/codi.vim'
        "==================================================================================
        " Plug 'alfredodeza/pytest.vim'
        "==================================================================================
        " Plug 'janko-m/vim-test'
        "         let test#strategy = 'neoterm'
        "         let test#strategy = "dispatch"
        " let test#python#runner = 'pytest'
        " Runners available are 'pytest', 'nose', 'nose2', 'djangotest', 'djangonose'
        " and Python's built-in 'unittest'
        " Plug 'jacobsimpson/nvim-example-python-plugin'
        "----------------------------------------------------------------------------------
        " Plug 'roxma/python-support.nvim'
        "         let g:python_support_python2_require = 0
        "         let g:python_support_python3_require = 0
"++bbb++++++++++++++++++++EPYY++++}}}
"++AAA++#PROJECT++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "============[#NEXT]========#NextBigThig===========================================
        "----------------------------------------------------------------------------------
        Plug 'tpope/vim-projectionist'
        "---------------------------------
        " Plug 'amiorin/vim-project'
        "----#CtrlSF------------------------------------------------------------------------------
        Plug 'dyng/ctrlsf.vim'
        "----------------------------------------------------------------------------------
        "========[#NEXT]=======#NextBigThig2===============================================
        "----------------------------------------------------------------------------------
        Plug 'tpope/vim-apathy'
        Plug 'tpope/vim-scriptease'
        Plug 'tpope/vim-classpath'
        "--------[#NEXT]---#MAKE-------------------------------------
        " Plug 'tpope/vim-dispatch'
        " let g:dispatch_compilers = {
        "                         \ 'latex': 'tex',
        "                         \ 'bundle exec': ''}
"++bbb+++++++++++++++++++++++++++++++++++++++++++}}}
"++AAA++#NORUN+++#RUN+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'Shougo/neomru.vim'
        "----------------------------------------------------------------------------------
        "-TODO Plug 'neomake/neomake'
        "----------------------------------------------------------------------------------
        "Plug 'sollidsnake/verun'
        "Plug '5long/pytest-vim-compiler'
        "Plug 'reinh/vim-makegreen'
        "-------------------------------???------------------------------------------------
        "Plug 'nielsmadan/venom'
        "Plug 'nielsmadan/mercury'
        "Plug 'nielsmadan/yankee'
        "---------------------------------------------------------------------------------
"++bbb++++++++++++++++++++++}}}
"++AAA++#FMT++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'sbdchd/neoformat'
                " :Neoformat jsbeautify
                " :Neoformat! python yapf
                " augroup fmt
                " autocmd!
                " autocmd BufWritePre * undojoin | Neoformat
                " augroup END
        "==================================================================================
        Plug 'google/vim-maktaba'
        "--- configuration of maktaba plugins.
        Plug 'google/vim-glaive'
                let g:myplugin_enablefeature = 1
                let g:myplugin_defaultdir = $HOME
                let g:myplugin_weirdmode = 'm'
        "==================================================================================
        Plug 'google/vim-syncopate'
        Plug 'google/vim-codefmt'
        Plug 'sheerun/vim-polyglot'
"++bbb++++++++++++++++EFMT++++}}}
"++AAA++#DOCPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "-222------------------------------------------------------------------------------
        Plug 'gastonsimone/vim-dokumentary/'
                "-=KKK=-
                "let g:dokumentary_docprgs = {'c': 'cdoc {0}', 'python': ''}
                let g:dokumentary_docprgs = {'c': 'cdoc {0}'}
        " echo g:dokumentary_docprgs["c"]
        " echo g:dokumentary_docprgs["python"]
        " apt-get install dictd dict-gcide dict
        "==================================================================================
        Plug 'KabbAmine/zeavim.vim'
        "==================================================================================
        Plug 'fs111/pydoc.vim', {'external_commands': ['pydoc']}
        let g:ref_pydoc_cmd = 'pydoc'
        let g:ref_pydoc_complete_head = 1
        " let g:pydoc_cmd = 'python -m pydoc'
        " let g:pydoc_open_cmd = 'vsplit'
        " - If you want pydoc to switch to an already open tab with pydoc page,
        " let g:pydoc_use_drop=1
        " let g:pydoc_window_lines=15
        " - let g:pydoc_window_lines=0.5
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        " - let g:pydoc_highlight=0
"++bbb++++++++++++++++++++++++++++++++++}}}
"++AAA++#ALEPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'w0rp/ale'
        " let g:ale_sign_column_always = 0
        " let g:ale_emit_conflict_warnings = 0
        " let g:ale_lint_on_text_changed = 'never'
        " let g:ale_set_loclist = 0
        " let g:ale_set_quickfix = 1
        " let g:ale_set_signs = 1
        " highlight link ALEWarningSign customGleich
        " highlight link ALEErrorSign customDP
        " highlight link ALEVirtualTextWarning customYR
        " highlight link ALEVirtualTextInfo customYB
        " highlight link ALEVirtualTextError customPi
        " nnoremap <silent> <F9> :ALEHover<CR>
        " nnoremap <silent> gd :ALEGoToDefinition<CR>
"++bbb+++++++++++++++++++++++++++++++++++EALE+++++}}}
"**AAA**#DEOPLUG**#TITAN********************************************************************************************{{{
        "----------------------------------------------------------------------------------
        "-Plug 'cwfoo/vim-text-omnicomplete'
        "----------------------------------------------------------------------------------
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        Plug 'zchee/deoplete-clang'
        "=================================================================================
        Plug 'autozimu/LanguageClient-neovim', {
                                \ 'branch': 'next',
                                \ 'do': 'bash install.sh',
                                \ }
        "=================================================================================
        let g:LanguageClient_autoStart = 1
        " let g:LanguageClient_autoStop=1
        " let g:LanguageClient_hoverPreview="Never"
        let g:LanguageClient_hoverPreview="Always"
        let g:LanguageClient_useFloatingHover=1
        let g:LanguageClient_serverCommands = {
                                \ 'python': ['/usr/local/bin/pyls'],
                                \ }
        let g:LanguageClient_windowLogMessageLevel ='Error'
        let g:LanguageClient_diagnosticsEnable = 1
        "=================================================================================
"**bbb************************}}}
"++AAA++#Coc++#Vista+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'liuchengxu/vista.vim'
        " let g:vista_fzf_preview = ['right:50%']
        " let g:vista#renderer#icons = {
        "                         \   "function": "\uf794",
        "                         \   "variable": "\uf71b",
        "                         \  }
        " " let g:vista#executive#ctags#support_json_format = 1
        " let g:vista#executives = ['coc', 'ctags', 'lcn', 'vim_lsp']
        " let g:vista#executives = ['ale', 'coc', 'ctags', 'lcn', 'vim_lsp']
        " let g:vista_executive_for = {'php': 'coc', 'java': 'coc', 'typescript': 'coc', 'go': 'coc', 'c': 'coc', 'javascript': 'coc', 'html': 'coc', 'rust': 'coc', 'cpp': 'coc', 'css': 'coc', 'python': 'coc'}
        " let g:vista_icon_indent = ['╰─🞂 ', '├─🞂 ']
        " let g:vista_default_executive = 'ctags'
        " let g:vista_fzf_preview = ['right:50%']
        " let g:vista#renderer#enable_icon = 1
        " " By default vista.vim never run if you don't call it explicitly.
        " " If you want to show the nearest function in your statusline automatically,
        " autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
        ":::IRENE::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-jedi', {'do': 'yarn install'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++bbb++++++++++++++++++++++++ECOC++++++}}}
"++AAA++#WWWPLUG+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "===REST===========================================================================
        "send css js to browser !!!
        ":BLReloadPage
        Plug 'jaxbot/browserlink.vim'
        "==================================================================================
        " Plug 'tyru/open-browser.vim'
                " let g:netrw_nogx = 1
                " vmap gx <Plug>(openbrowser-smart-search)
                " nmap gx <Plug>(openbrowser-search)
        "==================================================================================
        Plug 'waiting-for-dev/vim-www'
                let g:www_launch_browser_command = "firefox {{URL}} &"
                ":Wopen opens any given URL. E.g.:
                ":Wsearch google how to learn vim
                let g:www_urls = {
                                \ 'vim' : 'http://www.vim.org',
                                \ }
                let g:www_default_search_engine = 'google'

"++AAA+#Utl++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------TODO------------------------------------------------------------
        Plug 'vim-scripts/utl.vim'
        " [ open with \o ] open: URL, preview doc: markdown, TeX, etc.
        ":Utl to open links, files.
        nnoremap <leader>o :Utl<CR>
        " nnoremap ;o :Utl<CR>
        " Syntax: no need to escape 'spaces'.
        " use '' contain filename(url) strings. e.g. = ":silent !evince '%p' &"
        " <url:#r=here> id=here | <url:tn=some text> <url:filename.txt#line=-10>
        " <url:fo obar.pdf> | <url:.t/emp> folder |
        " <url:../plugin/utl.vim#tn=text>
        " <url:file:///home/stb/.vim/plugin/utl.vim>
        " <url:http://www.google.ocm> www.vm.oigr
        " <url:man:ls> || <urlc:onfig:>
        " download from [1] || [1] www.google.com
        " It brings the benefits of URL-based hyperlinking to plain text,
        " extending the URL syntax for plain text needs.
        let g:utl_opt_verbose=0 " 0=no (default), 1=yes
        let g:utl_opt_highlight_urls='yes' " 'yes' is default / 'no'

        " HTTP
        " %u, %p for Unix, %P for Windows.
        if !exists("g:utl_cfg_hdl_scm_http_system")
                if has("unix")
                        " let g:utl_cfg_hdl_scm_http_system = 'silent !xdg-open %u' " for ubuntu system
                        "let g:utl_cfg_hdl_scm_http_system = "!xterm -e lynx '%u#%f'" "	console browser
                        " if browser is GUI, don't use "silent" => "silent !browser", will crash terminal vim screen
                        " Check if an instance is already running, and if yes use it, else start firefox.
                        " let g:utl_cfg_hdl_scm_http_system = "silent !firefox -remote 'ping()' && firefox -remote 'openURL( %u )' || firefox '%u#%f' &"
                        " use lightweight browser like : luakit, jumanji, urbl etc.
                        let g:utl_cfg_hdl_scm_http_system = "!firefox '%u#%f' &"
                endif
                let g:utl_cfg_hdl_scm_http=g:utl_cfg_hdl_scm_http_system
        endif
        " http wget:
        let g:utl_cfg_hdl_scm_http__wget="call Utl_if_hdl_scm_http__wget('%u')"
        " scp
        if !exists("g:utl_cfg_hdl_scm_scp")
                let g:utl_cfg_hdl_scm_scp = "silent %d %u"
        endif
        " mailto:
        if !exists("g:utl_cfg_hdl_scm_mailto")
                let g:utl_cfg_hdl_scm_mailto = "!urxvt -e mutt '%u'"
        endif
        " generic
        if !exists("g:utl_cfg_hdl_mt_generic")
                if has("unix")
                        if $WINDOWMANAGER =~? 'kde'
                                let g:utl_cfg_hdl_mt_generic = 'silent !konqueror "%p" &'
                        else
                                let g:utl_cfg_hdl_mt_generic = 'silent !urxvt -e sh -c ranger "%p"'
                        endif
                endif
        endif
        " directory
        let g:utl_cfg_hdl_mt_text_directory__cmd = ':!urxvt -e sh -c ranger "%p"'
        let g:utl_cfg_hdl_mt_text_directory__vim = 'VIM'   " Vim builtin file explorer
        " let g:utl_cfg_hdl_mt_text_directory='VIM'
        " let g:utl_cfg_hdl_mt_text_directory = ':silent !nautilus "%p" &'
        let g:utl_cfg_hdl_mt_text_directory=g:utl_cfg_hdl_mt_text_directory__cmd
        " application/pdf
        let g:utl_cfg_hdl_mt_application_pdf = ":silent !evince '%p' &"
        " TODO application/djvu
        let g:utl_cfg_hdl_mt_application_djvu = ":silent !evince '%p' &"
        " application/chm
        " let g:utl_cfg_hdl_mt_application_chm = ":silent !chmsee '%p' &"
        " application/doc
        let g:utl_cfg_hdl_mt_application_msword = ":silent !libreoffice '%p' &"
        " - Open any URLs found in text with appropriate handler
        " - Open files of any media type from within Vim (.pdf, .jpg, etc)
        " - Small helper utilities via embedded Vimscript
        " - Project management
        " - Organizing ideas
        " - Commenting source code
        " - Personal Wiki
        " - Editing HTML
        " - Bookmark files, directories, URLs
        "---------------------------------------------------------------------------------
"++AAA++++++++++++++++++++eUTL+++++++++}}}
        "=================================================================================
        Plug 'machakann/vim-swap'
        let g:swap_no_default_key_mappings = 1
        "--------------------???---FuncArgsSwap-------------------------------------------
        " <--,a -,b -->
        " function tofu(a1, a3, a2, a4, a5)
        nmap ,a <Plug>(swap-prev)
        nmap ,b <Plug>(swap-next)
        " Plug 'dstein64/vim-startuptime'
        "===========Venus============================
        " Plug 'sjl/splice.vim'
        " Plug 'sjl/clam.vim'
        " Plug 'vim-scripts/taglist.vim'
        " Plug 'klen/rope-vim'
        "---------------------------------------------
        " Plug 'tpope/vim-endwise'
        Plug 'kovisoft/slimv'
        Plug 'baruchel/vim-notebook'
        "-------------Maxima-------------------------------------
        " let g:notebook_cmd='stdbuf -i0 -o0 -e0 /usr/bin/maxima'
        " \ . ' --disable-readline --very-quiet'
        " let g:notebook_stop="quit();"
        " let g:notebook_send0="\;"
        " let g:notebook_send='print(\"VIMMAXIMANOTEBOOK\")\$'
        " let g:notebook_detect='VIMMAXIMANOTEBOOK '
        "---------------------------------------------
        let g:notebook_cmd='octave'
        let g:notebook_stop='exit'
        let g:notebook_send='printf \"VIMOCTAVENOTEBOOK\n\"'
        let g:notebook_detect='VIMOCTAVENOTEBOOK'
        let g:notebook_send0=""
        let g:notebook_shell_internal = '/bin/bash'
        "=======================================

        " Plug 'tmsvg/pear-tree'
        Plug 'dohsimpson/vim-macroeditor'
"++bbb+++++++++++++++++++++++++}}}
call plug#end()
"=eHapyEnd=
"++AAA++#LLINE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        set laststatus=2
        set statusline=%{StatusWindowNr()}
        set statusline+=%([\%R%M]\ %)
        set statusline+=%<%f
        set statusline+=%(\ %y%)
        set statusline+=%=
        set statusline+=%([git:%{StatusGitBranch()}]%)
        set statusline+=%4(%p%%%)
        "==================================================================================
        autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
        "==================================================================================
        let g:lightline                  = {}
        let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
        "==================================================================================
        let g:lightline = {
                                \ 'colorscheme': 'tender',
                                \ 'enable': {
                                \   'statusline': 1,
                                \   'tabline': 0,
                                \ },
                                \ 'active': {
                                \   'left': [ [ 'mode', 'paste' ],
                                \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                                \ },
                                \ 'inactive': {
                                \   'left': [
                                \       [ 'filename' ],
                                \       [ ],
                                \   ]
                                \ },
                                \ 'mode_map': {
                                \ 'n' : 'N20',
                                \ 'i' : 'INSERT',
                                \ 'R' : 'REPLACE',
                                \ 'v' : 'VISUAL',
                                \ 'V' : 'V-LINE',
                                \ "\<C-v>": 'V-BLOCK',
                                \ 'c' : 'COMMAND',
                                \ 's' : 'SELECT',
                                \ 'S' : 'S-LINE',
                                \ "\<C-s>": 'S-BLOCK',
                                \ 't': 'TERMINAL',
                                \ },
                                \ 'component_function': {
                                \   'gitbranch': 'fugitive#head'
                                \ },
                                \ 'separator': { 'left': 'L', 'right': 'R' },
                                \ 'subseparator': { 'left': '|', 'right': '|' }
                                \ }
"++bbb++++++++++++ELLINE+++}}}
"++AAA++#SOURCE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"
        "==========================================================================================
        if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
                let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
        else
                let entry_format .= '. entry_path'
        endif
        "==============================================
        source ~/git/bTest/sPot/s9legoFunc.vim
        source ~/git/bTest/sPot/SYPLUG/fliplr.vim
        source ~/git/bTest/sPot/SYPLUG/increment.vim
        "==============================================
"++bbb+++++++++++++++}}}
"++AAA++#WILD++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        set wildmenu
        "black-List
        set wildmode=list:longest
        "blackGreen-List
        set wildmode=list:full
        "==================================================================================
        set wildignore+=*.pdf,*.swp,*.[ao],*~,*.db
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
"++bbb+++++++++++++++}}}
"++AAA++#WRAP++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
                nnoremap <M-c>  :call WrapWordWith()<CR>
                " nnoremap <M-b>  :call BoxIt()<CR>
                " vnoremap <M-b>  :call BoxIt()<CR>
                " '<,'>Tabularize /"
                " '<,'>EasyAlign=
                " '<,'>EasyAlign 3 \
        "---[#SMART]---------[MySANDWICH]--------------------------------------------------
                vmap ss "zdi sympy.pprint(<c-r>z)<esc>
                vmap sp "zdi print(<c-r>z)<esc>
                vmap st "zdi<b><c-r>z</b><esc>
                vmap sh "zdi<?= <c-r>z ?><esc>
        "----------------------------------------------------------------------------------
"++bbb++}}}
"++AAA++#NMODE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        noremap ' `
        noremap ` '
        "------------------------------------------------------
        nnoremap <Leader>0 :set number!<return>
        "------------------------------------------------------
        nmap <Leader>gs :Gstatus<CR>gg<c-n>
        nmap <Leader>gd :Gdiff<CR>
        "------------------------------------------------------
        nmap <leader>2 :%s/\<<C-r><C-w>\>//g<Left><Left>
        "------------------------------------------------------
        " vnoremap <leader>5 "vy:%s/<C-r>v//g<Left><Left>
        "==========================================================================================
        "==================V-SEL======================
        nnoremap vv <S-v>
        "=============================================
        nnoremap zp <Plug>yankstack_substitute_older_paste
        nnoremap zn <Plug>yankstack_substitute_newer_paste
        "==========================================================================================
        "Join-Line
        nnoremap H mzJ`z
        "--------------------------------------------------------------------------
        nnoremap  <Esc><Esc> :<C-u>set nopaste<CR>:nohlsearch<CR>
        "==========================================================================================
        "---Reselect-last-pasted txt------x-y-z---------------------------------------------------
        "==========================================================================================
        nnoremap gv `[v`]
        nnoremap <M-w> viw
        nnoremap <M-v> vip
        nnoremap <M-i> vii
        nnoremap <M-\> vib
        " nnoremap <M-\> vip
        "==========================================================================================
        "-Enter-New-Line
        nnoremap <cr> o<esc>
        "==========================================================================================
        "-Go to the first non-blank character of the line after paragraph motions
        noremap } }^
        nnoremap > v>
        nnoremap < v<
        vnoremap < <gv
        vnoremap > >gv
        "==========================================================================================
        "-Allow using the repeat operator with a visual selection (!)
        vnoremap . :normal .<CR>
        "==========================================================================================
        " gi already moves to :last place you exited insert mode!, so we'll map gI to
        nnoremap g' `.
        "==========================================================================================
        nnoremap <BS> X
        noremap j gj
        noremap k gk
        noremap gj j
        noremap gk k
        "==========================================================================================
        nnoremap Y y$
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
        nmap <Leader>d <Plug>DictSearch
        nmap <Leader>t :!goldendict <C-r><C-w><CR>
        nmap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
        "==========================================================================================
        "vnoremap <unique> <Leader>x "ky:ThesaurusQueryReplace <C-r>k<CR>
        "==========================================================================================
        " nmap <Leader>s <Plug>(textobj-diff-hunk-n)
        "==========================================================================================
        "---PlusMinus------------------------------------------------------------------------------
        " nnoremap ( <c-x>:y x\|@x<cr>
        " nnoremap ) <c-a>:y x\|@x<cr>
        "==========================================================================================
        "===Control-] pop open a window and show the tag there.====================================
        "==========================================================================================
        nnoremap <M-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

        "==========================================================================================
        "*********************************#TODO****************************************************
        " Pressing ,ss will toggle and untoggle spell checking
        nnoremap <leader>ss :setlocal spell!<cr>
        nnoremap <leader>sn ]s
        nnoremap <leader>sp [s
        nnoremap <leader>sa zg
        nnoremap <leader>s? z=

        "******************************************************************************************
        "================================[#Ulti]===================================================
        "******************************************************************************************
        let g:UltiSnipsSnippetDirectories = ['~/git/bTest/sPot/MUltiSnips']
        """""""""""""""""""""""""""""""""
        " hallo meine [#SMART] ulti-box "
        """""""""""""""""""""""""""""""""
        let g:UltiSnipsListSnippets ="<c-q>"
        let g:UltiSnipsExpandTrigger="<C-b>"
        let g:UltiSnipsJumpForwardTrigger="<C-b>"
        let g:UltiSnipsJumpBackwardTrigger="<C-k>"
        "---------------------------------------------
        nnoremap <leader>e :UltiSnipsEdit<CR>
        "==========================================================================================
        "=====www.web.de========================================
        "===vim-ww===
        nnoremap ;o :Wopen <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        nnoremap ,o :Wsearch <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        "========================#Unfuc=============================================
        nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
        nnoremap zu :<c-u>update<cr>
"++bbb++++++++++++NNN+++}}}
"++AAA++#IMODE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        "-Smart Enter
        inoremap <silent><expr> <CR> (pumvisible() && bufname('%') !=# '[Command Line]' ? "\<C-e>\<CR>" : "\<C-g>u\<CR>")
        "==================================================================================
        imap <M-l> <plug>(fzf-complete-line)
        imap <M-9> <plug>(fzf-complete-line)
        imap <expr><M-w> fzf#vim#complete#word({'left': '20%'})
        imap <expr><M-0> fzf#vim#complete#word({'right': '20%'})
        "==================================================================================
        silent! set complete& completeopt=menu infercase noshowfulltag
        "==================================================================================
        " set completeopt+=preview
        " set completeopt=menuone,menu,longest,preview
        " setlocal completefunc=thesaurus_query#auto_complete_integrate
        "==================================================================================
        set complete=.,w,b,k,t,i,u,kspell
        "====================================[VimOmni]===================================
        inoremap <silent> <C-v> <C-x><C-v>
        " inoremap <silent> <C-o> <C-x><C-o>
        inoremap <silent> <C-]> <C-x><C-]>
        inoremap <silent> <C-d> <C-x><C-d>
        inoremap <silent> <C-f> <C-x><C-f>
        inoremap <silent> <C-k> <C-x><C-k>
        inoremap <silent> <C-u> <C-x><C-u>
        " inoremap <silent> <C-l> <C-x><C-l>

        "==================================================================================
        "*********************#TODO**FZFDICT**???**********************************************************
        " inoremap <expr> <c-x><c-t> fzf#complete('tmuxwords.rb --all-but-current --scroll 500 --min 5')
        "**************************************************************************************************
        "----------------------------------------------------------------------------------
        inoremap <C-a> <C-o>^
        inoremap <C-e> <End>
        "-----------------------------------------------------------------
        inoremap <M-j> <C-X><C-E>
        inoremap <M-k> <C-X><C-Y>
        "==================================================================================
        "------------------------------------------
        " Insert ending characters
        function! InsertAtEnd(char)
                let line = getline('.')
                if line =~ a:char . '$'
                        return "\<Right>\<Left>"
                else
                        let extra = ''
                        if AtEnd()
                                let extra = "\<Right>"
                        endif
                        if line =~ ';\s*$'
                                return "\<C-o>mk\<End>\<Left>i" . a:char . "\<C-o>`ki" . extra
                        else
                                return "\<C-o>mk\<End>i" . a:char . "\<C-o>`ki" . extra
                        endif
                endif
        endfunction
        "------------------------------------------
        function! AtEnd()
                return col('$') == col('.')
        endfunction
        "------------------------------------------
        inoremap <M-;> <C-R>=InsertAtEnd(';')<CR>
        inoremap <M-,> <C-R>=InsertAtEnd(',')<CR>
        " inoremap <M-/> <C-R>=InsertAtEnd('/')<CR>
        " inoremap <M-SPACE> <C-R>=InsertAtEnd(' ')<CR>
        "------------------------------------------
        inoremap <M-d> <C-o>cb<Esc><Right>
        inoremap <C-d> <C-o>cw<Esc><Right>
        " inoremap <C-U> <C-G>u<C-U>
        "------------------------------------------

"++bbb++++++++++++III++++++}}}
"++AAA++#VMODE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "=======[#BEST]===[#TObj]===[#SMART]=======
        vmap v <Plug>(expand_region_expand)
        vmap <c-v> <Plug>(expand_region_shrink)
        "=============================================
        vnoremap <Tab> >gv
        vnoremap <Backspace> <gv
        "=============================================
        vmap <M-c> :w !cat >> ./zbuf<CR>
        "=============================================
        "---------------------------------------------
        nmap hp <Plug>(GitGutterPreviewHunk)
        nmap hs <Plug>(GitGutterStageHunk)
        nmap hu <Plug>(GitGutterUndoHunk)
        "---------------------------------------------
                vmap     dg  :diffget<CR>
                vmap     dp  :diffput<CR>
                nnoremap do  :diffoff!<cr>
        "=============================================
        " START INTERACTIVE EASYALIGN IN VISUAL MODE (E.G. VIPGA)
        xmap ga <Plug>(EasyAlign)
        "=============================================
"++bbb+++++++++++++VVV++++}}}
"++AAA++#CMODE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        "==========================================================================================
        " start of line
        :cnoremap <C-A>		<Home>
        " back one character
        :cnoremap <C-B>		<Left>
        " delete character under cursor
        :cnoremap <C-D>		<Del>
        " end of line
        :cnoremap <C-E>		<End>
        " forward one character
        :cnoremap <C-F>		<Right>
        " recall newer command-line
        :cnoremap <C-N>		<Down>
        " recall previous (older) command-line
        :cnoremap <C-P>		<Up>
        " back one word
        :cnoremap <Esc><C-B>	<S-Left>
        " forward one word
        :cnoremap <Esc><C-F>	<S-Right>
        "==========================================================================================
        " [#EXEC][!!-ExecLine] Transport Down Ex:
        "==========================================================================================
        nnoremap ,w :<C-r>=expand("<cword>")<CR>
        nnoremap ;w :<C-r>=getline(".")<CR>
        "==========================================================================================
        "-For when you forget to sudo.. Really Write the file.
        cmap w!! w !sudo tee % >/dev/null
        "==========================================================================================
        function Inci(...)
                let result = g:i
                let g:i += a:0 > 0 ? a:1 : 1
                return result
        endfunction
        " Suppose you want to replace each occurrence of abc with xyz_N
        " where N is an ascending number (xyz_1, xyz_2, xyz_3, and so on).
        " let i = 1 | %s/AAA/\='BBB-' . Inci() .'CCC'/g
        "==========================================================================================
        "::::::::::::::::::::::::::::-REPL-Space??:::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        let cmdline_map_start          = '<LocalLeader>s'
        let cmdline_map_send           = '<Space>'
        let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
        let cmdline_map_source_fun     = '<LocalLeader>f'
        let cmdline_map_send_paragraph = '<LocalLeader>p'
        let cmdline_map_send_block     = '<LocalLeader>b'
        let cmdline_map_quit           = '<LocalLeader>q'
"++bbb+++++++++++++CCC+++++}}}
"++AAA++#NAVI++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        nnoremap <c-o> <c-o>zz
        nnoremap <c-i> <c-i>zz
        "------------------------
        nmap  n nzz
        nmap  N Nzz
        nmap  g* g*zz
        nmap  g# g#zz
        "------------------------
        nnoremap <tab>     :bn<cr>
        nnoremap <s-tab>   :bp<cr>
        "------------------------
        nnoremap ZZ <Nop>
        nnoremap ZZ mzzt1<c-u>`z
        nnoremap ZZ zt
        nnoremap MM <Nop>
        nnoremap MM mzzt36<c-u>`z
        nnoremap MM zb
        "------------------------
        "###Accordion############
        "------------------------
        nnoremap <C-M-j> <C-W>j<C-W>_
        nnoremap <C-M-k> <C-W>k<C-W>_
        nnoremap <C-M-=> <C-W>=
        "------------------------
        nnoremap <M-right> :vertical resize +3<cr>
        nnoremap <M-left>  :vertical resize -3<cr>
        nnoremap <M-up>    :resize -3<cr>
        nnoremap <M-down>  :resize +3<cr>

        "------------------SCROLL----------------------------------------------------------
        "==================================================================================
        nnoremap <S-Up> :PreviewScroll -1<cr>
        nnoremap <S-down> :PreviewScroll +1<cr>

        "------------------SCROLL----------------------------------------------------------
        noremap <silent> <S-up> :call smooth_scroll#up(&scroll, 0, 1)<CR>
        noremap <silent> <S-down> :call smooth_scroll#down(&scroll, 0, 1)<CR>
        "----------------------------------------------------------------------------------
        "==================================================================================
        fun! ScrollOtherWindow(dir)
                if a:dir == "down"
                        let move = "\<C-E>"
                elseif a:dir == "up"
                        let move = "\<C-Y>"
                endif
                exec "normal \<C-W>p" . move . "\<C-W>p"
        endfun
        nnoremap  <C-Down> :call ScrollOtherWindow("down")<CR>
        nnoremap  <C-Up> :call ScrollOtherWindow("up")<CR>
        "==================================================================================
        "==================================================================================
        " better pane navigation
        map <C-h> <C-W>h
        map <C-j> <C-W>j
        map <C-k> <C-W>k
        map <C-l> <C-W>l
        "===================================================
        " Simpler split navigation in vim and tmux
        " let g:tmux_navigator_no_mappings = 1
        nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
        nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
        nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
        nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
        nnoremap <silent> <c-p> :TmuxNavigatePrevious<cr>
        "==================================================================================

"++bbb+++++++++++++++ENAVI+++++}}}
"++AAA++#WINMODE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        imap ;; <ESC>
        cmap ;; <ESC>
        vmap ;; <ESC>
        "==========================================================================================
        " nmap q <Nop>
        " nnoremap q <Nop>
        nnoremap qq :bd<cr>
        nnoremap qa :wa<cr> :bd<cr>
        "==========================================================================================
        "hit qq to record, q to stop recording, and Q to apply.
        nnoremap Q @q
        vnoremap Q :norm @q<cr>
        "==========================================================================================
        let g:undoquit_mapping = ';q'
        nnoremap <c-w>c :call undoquit#SaveWindowQuitHistory()<cr><c-w>c
        "==========================================================================================
        " nnoremap <Leader>q :Bdelete<CR>
        "==========================================================================================
        nnoremap ee :ls<cr>:b<space>
        "==========================================================================================
        nnoremap qw <C-w>q<CR>
        nnoremap wq <C-w>q<CR>
        nnoremap ww <C-w>o<CR>
        "==========================================================================================
        nnoremap EE :source $MYVIMRC<CR>
        nnoremap BB ggVG
        "==========================================================================================
        "==xyz=yhallo=
        "==================================================================================
        " nnoremap vv <c-w>v<c-w>l<cr><c-w>w<cr>
        nnoremap VV :execute "vsplit" bufname('#')<cr>
        "==================================================================================
        "==xyz==
        "==========================================================================================
        nnoremap  \  <C-^>
        nnoremap hh <c-w>w
        "==========================================================================================
        command! CD cd %:p:h

        "==xyz==
        " nnoremap <leader>j :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
        " autocmd filetype java nnoremap <F4> :w <bar> !javac % && java -enableassertions %:p <CR>
        "==========================================================================================
        nmap ;; <Plug>(easymotion-overwin-w)
        nmap __ <Plug>(easymotion-overwin-w)
        let g:EasyOperator_line_do_mapping = 0
        "==========================================================================================
"++bbb+++++++++++EWIN++}}}
"++AAA++#F2++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        "==================================================================================================
        " Perform word-ish searches in a new window, so we can maintain position in the current window:
        "==================================================================================================
        nnoremap <C-?> :<C-U>execute 'Man' v:count '<C-R><C-W>'<CR>
        "==================================================================================================
        "==========================================================================================
        " Help in help in help
        nnoremap <F2> "zyw:exe  "h ".@z.""<CR>
        nnoremap <M-h> <Esc>:helpgrep <C-r><C-w><CR>
        nnoremap <C-h> :CommandTHelp<cr>
        "------------------------------------------------------------------------------------------
        nnoremap <C-t> :CommandTJump<cr>
        "==========================================================================================
        nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
        inoremap <F3> <esc>:NERDTreeToggle<cr>
        "==========================================#STARTIFY=======================================
        source ~/git/bTest/sPot/s9legoStartify.vim
        nnoremap <F4> <esc>:Startify<cr>
        "==========================================================================================
        nnoremap <F5> :w<CR>:!python %<CR>
        "==========================================================================================
        nnoremap <F6> :MMLines <C-r><C-w><CR> | wincmd p
        "==========================================================================================
        nnoremap <F7> :MMBLines <C-r><C-w><CR> | wincmd p
        " nnoremap \\ #* :MMBLines <C-r><C-w><CR> | wincmd p
        nnoremap \\ #*
        "==========================================================================================
        nnoremap <F8> :LocationToggle<cr>
        "==========================================================================================
        nnoremap <F9> :call ToggleQuickFix()<CR>
        "==========================================================================================
        nnoremap  <F10>  :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
        "==========================================================================================
        nnoremap TT :TagbarToggle<CR>
        "==========================================================================================
        source ~/git/bTest/sPot/s9legoQuickMenu.vim
        nnoremap <F12> :call quickmenu#toggle(0)<CR>
        "==========================================================================================
"++bbb+++++++++++++++++++++EF2++++}}}
"++AAA++#DOC+++#HELP++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "====================[PDOC]=================================================================
        nnoremap <Leader>1 :PymodeDoc <cword> .<cr>
        "------------------------------------------------------------------
        " let g:pydoc_cmd = '/usr/bin/pydoc'
        let g:pydoc_cmd = 'python -m pydoc'
        nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
        nmap ;z <Plug>Zeavim
        "------------------------------------------------------------------
        nmap ,z <Plug>ZVKeyDocset
        "------------------------------------------------------------------
        " :Pydoc foo.bar.baz (e.g. :Pydoc re.compile)
        " Or search a word (uses pydoc -k) in the documentation by typing:
        " :PydocSearch foobar (e.g. :PydocSearch socket)
"++bbb+++++++++++++++++++}}}
"++AAA++#FORMAT++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        vmap <M-h> =
        nmap cc  gcl
        nnoremap W gwip
        nnoremap ;a =ip
"++bbb+++++++++++++++++++++}}}
"++AAA++#CommandT++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:CommandTMaxFiles = 10000 " maximum number of files scan.
        let g:CommandTMaxDepth = 15
        let g:CommandTMaxCacheDirectories = 1 " 0: no limit.
        let g:CommandTMaxHeight = 15 " 0: as much as available space.
        let g:CommandTMinHeight = 0 " 0: single line.
        let g:CommandTAlwaysShowDotFiles = 0 " only if entered string contains a dot
        let g:CommandTNeverShowDotFiles = 0
        let g:CommandTScanDotDirectories = 0
        let g:CommandTMatchWindowAtTop = 0 " match window appear at bottom.
        let g:CommandTMatchWindowReverse = 1 " let the best match at bottom.
        let g:CommandTTageIncludeFilenames = 1 " include filenames when matches
        let g:CommandTCancelMap=['<C-x>', '<C-c>'] " multiple alternative mapping.
"++bbb+++++++++++++++++}}}
"++AAA++#FOLD++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "-FoldToggle
        " nnoremap <M-space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
        nnoremap z<Space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
        "=============================================
        " Make zO recursively open whatever [fold]
        nnoremap zO zczO
        "=============================================
        nnoremap z<Up> zR
        nnoremap z<Down> zM
        "=============================================
"++bbb++++++++++++++++++++}}}
"++AAA++#FIND++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
                nnoremap <Leader>i :DimInactive<CR>
        "------------------------------------------------------------------
                nnoremap ff :NV <C-r><C-w><CR> | wincmd p
                nnoremap FF :MMRg <C-r><C-w><CR> | wincmd p
                nnoremap AA :MMAg <C-r><C-w><CR> | wincmd p
                nnoremap GG :MGit <C-r><C-w><CR> | wincmd p
                nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
        "------------------------------------------------------------------
                nnoremap ss :StmSrch <C-r><C-w><CR> | wincmd p
        "==================================================================
        "--------------------[v*#SEARCH]-----------------------------------
        "==================================================================
                vnoremap f :<C-u>call <SID>VSearchMe()<CR>
                vnoremap * :<C-u>MMBLines <C-r>=expand("<cword>")<CR>
                vnoremap # :<C-u>MMAg <C-r>=expand("<cword>")<CR>
                vnoremap _ :<C-u>MGit <C-r>=expand("<cword>")<CR>
                vnoremap - :<C-u>SideSearch <C-r>=expand("<cword>")<CR>
        "*********************[vKey]***************************************
                function! s:VSearchMe()
                        let temp = @@
                        norm! gvy
                        let xx ='\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
                        call fzf#vim#ag(xx, fzf#vim#with_preview())
                endfunction
        "==================================================================
        "--------------------GREPPER--Ack----------------------------------
        "==================================================================
                nnoremap <leader>g :Grepper -tool rg<cr><C-w><CR> | wincmd p
                nnoremap <leader>G :Grepper -tool rg -buffers<cr>
                nnoremap <leader>* :Grepper -tool rg -cword -noprompt<cr>
                nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
        "==================================================================
        nnoremap OO :call CscopeFindInteractive(expand('<cword>'))<CR>
        "------------------------------------------------------------------
        " nnoremap oo :call CscopeFind('f', expand('<cword>'))<CR>
        "==================================================================
        " return: Any command that lists files can be used as the source
        " call fzf#run(fzf#wrap({'source': 'git ls-files'}))
        "==================================================================
"++bbb+++++++++++++EFIND+++}}}
"++AAA++#PyFunc+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
cabbrev w3 call WrapWordWith()<CR>
"++bbb++++++++++++++++++}}}

"++AAA++#FUNC+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

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
        nmap <silent> <M-.> :call <SID>cursor_ping()<CR>

        "----------------------------------------------------------------------------------
        " cmap <M-.> <C-r>=expand('%:p:h') . '/'<CR>
        "==========================================================================================
        "!!! command! MakeTags AsyncRun ctags -R .
        "=======???================================================================================
        "----------------------------------------------------------------------------------
        command! NpmRestart call jobsend(1, "\<C-c>npm run server\<CR>")
        command! ApaStart call jobsend(1, "\<C-c>apachectl start\<CR>")
        "----------------------------------------------------------------------------------
        "==========================================================================================
        command! What echo synIDattr(synID(line('.'), col('.'), 1), 'name')
        "==========================================================================================
        let g:wrap_char = '#'
        let g:wrap_char = '"'
        " /"/
        command! BoxIt call BoxIt()
        function! BoxIt() range
                let lines = getline(a:firstline,a:lastline)
                let maxl = 0
                for l in lines
                        let maxl = len(l)>maxl? len(l):maxl
                endfor
                let h = repeat(g:wrap_char, maxl+4)
                for i in range(len(lines))
                        let ll = len(lines[i])
                        let lines[i] = g:wrap_char . ' ' . lines[i] . repeat(' ', maxl-ll) . ' ' . g:wrap_char
                endfor
                let result = [h]
                call extend(result, lines)
                call add(result,h)
                execute a:firstline.','.a:lastline . ' d'
                let s = a:firstline-1<0?0:a:firstline-1
                call append(s, result)
        endfunction
        "==========================================================================================
        command! GitAddBuffer :call GitAddBuffer()
        function! GitAddBuffer()
                w
                windo !git add %
        endfunction

        "==========================================================================================
        " :E to create a new file inside new folder(s)
        function s:MKDir(...)
        if         !a:0
                \|| isdirectory(a:1)
                \|| filereadable(a:1)
                \|| isdirectory(fnamemodify(a:1, ':p:h'))
                return
        endif
        return mkdir(fnamemodify(a:1, ':p:h'), 'p')
        endfunction
        command -bang -bar -nargs=? -complete=file E :call s:MKDir(<f-args>) | e<bang> <args>

        "==========================================================================================
        command! RAM :call delete(expand('%')) | bdelete!
        "==========================================================================================
        fun MyTest()
                let result = 3
                echo result
                return result
        endf
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
        command! ShowFuncKeys call ShowFuncKeys(<q-bang>)
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
        "==================================================================================
        command! ShowFunc call ShowFunc()
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
        "===================[TableModeToggle]===============================================================
        function! s:isAtStartOfLine(mapping)
                let text_before_cursor = getline('.')[0 : col('.')-1]
                let mapping_pattern = '\V' . escape(a:mapping, '\')
                let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
                return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
        endfunction

        inoreabbrev <expr> <bar><bar>
                                \ <SID>isAtStartOfLine('\|\|') ?
                                \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
        inoreabbrev <expr> __
                                \ <SID>isAtStartOfLine('__') ?
                                \ '<c-o>:silent! TableModeDisable<cr>' : '__'
"++bbb+++++++++++EFUNC+++}}}
"++AAA++#FZF++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        let g:fzf_command_prefix = 'MM'
        let g:fzf_layout = { 'window': 'enew' }
        let g:fzf_layout = { 'window': '-tabnew' }
        let g:fzf_layout = { 'down': '~20%' }
        let g:fzf_layout = { 'window': '10split enew' }
        "let g:fzf_history_dir = '~/.local/share/fzf-history'
        "==========================================================================================
        let g:fzf_action = {
                                \ 'ctrl-t': 'tab split',
                                \ 'ctrl-s': 'split',
                                \ 'ctrl-x': ':Lynx',
                                \ 'ctrl-v': 'vsplit' }
        "======================================================================================================
        "-[Buffers] Jump to the existing window if possible
        let g:fzf_buffers_jump = 1
        let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
        let g:fzf_tags_command = 'ctags -R'
        let g:fzf_commands_expect = 'alt-enter,ctrl-x'
        "======================================================================================================
        function! FzfSpellSink(word)
                exe 'normal! "_ciw'.a:word
        endfunction
        "------------------------------------------------------
        function! FzfSpell()
                let suggestions = spellsuggest(expand("<cword>"))
                return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'left': 30 })
        endfunction
        "======================================================================================================
        command! MTag if !empty(tagfiles()) | call fzf#run({
                                \ 'source': "cat " . join(tagfiles()) . ' | grep -P "' . expand('%:t') . '"',
                                \ 'sink': function('<sid>tag_handler'),
                                \ 'options': '+m --with-nth=1',
                                \ 'right': '25%'
                                \ }) | else | echo 'No tags' | endif
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
        nmap <leader><tab> <plug>(fzf-maps-n)
        xmap <leader><tab> <plug>(fzf-maps-x)
        omap <leader><tab> <plug>(fzf-maps-o)
        "========================================================================================================
        command! MLibList call fzf#run({'source': 'find ~/git/ ~/Documents/ -type f', 'sink':  'edit'})
        "========================================================================================================
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

        command! MPlugHelp call fzf#run(fzf#wrap({
                                \ 'source': sort(keys(g:plugs)),
                                \ 'sink':   function('s:plug_help_sink'),
                                \'right': '30%'
                                \}))

        command! ZPlugHelp call fzf#run(fzf#wrap({
                                \ 'source': sort(keys(g:plugs)),
                                \ 'sink':   function('s:plug_help_sink'),
                                \'right': '30%'
                                \}))
        "==========================================================================================
        if !exists(":DiffOrig")
                command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                                        \ | wincmd p | diffthis
        endif
        "==========================================================================================
        if has('autocmd')
                function! s:fzf_status()
                        let l:laststatus = &laststatus
                        let l:ruler = &ruler
                        let l:showmode = &showmode
                        autocmd FileType fzf set laststatus=0 noshowmode noruler
                        execute 'autocmd BufLeave <buffer> set ' .
                                                \ 'laststatus=' . l:laststatus ' ' .
                                                \ (l:ruler ? '' : 'no') . 'ruler ' .
                                                \ (l:showmode ? '' : 'no') . 'showmode'
                endfunction
                augroup jnrowe_fzf
                        autocmd FileType fzf call s:fzf_status()
                augroup END
        endif
        "**********************************************************************************************************
        " On :LS!, <bang> evaluates to '!', and '!0' becomes 1
        command! -bang LS call fzf#run(fzf#wrap({'source': 'ls'}, <bang>0))
        "**********************************************************************************************************
        "==========================================================================================================
        "**********************************************************************************************************
        command! -bang -nargs=? -complete=dir MFiles
                                \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
        "============================================================================================
        command! -bang -nargs=?  MGit
                                \ call fzf#run({'source': 'git ls-files', 'sink': 'e', 'right': '40%'})
        "**************************************************************************************************
        "****************:Lag mao ~/Docs******************************************************************
        "**************************************************************************************************
        command! -bang -nargs=+ -complete=dir Lag
                                \ call fzf#vim#ag_raw(<q-args>,
                                \{'options': '--delimiter : --nth 4..'},
                                \<bang>0)
        "**************************************************************************************************
        "****************:Rag mao ~/Docs ** Preview *******************************************************
        "**************************************************************************************************
        command! -bang -nargs=+ -complete=dir Rag
                                \ call fzf#vim#ag_raw(<q-args>,
                                \ fzf#vim#with_preview(),
                                \<bang>0)
        "============================================================================================
        command! -bang -nargs=?  Mag
                                \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)
        "*********************************************************************************
        "**********************:DirAgList ~/Desc******************************************
        "*********************************************************************************
        command! AgLet call fzf#vim#ag('let', {'dir': '~/Desktop/nv402/nvim402/share/nvim/runtime/doc/', 'down': '40%'})
        command! AgSet call fzf#vim#ag('set', {'dir': '~/Desktop/nv402/nvim402/share/nvim/runtime/doc/', 'down': '40%'})
        command! AgPlg call fzf#vim#ag('W>', {'dir': '~/.config/nvim/plugged/', 'down': '40%'})
        command! AgPlg1 call fzf#vim#ag(''W>'', {'dir': '~/.config/nvim/plugged/', 'down': '40%'})
        command! AgPlg2 call fzf#vim#ag('E>', {'dir': '~/.config/nvim/plugged/', 'down': '40%'})
        command! AgPlg3 call fzf#vim#ag('I>', {'dir': '~/.config/nvim/plugged/', 'down': '40%'})
        command! AgPlg4 call fzf#vim#ag('lint E>', {'dir': '~/.config/nvim/plugged/', 'down': '40%'})
        "*********************************************************************************
        "**********************:Bag! mao **?**-*******************************************
        "*********************************************************************************
        "   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
        "   :Ag! - Start fzf in fullscreen and display the preview window above
        command! -bang -nargs=* Bag
                                \ call fzf#vim#ag(<q-args>,
                                \                 <bang>0 ? fzf#vim#with_preview('up:60%')
                                \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
                                \                 <bang>0)
        "*********************************************************************************
        "**********************:Brg! mao **?**-*********************************************
        "*********************************************************************************
        " Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
        command! -bang -nargs=* Brg
                                \ call fzf#vim#grep(
                                \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
                                \   <bang>0 ? fzf#vim#with_preview('up:60%')
                                \           : fzf#vim#with_preview('right:50%:hidden', '?'),
                                \   <bang>0)
        "==========================================================================================

"++bbb+++++++++++EFZF++}}}
"++AAA++#LEADER++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "============================================
        source ~/git/bTest/sPot/s9legoLeaderGuide.vim
        "============================================
        call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
        "============================================
        nnoremap <leader> :<c-u>LeaderGuide '<Space>'<CR>
        vnoremap <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
        "============================================
        nnoremap <localleader> :<c-u>LeaderGuide  ','<CR>
        vnoremap <localleader> :<c-u>LeaderGuideVisual  ','<CR>
        "============================================
        nnoremap ; :<c-u>LeaderGuide  ';'<CR>
        vnoremap ; :<c-u>LeaderGuideVisual  ';'<CR>
        "============================================
"++bbb+++++++++++++++}}}
"++AAA++#COC+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
         " source ~/git/bTest/sPot/s9legoCoc.vim
"++bbb+++++++++++++++++++++++++++++}}}
"++AAA++#DEO-jedi-LSP-CORE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        source ~/git/bTest/sPot/s9legoDeo.vim
        "----------------------------------------------------------------------------------
        let g:SuperTabContextDefaultCompletionType = '<c-n>'
        let g:SuperTabDefaultCompletionType = '<C-n>'
        "----------------------------------------------------------------------------------
        inoremap <expr><C-g>     deoplete#undo_completion()
        inoremap <expr><C-l>     deoplete#refresh()
        inoremap <expr><C-k>     deoplete#smart_close_popup()
        "--------------------------------------------------------------------------------
        imap <expr> <C-Space>  deoplete#manual_complete()
        inoremap <C-space>     <Esc>a
        "--------------------------------------------------------------------------------
        " imap <expr> <C-j>  deoplete#manual_complete()
        imap <expr> <M-Space>  deoplete#manual_complete()
        "--------------------------------------------------------------------------------
"++bbb++++++++++++++++++}}}
"++AAA++#AUTO+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " autocmd BufWritePost,FileWritePost *.html call JavascriptLint()
        "==========================================================================================
        " autocmd! FileType typescript setlocal completeopt+=menu,preview
        " autocmd! FileType css setlocal omnifunc=csscomplete#CompleteCSS
        " autocmd! FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        " autocmd! FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        " autocmd! FileType java setlocal omnifunc=javacomplete#Complete
        " autocmd! FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        " autocmd! FileType ruby setlocal omnifunc=rubycomplete#Complete
        " autocmd! FileType haskell setlocal omnifunc=necoghc#omnifunc
        "==========================================================================================
        "-CHECK-It-TODO-recheck
        autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        "==========================================================================================
        function! ScriptExecute()
                :!chmod u+x %
                :w
        endfunction
        "====================================Change================================================
        augroup ScriptExecutePermission
                autocmd!
                autocmd BufWritePost *.sh :call ScriptExecute()
        augroup END
        "==========================================================================================
        augroup SourceVimrc
                autocmd!
                autocmd bufwritepost .vimrc source $MYVIMRC
        augroup END
        "==========================================================================================
        autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
        "==========================================================================================
        "codefmt
        augroup autoformat_settings
                autocmd!
                autocmd FileType bzl AutoFormatBuffer buildifier
                autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
                autocmd FileType dart AutoFormatBuffer dartfmt
                autocmd FileType go AutoFormatBuffer gofmt
                autocmd FileType gn AutoFormatBuffer gn
                " autocmd FileType html,css,json AutoFormatBuffer js-beautify
                autocmd FileType java AutoFormatBuffer google-java-format
                " autocmd FileType python AutoFormatBuffer yapf
                " Alternative: autocmd FileType python AutoFormatBuffer autopep8
        augroup END
        "==========================================================================================
        autocmd! BufEnter * :call BookmarkMapKeys()
        " autocmd! BufEnter *.vim :TableModeToggle
        "==========================================================================================
        augroup qs_colors
                autocmd!
                autocmd ColorScheme * highlight QuickScopePrimary  ctermfg=81 cterm=underline
                autocmd ColorScheme * highlight QuickScopeSecondary  ctermfg=93 cterm=underline
        augroup END
        "==========================================================================================
        augroup UnderlineTag
                autocmd!
                " autocmd BufEnter *.py UnderlineTagOn
        augroup END

        " highlight UnderlineTag  cterm=underline  gui=underline guifg=#555555
        "==========================================================================================
        function! s:fzf_statusline()
                highlight fzf1 ctermfg=11 ctermbg=9
                highlight fzf2 ctermfg=11 ctermbg=9
                highlight fzf3 ctermfg=11 ctermbg=9
                setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
        endfunction
        autocmd! User FzfStatusLine call <SID>fzf_statusline()
        "==========================================================================================
        au! FocusLost * :silent! wall
        "==========================================================================================
        autocmd BufEnter * call halo#run({'intervals': [100, 300, 600, 300, 100]})
        "==========================================================================================
        " Most prefer to automatically switch to the current file directory when
        " let g:spf13_no_autochdir = 1
        if !exists('g:spf13_no_autochdir')
                autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
                " Always switch to the current file directory
        endif
        "==========================================================================================
        command! -nargs=0 JunkfileDay call junkfile#open_immediately(strftime('%Y-%m-%d.txt'))
        command! -nargs=0 JunkfileDiary call junkfile#open_immediately(strftime('%Y-%m-%d.md'))
        "==========================================================================================
        " autocmd VimEnter * silent ! set broadcast=none
        " autocmd VimLeave * silent ! set broadcast=all

"++bbb+++++++++++EAUTO++++++}}}
"++AAA++#OPER+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
        " map  H  <Plug>(operator-align-left)                            " to the Right
        " map  L  <Plug>(operator-align-right)                           " to the Left
        " map  M  <Plug>(operator-align-center)                          " to the Middle
        " call operator#user#define_ex_command('align-left', 'left')     "
        " call operator#user#define_ex_command('align-right', 'right')   "
        " call operator#user#define_ex_command('align-center', 'center') "
        """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"++bbb++++++++++++++++++}}}
"++AAA++#IABBR++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
inoremap <S-Tab> <C-V><Tab>
" insert tab with Shift-Tab
iabbrev yyy "---------------------------------------------------------------------------------
iabbrev yy1 ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
iabbrev yy2 "*********************************************************************************************
iabbrev yy3 "++AAA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{<CR>"++bbb++}}}
iabbrev yy4 "======================================================================================================
iabbrev yy5 +++++++++++++
iabbrev yy6 :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
iabbrev yy7 ===================================================================================
iabbrev yy8 -----------------------------------------------------------------------------------
iabbrev yy9 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

iabbrev xdate <C-r>=strftime("%m/%d/%y")<CR>
iabbrev fdate <C-r>=strftime("%B %d, %Y")<CR>
iabbrev xtime <C-r>=strftime("%H:%M")<CR>
iabbrev ftime <C-r>=strftime("%H:%M:%S")<CR>
iabbrev dts   <C-r>=strftime("%Y/%m/%d %H:%M:%S -")<CR>
"++bbb++++++++++++++++++++}}}
"++AAA++#TMUX++#FRESH++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
" " Make esc change modes in terminal
" :tnoremap <leader><Esc> <C-\><C-n>
" let g:tmux_navigator_no_mappings = 1
" " Update changed buffer when switching to Tmux
" let g:tmux_navigator_save_on_switch = 1
"=============================================
" " Name tmux tabs after file open
" autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window 'vim | " . expand("%:t") . "'")
"=============================================
" if has('nvim') " https://github.com/neovim/neovim/issues/2048
"   nmap <bs> :<c-u>TmuxNavigateLeft<cr>
" endif
"++bbb+++++++++++++}}}
"++AAA++#CYAN+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        set background=dark
        set termguicolors
        source ~/git/bTest/sPot/sGruvbox.vim
        " source MYX/n-badwolf.vim
        " colorscheme desert
        " colorscheme molokai
        " colorscheme mopkai
        " colorscheme evokai
        " colorscheme inkpot
        " colorscheme neonwave
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "=================================================================================
        " source ~/git/bTest/sPot/s9legoCyan.vim
        set listchars=tab:▸\ ,eol:¬,trail:⋅
        hi NonText ctermfg=16 guifg=#Fa3a19
        hi SpecialKey ctermfg=16 guifg=#ff00af
        "==================================================================================
        hi MatchParen gui=bold  guifg=yellow guibg=#FF0000
        "==================================================================================
        hi CursorN ctermfg=15 guifg=#fdff63 ctermbg=166 guibg=#0df6e3
        hi CursorN ctermfg=15 guifg=#fdff63 ctermbg=166 guibg=#ffffff
        hi InsertCursor  ctermfg=15 guifg=#0e4411 ctermbg=37  guibg=#FF4020
        hi VisualCursor  ctermfg=15 guifg=#0df6e3 ctermbg=125 guibg=#cc09aa
        hi ReplaceCursor ctermfg=15 guifg=#fd56e3 ctermbg=65  guibg=#00ff00
        hi CommandCursor ctermfg=15 guifg=#fdff63 ctermbg=166 guibg=#FF0000
        "**********************************************************************************
        hi link Halo GruvboxRedBold
        hi Halo guifg=white guibg=#F92672 ctermfg=white ctermbg=197
        "**********************************************************************************
        let g:underlinetag_syntax = 'syntax keyword UnderlineTag %s containedin=ALLBUT,.*String.*,.*Comment.*,cIncluded,.*Function.*'
        let g:underlinetag_highlight = 'highlight UnderlineTag gui=underline cterm=underline term=underline'
        "==================================================================================
        set cursorcolumn
        set colorcolumn=84,92,100,108,116
        hi ColorColumn    ctermbg=14   guibg=#005500
        hi CursorLine    guibg=#600060   gui=underline cterm=underline  guisp=#FF0000
        hi CursorLine    guibg=#000099   gui=underline cterm=underline  guisp=#FF0000
        hi cursorcolumn   ctermbg=16 guibg=#000099
        hi LineNr        ctermbg=17 ctermfg=15   guibg=#5fafdf  guifg=#ffffff
        "===========================OK1====================================================
        ":::::::::[#CYAN]::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==================================================================================
        hi customAAA     ctermbg=245 ctermfg=White  guibg=#ffFFB5 guifg=#ff0000 gui=bold
        call matchadd('customAAA', 'AAA')
        call matchadd('customAAA', 'aaa')
        call matchadd('customAAA', '!!!')
        call matchadd('customAAA', '???')
        "==================================================================================
        hi customBBB     ctermbg=245 ctermfg=White  guibg=#ffFFB5 guifg=#3f00ff
        call matchadd('customBBB', 'BBB')
        call matchadd('customBBB', 'bbb')
        call matchadd('customBBB', 'OK1')
        call matchadd('customBBB', 'OK2')
        call matchadd('customBBB', 'OK3')
        call matchadd('customBBB', 'GAIL')
        "==================================================================================
        hi customGGG     ctermbg=245 ctermfg=White  guibg=#ffFFB5 guifg=#00AA00 gui=bold
        call matchadd('customGGG', 'GGG')
        call matchadd('customGGG', 'NICE')
        call matchadd('customGGG', 'OnTOP')
        "==================================================================================
        " hi customGGG     ctermbg=245 ctermfg=White  guibg=#ff6FB5 guifg=#ff6A00 gui=bold
        "==================================================================================
        hi customOOO     ctermbg=245 ctermfg=White  guibg=#ffFFB5 guifg=#ff6A00 gui=bold
        call matchadd('customOOO', 'OOO')
        "==================================================================================
        "======================Extra1======================================================
        "==================================================================================
        hi customGB     ctermbg=245 ctermfg=White  guifg=#000000 guibg=#00fF0c gui=bold
        call matchadd('customGB', '#LeaderGuide')
        call matchadd('customGB', '#STARTIFY')
        call matchadd('customGB', '#QMENU')
        call matchadd('customGB', '#Pyy')
        call matchadd('customGB', '#DeoJedi')
        call matchadd('customGB', '#VimOmni')
        call matchadd('customGB', '#BOX')
        call matchadd('customGB', '#PDOC')
        call matchadd('customGB', '#ULTI')
        call matchadd('customGB', '#TObj')
        call matchadd('customGB', '#EXEC')
        "==================================================================================
        "======================RAITING=====================================================
        "==================================================================================
        hi customPi     ctermbg=245 ctermfg=White  guibg=#FFFF11 guifg=#000000 gui=bold
        call matchadd('customPi', '#ADVANCED')
        call matchadd('customPi', '#BEST')
        call matchadd('customPi', '#SMART')
        call matchadd('customPi', '#NEXT')
        call matchadd('customPi', '#FRESH')
        call matchadd('customPi', '#NOWO')
        call matchadd('customPi', '#TODO')
        call matchadd('customPi', '#ERROR')
        call matchadd('customPi', '#NextBigThig')
        "==================================================================================
        "======================TOPF1========================================================
        "==================================================================================
        hi customYB     ctermbg=245 ctermfg=White  guibg=#000000 guifg=#FFFF00 gui=bold
        call matchadd('customYB', '#PreSet')
        call matchadd('customYB', '#PySet')
        call matchadd('customYB', '#UNDO')
        call matchadd('customYB', '#MainSet')
        call matchadd('customYB', '#PLAG')
        call matchadd('customYB', '#Plugged')
        "==================================================================================
        "======================TOPF2=======================================================
        "==================================================================================
        hi customYR     ctermbg=245 ctermfg=White  guibg=#000000 guifg=#00FFFF gui=bold
        call matchadd('customYR', '#LLINE')
        call matchadd('customYR', '#SOURCE')
        call matchadd('customYR', '#WILD')
        call matchadd('customYR', '#NMODE')
        call matchadd('customYR', '#IMODE')
        call matchadd('customYR', '#VMODE')
        call matchadd('customYR', '#CMODE')
        call matchadd('customYR', '#NAVI')
        call matchadd('customYR', '#WINMODE')
        call matchadd('customYR', '#F2')
        call matchadd('customYR', '#HELP')
        call matchadd('customYR', '#DOC')
        call matchadd('customYR', '#FORMAT')
        call matchadd('customYR', '#CommandT')
        call matchadd('customYR', '#CtrlSF')
        call matchadd('customYR', '#FOLD')
        call matchadd('customYR', '#FIND')
        call matchadd('customYR', '#SEARCH')
        call matchadd('customYR', '#FUNC')
        call matchadd('customYR', '#FZF')
        call matchadd('customYR', '#LEADER')
        call matchadd('customYR', '#COC')
        call matchadd('customYR', '#DEO')
        call matchadd('customYR', '#AUTO')
        call matchadd('customYR', '#OPER')
        call matchadd('customYR', '#IABBR')
        call matchadd('customYR', '#TMUX')
        call matchadd('customYR', '#CYAN')
        call matchadd('customYR', '#OPER')
        "==================================================================================
        hi customGleich     ctermbg = 245 ctermfg=White  guibg=#333333 guifg=#00f5f5
          hi customHash     ctermbg = 245 ctermfg=White  guibg=#FFFF00 guifg=#6045f5
            hi customDP     ctermbg = 245 ctermfg=White  guibg=#444444 guifg=#ff3f00
         hi customGrayD     ctermbg = 245 ctermfg=White  guibg=#444444 guifg=#ddDDdd
           hi customBar     ctermbg = 245 ctermfg=White  guibg=#333333 guifg=#ff15ee
          hi customStar     ctermbg = 245 ctermfg=White  guibg=#880055 guifg=#ffff00
         hi customPlus      ctermbg = 245 ctermfg=White  guibg=#70FF70 guifg=#FF1133
         hi customMinus     ctermbg = 245 ctermfg=White  guibg=#333333 guifg=#70FF70
          hi customProz     ctermbg = 245 ctermfg=White  guibg=#cccccc guifg=#ff0000
        "==================================================================================
        call matchadd('customHash', '#')
        call matchadd('customDP', ':')
        call matchadd('customMinus', '-')
        call matchadd('customBar', '|')
        call matchadd('customGleich', '=')
        call matchadd('customPlus', '+')
        call matchadd('customStar', '*')
        call matchadd('customProz', '%')

        "==================================================================================
        "::::::::::::::::::::::::#ALE::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==================================================================================
        " *LanguageClient.txt* Language Server Protocol support
        "==================================================================================
        hi zevaERR      guibg=#ffff88  guifg=#ff0011 gui=bold
        hi zevaWARN     guibg=#5f008f  guifg=#ffff11 gui=bold
        hi zevaINFO     guibg=#5f008f  guifg=#00ff51 gui=bold
        hi zevaHINT     guibg=#5f008f  guifg=#00ffff gui=bold
        "==================================================================================
        call matchadd('zevaERR', 'ERR')
        call matchadd('zevaWARN', 'WARN')
        call matchadd('zevaINFO', 'INFO')
        call matchadd('zevaHINT', 'HINT')
        "================#LINT==================================================================
        let diagnosticsDisplaySettings={
                                \       '1': {
                                \           'name': 'Error',
                                \           'texthl': 'ALEError',
                                \           'signText': 'cR',
                                \           'signTexthl': 'zevaERR',
                                \           'virtualTexthl': 'zevaERR',
                                \       },
                                \       '2': {
                                \           'name': 'Warning',
                                \           'texthl': 'ALEWarning',
                                \           'signText': 'cW',
                                \           'signTexthl': 'zevaWARN',
                                \           'virtualTexthl': 'zevaWARN',
                                \       },
                                \       '3': {
                                \           'name': 'Information',
                                \           'texthl': 'ALEInfo',
                                \           'signText': 'cI',
                                \           'signTexthl': 'zevaINFO',
                                \           'virtualTexthl': 'zevaINFO',
                                \       },
                                \       '4': {
                                \           'name': 'Hint',
                                \           'texthl': 'ALEInfo',
                                \           'signText': 'cH',
                                \           'signTexthl': 'zevaHINT',
                                \           'virtualTexthl': 'zevaHINT'
                                \       },
                                \  }
        let g:LanguageClient_diagnosticsDisplay=diagnosticsDisplaySettings
        nnoremap <silent> <F8> :call LanguageClient#textDocument_hover()<CR>
        nnoremap <silent> <F9> :call LanguageClient#textDocument_definition()<CR>
        nnoremap <silent> <F10> :call LanguageClient#textDocument_rename()<CR>
        nnoremap <F12> :call LanguageClient_contextMenu()<CR>
        ":::::::::::::::::::::::::::::#ALE:::::::::::::::::::::::::::::::::::::::::::::::::

"++bbb++++++ECYAN++}}}

" Highlight a particular csv column (put in .vimrc)
function! CSVH(x)
    execute 'match Keyword /^\([^,]*,\)\{'.a:x.'}\zs[^,]*/'
    execute 'normal ^'.a:x.'f,'
    execute 'normal D:x'
endfunction
command! -nargs=1 Csv :call CSVH(<args>)
" call with
" :Csv 5                             : highlight fifth column
"*********************************************************************************************
" qa starts a recording in register 'a'. q stops it. @a repeats the recording. 5@a repeats
"split and join
:let @a='rdd�ku�kupcc'
"decrement
:let @b='yyp'
"age
:let @c='03wdei=2019-*'
:let @d='3wdei=2019-*'
:let @e='3wdei=2019-*;;0'
:let @f='3wdei=2019-*;;0i=0;;j'
:let @g='3wdei=2019-+;;0j'
:let @h='qgg0iclass @<esc>f=cwextends<esc>2f.DGdd:w'

function! CalculateAge()
    normal 3wdei=2020-*;;0j
endfunction
" nnoremap <leader>a :call CalculateAge()<CR>

" command! -nargs=1 Csv :call CSVH(<args>)
" :Csv 5 -- highlight fifth column -- call with
"*********************************************************************************************
" -- Pull Visually Highlighted text into LHS of a substitute
:vmap <leader>z :<C-U>%s/\<<c-r>*\>/
"*********************************************************************************************
" -- Swap word with next word
nmap <silent> gw    "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>

"++AAA+++:Ex+:EX+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
" qa starts a recording in register 'a'. q stops it. @a repeats the recording. 5@a repeats
" -- complex diff parts of same file [N]
" :1,2yank a | 7,8yank b
" :new | put a | vnew | put b
"*********************************************************************************************
" -- inserting line number into file
" :g/^/exec "s/^/".strpart(line(".")."    ", 0, 4)
" will comment out lines  _pattern_
" :g/_pattern_/s/^/#/g
"*********************************************************************************************
" vim -c "%s/ABC/DEF/ge | update" file1.c -- execute multiple command on a single file
" vim -s "convert.vim" file.c -- Automate editing of a file (Ex commands in convert.vim)
" gvim -u NONE -U NONE -N -- load VIM without .vimrc and plugins (clean VIM) e.g. for HUGE files
"*********************************************************************************************
" -- format a mysql query
" :%s#\<from\>\|\<where\>\|\<left join\>\|\<\inner join\>#\r&#g
" select * from aTable where ID >9
"*********************************************************************************************
" -- sub "fred" with contents of register "a"
" :s/fred/<c-r>a/g
" -- Search for FRED AND JOE in any ORDER!
" /.*fred\&.*joe
" /^[A-J]/
" /<CTRL-r><CTRL-w>  pull the word under the cursor into search.
"*********************************************************************************************
" -- delete html tags, leave text (non-greedy)
" :%s#<[^>]\+>##g
" --reverse fields separated : by
" :s/\(.*\):\(.*\)/\2 -- \1/
" -- delete multiple duplicate lines [N]
" :%s/^\(.*\)\(\n\1\)\+$/\1/
" -- delete duplicate lines
" :%s/^\(.*\)\n\1$/\1/
" -- convert Abc-yy to Abc-10,11,12 etc
" :let i=10 | 'd,'bg/Abc/s/yy/\=i/ |let i=i+1
" -- Swapping first & last column (4 columns)
" :%s:\(\w\+\)\(.*\s\+\)\(\w\+\)$:\3\2\1:
" 1 2 3 4
" 1 2 3 4
" -- decrement numbers by 3
" :'<,>'s/\d\+/\=(submatch(0)-3)/
" -- delete lines not containing string
" :g!/^dd/d
" -- Join Lines [N]
" :g/fred/,/joe/j
" -- reverse lines right to left (toggles)
" :set rl!
" -- reverse lines top to bottom (toggles)
" :g/^/m0
" -- Reverse a section a to b
" :'d,'bg/^/m'b
" -- duplicate every line
" :g/^/t.
" -- copy (transfer) lines matching fred to EOF
" :g/fred/t$
" -- copy (transfer) lines matching stage to marker a (cannot use .) [C]
" :g/stage/t'a
" -- Automatically underline selecting headings [N]
" :g/^Chapter/t.|s/./-/g
" -- append all lines fred to register a
" :g/fred/y A
" -- filter lines to a file (file must already exist)
" :'a,'bg/^Error/ . w >> errors.txt
" -- Sort each block (note the crucial ;)
" :g/^$/;/^$/-1!sort
" -- sort all lines on second column [N]
" :sort /.*\%2v/
"---------------------------------
"-example, to change the date mark in a file:
":map <F2> msHmtgg/Last [cC]hange:\s*/e+1<CR>"_D"=strftime("%Y %b %d")<CR>p'tzt`s
"**************************************
"++bbb++++++++++++++++++++++++++++++++++}}}

" nmap ga <Plug>(EasyAlign)
" nmap <localleader>t <Plug>(OrgSetTags)
" nmap <F12> <Plug>(OrgToggleFolding)

let g:org_todo_keywords = ['TODO', '|', 'DONE']
let g:org_indent = 1
" let g:org_plugins = ['ShowHide', '|', 'Navigator', 'EditStructure']
let g:org_aggressive_conceal = 1

" :let g:org_todo_keywords = [['TODO(t)', '|', 'DONE(d)'],
"                         \ ['REPORT(r)', 'BUG(b)', 'KNOWNCAUSE(k)', '|', 'FIXED(f)'],
"                         \ ['CANCELED(c)']]
" :nmap g{  :py ORGMODE.plugins["Navigator"].parent(mode="normal")<CR>

" Examples:
" gawk '{ sum += $1 }; END { print sum }' file
" gawk -F: '{ print $1 }' /etc/passwd
" ls -al
" ls -al


