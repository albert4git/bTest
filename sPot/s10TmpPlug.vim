
        "-Plug 'devjoe/vim-codequery'
        "---------------------------------------------------------------------------------
        " Plug 'uguu-org/vim-matrix-screensaver'
        " Plug 'vim-scripts/TeTrIs.vim'
        " Plug 'pravj/vingvong'
        "===!!!Err=================================
        " Plug 'cosminadrianpopescu/vim-sql-workbench'
        "===!!!=================================
        "---------------------------------------------------------------------------------
        ":RUN
        "---------------------------------------------------------------------------------
        "Plug 'sollidsnake/verun'
        "Plug '5long/pytest-vim-compiler'
        "Plug 'reinh/vim-makegreen'
        "---------------------------------------------------------------------------------
        "Plug 'nielsmadan/venom'
        "Plug 'nielsmadan/mercury'
        "Plug 'nielsmadan/yankee'
        "---------------------------------------------------------------------------------
        "Plug 'dkarter/bullets.vim'
                "let g:bullets_enabled_file_types = [
                "\ 'markdown',
                "\ 'text',
                "\ 'scratch'
                "\]

        "---------------------------------------------------------------------------------
        " Plug 'KeyboardFire/vim-minisnip'
        " Plug 'joereynolds/deoplete-minisnip'
        " let g:minisnip_trigger = '<M-4>'
        "----------------------------------------------------------------------------------

        " Plug 'tommcdo/vim-lion'
        " let g:lion_squeeze_spaces = 1
        "===============================================================================
        Plug 'yarisgutierrez/ayu-lightline'
        Plug 'patstockwell/vim-monokai-tasty'
        "===============================================================================
        Plug 'rafi/awesome-vim-colorschemes'
        "===============================================================================

        " Plug 'mkropat/vim-jumpthere'
        " Plug 'osyo-manga/vim-over' " Better command interaction
        " Plug 'dracula/vim', { 'as': 'dracula' }

        " Plug 'Shougo/denite.nvim' " async version of unite.vim
        nnoremap <leader>f :Denite -direction=dynamicbottom -auto-preview file_rec<CR>
        nnoremap <leader>b :Denite -direction=dynamicbottom -auto-preview buffer<CR>
        " call denite#custom#var('file/rec', 'command', ['ag', '--follow', '-g', '--nogroup', '--nocolor', '-u', ''])
        " call denite#custom#var('grep', 'command', ['ag'])
        " call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
        " call denite#custom#var('grep', 'recursive_opts', [])
        " call denite#custom#var('grep', 'pattern_opt', [])
        " call denite#custom#var('grep', 'separator', ['--'])
        " call denite#custom#var('grep', 'final_opts', [])

        "===============================================================================

        "----------------------------------------------------------------------------------
        "??? Plug 'tpope/vim-unimpaired'
        "??? Plug 'tpope/vim-surround'
        "---------------------------------------------------------------------------------
        "-!- Plug 'lambdalisue/lista.nvim'
        " nnoremap <M-3> :<C-u>Lista<CR>
        " nnoremap <M-4> :<C-u>ListaCursorWord<CR>
        " vim-lost
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'hsitz/VimOrganizer'
        "===============================================================================
        "---------------------------------------------------------------------------------
        "-PHP-Projectionist-
        " Plug 'noahfrederick/vim-composer'
        "----------------------------------------------------------------------------------
        "Plug 'Yggdroot/indentLine'
        "        let g:indentLine_enabled = 1
        "        let g:indentLine_noConcealCursor='nc'
        "        let g:indentLine_color_term = 10
        "        let g:indentLine_color_gui = '#ffFF00'
        "        let g:indentLine_color_gui = '#ff5f00'
        "        "let g:indentLine_setConceal = 0
        "        let g:indentLine_bgcolor_term = 202
        "        let g:indentLine_faster = 1
        "        let g:indentLine_char = '|'
        "        let g:indentLine_first_char='|'
        "        let g:indentLine_showFirstIndentLevel=1
        "        let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']

        "===============================================================================
        "--------------------------------------
        " Plug 'Shougo/unite.vim'
        " Plug 'tsukkee/unite-tag'
        " Plug 'SpaceVim/unite-ctags'
        " Plug 'Shougo/unite-outline/'
        " Plug 'tsukkee/unite-help'
        " Plug 'rstacruz/vim-fastunite'
        " Plug 'cskeeters/unite-fzf'
        " Plug 'Shougo/neomru.vim'
        "--------------------------------------
        "---------------------------------------------------------------------------------
        " Plug 'junegunn/vim-oblique'
        "         hi! def link ObliqueCurrentMatch Keyword
        "         hi! def link ObliquePrompt       Structure
        "         hi! def link ObliqueLine         String
        "==========================================================================================
        " autocmd! User Oblique       normal! zz
        " autocmd! User ObliqueStar   normal! zz
        " autocmd! User ObliqueRepeat normal! zz
                " hi! def link ObliqueCurrentMatch Keyword
                " hi! def link ObliquePrompt       Structure
                " hi! def link ObliqueLine         String
                " let g:oblique#clear_highlight =0
        "----------------------------------------------------------------------------------
        "-:Acks- Plug 'wincent/ferret'
        "-Plug 'lyuts/vim-rtags'
        "----------------------------------------------------------------------------------
        "---:T---:Tnew---:Topen---:TREPL---------------------------------------------------
        "----------------------------------------------------------------------------------
        " Plug 'kassio/neoterm'
        "         au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
        "         au VimEnter,BufRead,BufNewFile *.idr set filetype=idris
        "         au VimEnter,BufRead,BufNewFile *.lidr set filetype=lidris
        "         au VimEnter,BufRead,BufNewFile *.lfe, set filetype=lfe

        "---------------------------------------------------------------------------------
        "------------------TODO------------------------------------------------------------
        " enable support for concealing some constructs with unicode glyphs.
        " Plug 'hylang/vim-hy'
        " let g:hy_enable_conceal = 1
        " If you do let g:hy_conceal_fancy=1, xi and #% are displayed as ξ

        "---------------------------------------------------------------------------------
        " Plug 'tiagoinacio/fzf-bookmark.vim'
        "===============================================================================
        "postgres
        " Plug 'vpenkoff/vim-pg'
        " Plug 'vim-scripts/dbext.vim'
        " :'<,'>DBExecSQL    (or used the default map <Leader>se)

        "----------------------------------------------------------------------------------
        " Plug 'chriskempson/base16-vim'
        Plug 'ayu-theme/ayu-vim' " or other package manager
        " colorscheme ayu
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme
        " let ayucolor="dark"   " for dark version of theme
        Plug 'trusktr/seti.vim'
        "----------------------------------------------------------------------------------
        "---------------------
        " Plug 'xolox/vim-notes'
        "----------------------------------------------------------------------------------
        "===================================================================================
        " Plug 'StanAngeloff/php.vim'
        " Plug 'squizlabs/PHP_CodeSniffer'
        " Plug 'LucHermitte/lh-cpp'
        "----------------------------------------------------------------------------------
        "------------------------------------------------------------------------------------------
        " Plug 'liquidz/vim-iced', {'for': 'clojure'}
        "------------------------------------------------------------------------------------------
        " Plug 'jacobsimpson/nvim-example-python-plugin'
        "------------------------------------------------------------------------------------------

        " Plug 'Timoses/vim-venu'
        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------

        "----------------------------------------------------------------------------------
        "==========================================================================================
        " let g:fzf_colors =  {   ['fg', 'Comment'],
        "                         \ 'bg':      ['bg', 'Normal'],
        "                         \ 'hl':      ['fg', 'Comment'],
        "                         \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
        "                         \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn', 'Normal'],
        "                         \ 'hl+':     ['fg', 'Statement'],
        "                         \ 'info':    ['fg', 'PreProc'],
        "                         \ 'border':  ['fg', 'Ignore'],
        "                         \ 'prompt':  ['fg', 'Conditional'],
        "                         \ 'pointer': ['fg', 'Exception'],
        "                         \ 'marker':  ['fg', 'Keyword'],
        "                         \ 'spinner': ['fg', 'Comment'],
        "                         \ 'header':  ['fg', 'Comment'] }

        """""""""""""""""""""""""""""""""""""
        " n  ;m    * :CtrlPMRU<CR>
        " n  ;p    * :CtrlP<CR>
        " n  ;h    * :CommandTHelp<CR>
        " n  ;j    * :CommandTJump<CR>
        " n  <Plug>(CommandTTag) * :CommandTTag<CR>
        " n  <Plug>(CommandTSearch) * :CommandTSearch<CR>
        " n  <Plug>(CommandTMRU) * :CommandTMRU<CR>
        " n  <Plug>(CommandTLine) * :CommandTLine<CR>
        " n  <Plug>(CommandTCommand) * :CommandTCommand<CR>
        " n  <Plug>(CommandTHistory) * :CommandTHistory<CR>
        " n  <Plug>(CommandTBuffer) * :CommandTBuffer<CR>
        " n  <Plug>(CommandT) * :CommandT<CR>
        """""""""""""""""""""""""""""""""""""
        "colorscheme molokai
        "colorscheme vim-monokai-tasty
        "colorscheme candycode
        "colorscheme ayu
        "let ayucolor="dark"
        "----------------------------------------------------------------------------------
        " draw text-based things like lines, boxes, graphs, etc
        " Plug 'vim-scripts/DrawIt'

        "----------------------------------------------------------------------------------
        "Plug 'google/vim-searchindex'
        " let g:searchindex_improved_star=1
        "----------------------------------------------------------------------------------

        "??? (including [vim-vspec](https://github.com/kana/vim-vspec)-specific syntax)
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------

"---CommandT-------------------------------------------------------------------------------
        " <Leader>t provide fast, intuitive mechanism for opening files and buffers
        "nnoremap <silent> <Leader>t :CommandT<CR>
        "nnoremap <silent> <Leader>b :CommandTBuffer<CR>
        " <BS> <Del> -- delete
        " <Left> <C-h> -- move left.
        " <Right> <C-l> -- move right
        " <C-a> -- move to the start.
        " <C-e> -- move to the end.
        " <C-u> -- clear the contents of the prompt.
        " <Tab> -- switch focus between the file listing and prompt.
        " ---------------------------------------------------------
        "  <C-CR> <C-s> -- split open
        "  <C-v> -- vsplit
        "  <C-t> -- tab
        "  <C-j> <C-n> <Down> -- select next file in file listing.
        "  <C-k> <C-p> <Up> -- select previous file in file listing.
        "  <Esc> <C-c> -- cancel (dismisses file listing)

"==========================================================================================
        "-Setting lazyredraw causes a problem on startup
        " autocmd! vimrc VimEnter * redraw
"----------------------------------------------------------------------------------
        " move 5 lines at a time
        " noremap <c-down> 5<down>
        " noremap <c-up> 5<up>

        "Plug 'sjl/vim-sparkup'


"=======================================================================================================================
         Plug 'bps/vim-textobj-python'
         call textobj#user#map('python', {
                 \   'class': {
                 \     'select-a': '<buffer>ac',
                 \     'select-i': '<buffer>ic',
                 \     'move-n': '<buffer>]pc',
                 \     'move-p': '<buffer>[pc',
                 \   },
                 \   'function': {
                 \     'select-a': '<buffer>af',
                 \     'select-i': '<buffer>if',
                 \     'move-n': '<buffer>]pf',
                 \     'move-p': '<buffer>[pf',
                 \   }
                 \ })
         xmap af <Plug>(textobj-python-function-a)
         omap af <Plug>(textobj-python-function-a)
         xmap if <Plug>(textobj-python-function-i)
         omap if <Plug>(textobj-python-function-i)
         :TextobjPythonDefaultKeyMappings  :to redefine the default

"============================================================================================

"============================================================================================

"============================================================================================
        " <CR> : Insert new indented line after return if cursor in blank brackets
        "        or quotes.
        " <BS> : Delete brackets in pair
        " <M-p>: Toggle Autopairs (|g:AutoPairsShortcutToggle|)
        " <M-e>: Fast Wrap (|g:AutoPairsShortcutFastWrap|)
        " <M-n>: Jump to next closed pair (|g:AutoPairsShortcutJump|)
        " <M-b>: BackInsert (|g:AutoPairsShortcutBackInsert|)
"============================================================================================
        " \v: 'very magic', make every character except a-zA-Z0-9 and '_' have special meaning
        " use \v and \V to switch 'very magic' on or off.
        " \m, \M: 'magic' mode.
        " use \m and \M to switch 'magic' on or off.
"============================================================================================
        " The GNU bison parser generator (similar to YACC) generates a couple of
        " different types of errors. They start with the file name, then a colon. If
        " available, the linenumber comes next, followed by a dot (period) and the
        " column number. If appropriate, a dash and then another column number (giving a
        " column range) follows, and then a colon, space, and the error message.
"=======================================================================================================================
        " read/write a .viminfo file, don't store more
        " means that the current buffer can be put
        " to background without being written; and
        " that marks and undo history are preserved
"=======================================================================================================================
        " sd,sr, sa{motion/textobject}{addition}(normal and visual mode)
        " let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
        " Sandwiched text could be resolved into two parts, {surrounding} and {surrounded text}.
        " sa add surroundings: mapped to the key sequence sa
        " sd Delete surroundings: mapped to the key sequence sd
        " sr Replace surroundings: mapped to the key sequence sr
        " ib Search and select a sandwiched text automatically: mapped to the key sequence ib and ab
        " is Search and select a sandwiched text with query: mapped to the key sequence is and as
        " da" will delete a quoted sympy.pprint(string.)
        "(<b>'Sbandawitch'</b>)
"==========================================================================================
        " :SignatureListMarkers 1       : List only the '!' marker
        " :SignatureListMarkers @       : List only the '@' marker
        " :SignatureListMarkers 0, 2    : List only ) marker with 2 lines of context
        " :SignatureListMarkers '', 2   : List all markers with 2 lines of context
        " :SignatureListMarkers '!@', 2 : List only the '!' and '@' markers and show
"=======================================================================================================================
"=======================================================================================================================
"=======================================================================================================================
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
"=======================================================================================================================
"=======================================================================================================================
"=======================================================================================================================
        "===!!!============================================================================
        "Plug 'xerron/wordbyword.vim'

        "------------------------------------------------------------------------------------------
        " Plug 'vigoux/LanguageTool.nvim'
        " let g:languagetool_server='$HOME/LanguageTool-4.6-stable/languagetool-server.jar'
        " hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        " hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none

        ":::ALT-DEO:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'maralla/completor.vim'
        " Plug 'prabirshrestha/asyncomplete.vim'
        " Plug 'maralla/completor.vim'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"++AAACoc-Vista+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        " let g:vista#renderer#enable_icon = 1
        " " By default vista.vim never run if you don't call it explicitly.
        " " If you want to show the nearest function in your statusline automatically,
        " " you can add the following line to your vimrc
        " autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
        ":::IRENE::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-jedi', {'do': 'yarn install'}
        "------------------------------------------------------------------------------------------
        " Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++AAAcoc++}}}

"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'prabirshrestha/asyncomplete.vim'
        " Plug 'prabirshrestha/async.vim'
        " Plug 'prabirshrestha/vim-lsp'
        " Plug 'prabirshrestha/asyncomplete-lsp.vim'

        " if executable('pyls')
        "     " pip install python-language-server
        "     au User lsp_setup call lsp#register_server({
        "         \ 'name': 'pyls',
        "         \ 'cmd': {server_info->['pyls']},
        "         \ 'whitelist': ['python'],
        "         \ })
        " endif

        " inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
        " inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
        " inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"++AAAx++}}}
