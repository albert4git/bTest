
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
