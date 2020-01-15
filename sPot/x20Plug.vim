"******************************************************************************************************************
"+AAA+#Cina++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        "Plug 'vimim/vimim'
        "Plug 'cy2081/vim-cyim'
        "Plug 'vim-scripts/VimIM'
        "----------------------------------------------------------------------------------
"+bbb+}}}
"+AAA+#Cina++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        "Plug 'vimim/vimim'
        "Plug 'cy2081/vim-cyim'
        "Plug 'vim-scripts/VimIM'
        "----------------------------------------------------------------------------------
"+bbb+}}}
"+AAA+#DOCS++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'hallison/vim-rdoc'
        "==================================================================================
        Plug 'tweekmonster/helpful.vim'
        "==================================================================================
        Plug 'laurentgoudet/vim-howdoi.git'
        "==================================================================================

        " Plug 'rhysd/devdocs.vim'
        " nmap M <Plug>(devdocs-under-cursor)
        " let g:devdocs_host = 'localhost:9292'
        " git clone https://github.com/freeCodeCamp/devdocs.git && cd devdocs
        " gem install bundler
        " bundle install
        " bundle exec thor docs:download --default
        " bundle exec rackup
"+bbb+}}}
"+AAA+#COLOR+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'junegunn/limelight.vim'
        "------------------------------------------------------------------------------------------
        Plug 'nanotech/jellybeans.vim'
        "------------------------------------------------------------------------------------------
        "Plug 'endel/vim-github-colorscheme'
        "----------------------------------------------------------------------------------
        Plug 'chriskempson/base16-vim'
        Plug 'ayu-theme/ayu-vim' " or other package manager
        " colorscheme ayu
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme
        " let ayucolor="dark"   " for dark version of theme
        Plug 'trusktr/seti.vim'
        "===============================================================================
        Plug 'yarisgutierrez/ayu-lightline'
        Plug 'patstockwell/vim-monokai-tasty'
        Plug 'rafi/awesome-vim-colorschemes'
        Plug 'dracula/vim', { 'as': 'dracula' }
        "===============================================================================
        "colorscheme molokai
        "colorscheme vim-monokai-tasty
        "colorscheme candycode
        "colorscheme ayu
        "let ayucolor="dark"
        "===============================================================================
        "===============================================================================
        "===============================================================================
"+bbb+}}}
"+AAA+#FORMAT++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"==================================================================================
nmenu misc.beautify.for          :s/for\s*(\s*/for ( /<cr>:s/\s*)\s*$/ )/<cr>:s/\(\i\+\)\s*=\s*/\1 = /<cr>:s/\s*\([=<>!]=\\|[<>]\)\s*/ \1 /<cr>:s/\s*\(--\\|++\)/\1/<cr>:s/\s*;\s*/; /g<cr>
nmenu misc.beautify.func        :s/\s*)/ )/g<cr>:s/\s*\([(,]\)\s*/\1 /g<cr>:s/(\s\+)/()/g<cr>
nmenu misc.beautify.if              :s/if\s*(\s*/if ( /<cr>:s/\s*)\s*$/ )/<cr>:silent s/\s*\([=<>!]=\\|[<>]\)\s*/ \1 /<cr>
nmenu misc.beautify.assign      :s/\s*\([-+*\/&\|]\?\)\s*=\s*/ \1= /g<cr>
"==================================================================================
        "------------GALORE------------------------------------------------------------------------
        Plug 'AndrewRadev/splitjoin.vim'
        let g:splitjoin_split_mapping = ''
        let g:splitjoin_join_mapping = ''
        nmap <Leader>j :SplitjoinJoin<cr>
        nmap <Leader>s :SplitjoinSplit<cr>
        " foo 1, 2, { :bar => :baz }, { :baz => :qux }
        "===============================================================================
        Plug 'Yggdroot/indentLine'
                let g:indentLine_enabled = 1
                let g:indentLine_noConcealCursor='nc'
                let g:indentLine_color_term = 10
                let g:indentLine_color_gui = '#ffFF00'
                let g:indentLine_color_gui = '#ff5f00'
                "let g:indentLine_setConceal = 0
                let g:indentLine_bgcolor_term = 202
                let g:indentLine_faster = 1
                let g:indentLine_char = '|'
                let g:indentLine_first_char='|'
                let g:indentLine_showFirstIndentLevel=1
                let g:indentLine_fileTypeExclude = ['thumbnail', 'json', 'markdown']
        "===============================================================================
        vnoremap <silent> <M-{> >gv:<C-u>call Enclose('{', 1)<CR>
        vnoremap <silent> <M-3> >gv:<C-u>call Enclose('#', 1)<CR>
        vnoremap <silent> <M-/> :<C-u>call Enclose('/', 0)<CR>
        "----------------------------------------------------------------------------------
        " Visual mode functions
        function! Enclose(mode, indent)
                if a:mode == '{'
                        let start = '{'
                        let end = '}'
                elseif a:mode == '/'
                        if &ft == 'xml' || &ft == 'html'
                                let start = '<!--'
                                let end = '-->'
                        else
                                let start = '/**'
                                let end = '/**/'
                        endif
                endif
                let extra = ''
                if a:indent
                        let extra = "\<BS>"
                endif
                call cursor(line("'<"), col("'<"))
                execute "normal! O" . extra . start
                call cursor(line("'>"), col("'>"))
                execute "normal! o" . extra . end
        endfunction
        "==========================================================================================
"+bbb+}}}
"+AAA+#DENITE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        Plug 'Shougo/denite.nvim' " async version of unite.vim
        " Fzf seems cleaner and faster, and exists for zsh too.
        if ((has('nvim') || v:version > 799) && has('python3')) " for neovim or vim 8.0+
                Plug 'Shougo/denite.nvim' " async version of unite.vim
        else
                Plug 'Shougo/unite.vim'
        endif
"+bbb+}}}
"+AAA+#Unite+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        function! UltiSnipsCallUnite()
                Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
                return ''
        endfunction
        "----------------------------------------------------------------------------------
        "==================================================================
        "":UniteResume, :UniteBookmarkAdd,
        "call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
        "                        \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))
        ""==========================================================================================
        "call unite#filters#sorter_default#use(['sorter_rank'])
        "call unite#filters#matcher_default#use(['matcher_fuzzy'])
        "call unite#filters#matcher_default#use(['matcher_fzf'])

        "==================================================================
        " nnoremap <Leader>y :<C-u>Unite -buffer-name=neosnippet neosnippet<CR>
        " imap <C-s>    <Plug>(neosnippet_start_unite_snippet)
        "==================================================================
        nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
        nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
        nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>
        "--------------------------------------
        " Plug 'Shougo/unite.vim'
        " Plug 'tsukkee/unite-tag'
        " Plug 'SpaceVim/unite-ctags'
        " Plug 'Shougo/unite-outline/'
        " Plug 'tsukkee/unite-help'
        " Plug 'rstacruz/vim-fastunite'
        " Plug 'cskeeters/unite-fzf'
        " inoremap <F4> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
        "--------------------------------------
"+bbb+}}}
"+AAA+#XPLUG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        "===DATABASE=CONSOLE===============================================================
        "==================================================================================
        " Plug 'tpope/vim-dadbod'
        "==================================================================================
        " Plug 'chrisbra/unicode.vim', {'on': ['UnicodeName', 'UnicodeTable']}
        "==================================================================================
        " Plug 'ekalinin/Dockerfile.vim'
        "==================================================================================
        "============#NEXT=================================================================
        " Plug 'tpope/vim-characterize'
        "n-mode ga
        "==================================================================================
        " Plug 'twe4ked/vim-diff-toggle'
                " Pressing <Space> in diff buffers on
                " single line or visual selection will:
        "============================#NEXT===============================================
        "Plug 'rudrab/vimf90'
        "-Plug 'vim-scripts/CRefVim'
        "======[#ADVANCED]=================================================================
        " Plug 'junegunn/vim-pseudocl'

"+bbb++++++++++++++++ENDXPLUG++++}}}
"+AAA+#FuziOblique++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Comparison with vim-oblique
        " Plug 'junegunn/vim-slash'
        "--------------------------------------------------------
        " Plug 'junegunn/vim-oblique'
        "         hi! def link ObliqueCurrentMatch Keyword
        "         hi! def link ObliquePrompt       Structure
        "         hi! def link ObliqueLine         String
        "========================================================
        " autocmd! User Oblique       normal! zz
        " autocmd! User ObliqueStar   normal! zz
        " autocmd! User ObliqueRepeat normal! zz
                " hi! def link ObliqueCurrentMatch Keyword
                " hi! def link ObliquePrompt       Structure
                " hi! def link ObliqueLine         String
                " let g:oblique#clear_highlight =0
        "--------------------------------------------------------
"+bbb++}}}
"++AAA+#DB+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "===!!!Err=======================================
        " Plug 'cosminadrianpopescu/vim-sql-workbench'
        "===!!!==========================================
        " Plug 'lifepillar/pgsql.vim', {'for': 'sql'}
        "===============================================================================
        "postgres
        " Plug 'vpenkoff/vim-pg'
        " Plug 'vim-scripts/dbext.vim'
        " :'<,'>DBExecSQL    (or used the default map <Leader>se)
        "===============================================================================
        "===============================================================================
"++bbb++}}}
"++AAA+#MIX+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        "==================================================================================
        " randow
        " Plug 'amdt/vim-niji'

        "============================================================================================
        "------------------------------------------------------------------------------------------
        " Plug 'epheien/termdbg'
        "------------------------------------------------------------------------------------------
        " Plug 'guns/vim-sexp',    {'for': 'clojure'}
        "---------------------------------------------------------------------------------
        "Plug 'https://github.com/jsnal/vim-serape', { 'tag': 'v0.2.2' }
        "---------------------------------------------------------------------------------
        "Plug 'tyru/caw.vim'
        "Plug 'idanarye/vim-merginal'
        "Plug 'jtmkrueger/vim-c-cr'
        "---REST----------------------------------------------------------------------------
        "Plug 'notalex/vim-run-live'
        "Plug 'openuado/vimtips-fortune'
        "Plug 'twe4ked/vim-diff-toggle'
        "Plug 'szw/vim-dict'
        "Plug 'hsitz/PyScratch'
        "Plug 'amdt/vim-niji'
        "---------------------------------------------------------------------------------
        " Plug 'mkropat/vim-jumpthere'
        "---------------------------------------------------------------------------------
        "-Plug 'lyuts/vim-rtags'
        "---------------------------------------------------------------------------------
        " Plug 'Timoses/vim-venu'
        "----------------------------------------------------------------------------------


        "----------------------------------------------------------------------------------
        Plug 'dominikduda/vim_timebox'
        "------------------------------------------------------------------------------------------
        " Plug 'tyru/caw.vim'
        """""""""""""""""""""""""""""""""""""""""""""""""""""""
        Plug 'airblade/vim-rooter'
                let g:rooter_manual_only = 1
        "------------82Vim-------------------------------------------------------------------------
        " Plug 'vim/killersheep'
        "==================================================================================
        Plug 'szw/vim-dict'
        let g:dict_hosts = [
                                \["dict.org", []],
                                \["dict.mova.org", []]
                                \]
        "==================================================================================
"++bbb++}}}
"++AAA+#DEOALT+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        ":::ALT-DEO:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Plug 'maralla/completor.vim'
        " Plug 'prabirshrestha/asyncomplete.vim'
        " Plug 'maralla/completor.vim'
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++bbb++}}}
"++AAA+#FZF+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "============================================================================================
        " Any command that lists files can be used as the source
        " call fzf#run(fzf#wrap({'source': 'ls'}))
        " call fzf#run(fzf#wrap({'source': 'git ls-files'}))
        "---------------------------------------------------------------------------------
        " Plug 'tiagoinacio/fzf-bookmark.vim'

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



"++bbb++}}}
"++AAA+#CommandT+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "---------------------------------------------------------------------------------
        "-!- Plug 'lambdalisue/lista.nvim'
        " nnoremap <M-3> :<C-u>Lista<CR>
        " nnoremap <M-4> :<C-u>ListaCursorWord<CR>
        "------------------------------------------------------------------------------------------
        " Plug 'tacahiroy/ctrlp-funky'
        "         nnoremap <Leader>fu :CtrlPFunky<Cr>
        "         " narrow the list down with a word under cursor
        "         nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
        "------------------------------------------------------------------------------------------

        "---CommandT-----------------------------------------------------------------------
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
        """""""""""""""""""""""""""""""""""""
        " n  ;m    * :CtrlPMRU<CR>
        " n  ;p    * :CtrlP<CR>
        " n  ;h    * :CommandTHelp<CR>
        " n  ;j    * :CommandTJump<CR>
        """""""""""""""""""""""""""""""""""""
        " n  <Plug>(CommandTTag) * :CommandTTag<CR>
        " n  <Plug>(CommandTSearch) * :CommandTSearch<CR>
        " n  <Plug>(CommandTMRU) * :CommandTMRU<CR>
        " n  <Plug>(CommandTLine) * :CommandTLine<CR>
        " n  <Plug>(CommandTCommand) * :CommandTCommand<CR>
        " n  <Plug>(CommandTHistory) * :CommandTHistory<CR>
        " n  <Plug>(CommandTBuffer) * :CommandTBuffer<CR>
        " n  <Plug>(CommandT) * :CommandT<CR>
        """""""""""""""""""""""""""""""""""""
"++bbb++}}}
"-AAA-#CtrlP-----------------------------------------------------------------------------------------------------{{{
        " Plug 'nixprime/cpsm'
        Plug 'tacahiroy/ctrlp-funky'
        "         nnoremap <Leader>fu :CtrlPFunky<Cr>
        "         " narrow the list down with a word under cursor
                nnoremap <Leader>u :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
        "--------------------------------------

        let g:ctrlp_map='<c-q>'
        let g:ctrlp_cmd = 'CtrlPMRU'
        let g:ctrlp_extensions = ['tag']
        let g:ctrlp_match_window_bottom = 0
        let g:ctrlp_match_window_reversed = 0
        let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
        let g:ctrlp_dotfiles = 0
        let g:ctrlp_switch_buffer = 0
        let g:ctrlp_working_path_mode = 0
        let g:ctrlp_working_path_mode = 'ar'
        "-------------------------------------------------------------------------------
        "let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
        "nnoremap <silent> <C-o> :let g:cpsm_match_empty_query = 0<CR>:CtrlPMRU<CR>
        "nnoremap <silent> <C-p> :let g:cpsm_match_empty_query = 1<CR>:CtrlP<CR>
        "-------------------------------------------------------------------------------
        let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
        nnoremap <silent> <C-z> :let g:cpsm_match_empty_query = 0<CR>:CtrlPMRU<CR>
        nnoremap <silent> <C-p> :let g:cpsm_match_empty_query = 1<CR>:CtrlP<CR>
"-}}}
"++AAA+2Hulk+Signify++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "Plug 'mhinz/vim-signify'
        "Plug 'killphi/vim-textobj-signify-hunk'
        "        let g:signify_disable_by_default = 0
        "        let g:signify_vcs_list = [ 'git' ]
        "        let g:signify_realtime = 0
        "        let g:signify_sign_change = '~'
        "        nmap ]c <plug>(signify-next-hunk)
        "        nmap [c <plug>(signify-prev-hunk)
        "        omap ih <plug>(signify-motion-inner-pending)
        "        xmap ih <plug>(signify-motion-inner-visual)
        "        omap ah <plug>(signify-motion-outer-pending)
        "        xmap ah <plug>(signify-motion-outer-visual)
        "======================================================
        " signify
        " let g:signify_sign_show_text = 0
        " nnoremap <silent><leader>p :SignifyHunkDiff<cr>
        " nnoremap <silent><leader>u :SignifyHunkUndo<cr>
        " autocmd User SignifyAutocmds autocmd! signify CursorHold,CursorHoldI
        "? let g:signify_update_on_bufenter = 1
        "? let g:signify_update_on_focusgained = 1
        "======================================================
        " vmap it <Plug>(textobj-signify-hunk-i)
        " vmap ah <Plug>(textobj-gitgutter-a)
        "======================================================
"++AAA2Hulk++}}}
"++AAA+#TEXT-OBJECT-PYTHON+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        "==================================================================================
        "close []
        Plug 'jtmkrueger/vim-c-cr'
        "----------------------------------------------------------------------------------
        " Plug 'mustache/vim-mustache-handlebars'
                " - section movement mappings `[[` and `]]`
                " - text objects `ie` (inside element) and `ae` (around element)
        "----------------------------------------------------------------------------------
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
        " :TextobjPythonDefaultKeyMappings  :to redefine the default
"++AAA++}}}
"++AAA+#MD++#ORGANIZER++#ORG++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        " Plug 'itchyny/calendar.vim'
        "----------------------------------------------------------------------------------
        " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'markdown' }
        "--DF16----------------------------------------------------------------------------
        " Plug 'mivok/vimtodo'
        " Plug 'hsitz/VimOrganizer'
        " Plug 'xolox/vim-notes'
        "Plug 'dkarter/bullets.vim'
                "let g:bullets_enabled_file_types = [
                "\ 'markdown',
                "\ 'text',
                "\ 'scratch'
                "\]

"++bbb++}}}
"++AAA+#TPOPE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-bundler'
        Plug 'tpope/vim-projectionist'
        Plug 'tpope/vim-rake'
        Plug 'tpope/vim-rails'
        Plug 'tpope/vim-endwise'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-haml'
        Plug 'tpope/vim-eunuch'
        Plug 'tpope/vim-markdown'
        Plug 'tpope/vim-abolish'
        Plug 'tpope/vim-dadbod'
        Plug 'tpope/vim-rhubarb'
        Plug 'tpope/vim-cucumber'
        Plug 'tpope/vim-dispatch'
        "err Plug 'raimondi/delimitmate'
"++bbb++}}}
"++AAA+#LION++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        "============================================================================================
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/vim-easy-align'
        "============================================================================================
                "Plug 'Raimondi/delimitMate'
                        "let delimitMate_expand_cr = 2
                        "let delimitMate_expand_space = 1
                " " {{{
                "   let delimitMate_expand_cr = 2
                "   let delimitMate_expand_space = 1 " {|} => { | }
                " " }}}
        "------------------------------------------------------------------------------------------
                " Bracket completion
                " Same as delimitMate, but also completes unclosed brakcets when pressing enter for new line.
                Plug 'cohama/lexima.vim'
        "============================================================================================
                "Plug 'Townk/vim-autoclose' " No dot redo support
                "Plug 'jiangmiao/auto-pairs' " No dot redo support

                " complements bracket completion
                " surround selections with things like quotes, parens, brakcets, etc.
                " Plug 'tpope/vim-surround'

        "==!!!=============================================================================
        "Plug 'Townk/vim-autoclose' " No dot redo support
        "Plug 'jiangmiao/auto-pairs' " No dot redo support
        "==================================================================================
        " complements bracket completion
        " surround selections with things like quotes, parens, brakcets, etc.
        " Plug 'tpope/vim-surround'
        "==================================================================================
        " great text objects for selecting/changing parameters
        " Plug 'wellle/targets.vim'
        " Plug 'wellle/targets.vim'
        " Plug 'wellle/targets.vim'
        "==================================================================================
        " Presuming you meant vim-lion, and it looks great. I have been using tabular,
        " Plug 'tommcdo/vim-lion'
        " let g:lion_squeeze_spaces = 1

"++AAA++}}}
"++AAA+#Mathe+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        "-Maxima-
        "----------------------------------------------------------------------------------
        " Plug 'kovisoft/slimv'
        " Plug 'baruchel/vim-notebook'
        "----------------------------------------------------------------------------------
        " Plug 'jvirtanen/vim-octave'
        "==================================================================================
        " Plug 'rudrab/vimf90'
"++bbb++}}}
"++AAA+#SEARCH+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{

        "-Plug 'devjoe/vim-codequery'
        "---------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "Plug 'google/vim-searchindex'
        " let g:searchindex_improved_star=1
        "----------------------------------------------------------------------------------
        "send css js to browser !!!
        ":BLReloadPage
        "Plug 'jaxbot/browserlink.vim'
        "----------------------------------------------------------------------------------
        "Plug 'voldikss/vim-search-me'
        "Plug 'waiting-for-dev/vim-www'
        "---------#FRESH-------------------------------------------------------------------
        Plug 'unblevable/quick-scope' SUPER SLOW!+!!!! https://github.com/unblevable/quick-scope/issues/8
        "----------------------------------------------------------------------------------
        Plug 'mhinz/vim-lookup'
        " autocmd FileType vim nnoremap <buffer><silent> <c-]>  :call lookup#lookup()<cr>
        " autocmd FileType vim nnoremap <buffer><silent> <c-t>  :call lookup#pop()<cr>
        "==================================================================================
        "==================================================================================
        Plug 'voldikss/vim-search-me'
                " Type <Leader>s to trig searching in normal mode
                " nmap <silent> <Leader>s <Plug>SearchNormal
                " Type <Leader>s to search selected text in visual mode
                " vmap <silent> <Leader>s <Plug>SearchVisual
                " Type <Leader>S to input the text you want to search in the cmdline
                " nmap <silent> <Leader>S <Plug>SearchComand
                " :SearchCurrentText [search engine] Search text under the cursor
                " :SearchVisualText [search engine]  Search selected text
                " :Search [search engine] {text}     Search text (using specified search engine)
                " :SearchInGithub {text}             Search text in GitHub
                " :SearchInGoogle {text}             Search in Google
                " :SearchInGithub {text}             Search in GitHub
                " :SearchInSO {text}                 Search in Stackoverflow
                " :SearchInZhihu {text}              Search in Zhihu
                " :SearchInBaidu {text}              Search in Baidu
        "==========================================================================================
        "==========================================================================================
        "---FIREFOX---
        " www.ewb.de
        "===NOWO====================================================================================
        " nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
        " nnoremap <localleader>o :Utl<CR>
        " nnoremap ;o :Utl<CR>
        "==========================================================================================
"++bbb++}}}
"++AAA+#REPL+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
                Plug 'notalex/vim-run-live'
                let g:run_mode_map = '<Leader>r'
                let b:run_live_command = 'ruby'
                let b:run_live_command = 'python'
                let b:run_live_command = 'sh'
                " autocmd! FileType coffee let b:run_live_command = 'coffee'
                let g:run_live_remember_shell_command = 1
                let g:run_live_results_window_skip_threshold = 2
"++bbb++}}}
"++AAA+#LLINE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        hi statusline ctermbg=10 ctermfg=Black  cterm=bold guibg=custGreen
        hi StatusLineNC  ctermbg=5 ctermfg=0 cterm=NONE
        "----------------------------------------------------------------------------------
        Plug 'mengelbrecht/lightline-bufferline'
        autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
        let g:lightline#bufferline#show_number  = 1
        let g:lightline#bufferline#shorten_path = 0
        let g:lightline#bufferline#unnamed      = '[No Name]'

        let g:lightline                  = {}
        let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
        let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
        let g:lightline.component_type   = {'buffers': 'tabsel'}
        "**********************************************************************************
        "===COOL-BUNT======================================================================
        " Plug 'vim-airline/vim-airline'
        " Plug 'vim-airline/vim-airline-themes'
        " set laststatus=2
        " let g:airline_powerline_fonts = 1
        " let g:airline#extensions#ale#enabled = 1
        " let g:airline_theme = 'cool'
        " let g:airline_section_c = '%{strftime("%Y %b %d %X")}'
        " let g:airline#extensions#tabline#enabled = 1
        " let g:airline#extensions#tabline#buffer_min_count = 1
        " let g:airline#extensions#hunks#enabled=1
        "----------------------------------------------------------------------------------
        " ?COC?
        " let g:airline#extensions#coc#enabled = 1
        " let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
        " let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        " Plug 'itchyny/lightline.vim'
        " Plug 'yarisgutierrez/ayu-lightline'
        " " \ 'colorscheme': 'molokai',
        " let g:lightline = {
        "                         \ 'active': {
        "                         \   'left': [ [ 'mode', 'paste' ],
        "                         \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        "                         \ },
        "                         \ 'component_function': {
        "                         \   'gitbranch': 'fugitive#head'
        "                         \ },
        "                         \ }
        "----------------------------------------------------------------------------------
        let g:airline_theme="base16"
        let g:airline_highlighting_cache=1
        let g:airline#extensions#tabline#enabled=1
        let g:airline#extensions#syntastic#enabled=0
        let g:airline#extensions#tagbar#enabled=0
        let g:airline#extensions#hunks#enabled=0
        let g:airline#extensions#branch#displayed_head_limit=12
        let g:airline#extensions#branch#sha1_len=8
        let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']
        let g:airline#extensions#taboo#enabled=1
        let g:airline#extensions#ale#enabled=0
        let g:airline#extensions#hunks#enabled=0

        let g:airline_powerline_fonts=0
        let g:airline_left_sep='▙'
        let g:airline_right_sep='▟'
        let g:airline_mode_map={
        if !exists('g:airline_symbols')
        let g:airline_symbols={}
        let g:airline_symbols.spell='✓'
        let g:airline_section_z='%4l/%L'
        "----------------------------------------------------------------------------------
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " map tr :call airline#extensions#stopwatch#run()<CR>
        " map tp :call airline#extensions#stopwatch#split()<CR>
        " map ts :call airline#extensions#stopwatch#stop()<CR>
        " map tt :call airline#extensions#stopwatch#reset()<CR>
        " map ty :call airline#extensions#stopwatch#summary()<CR>
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "----------------------------------------------------------------------------------
        "Plug 'vim-airline/vim-airline'
        "Plug 'vim-airline/vim-airline-themes'
        "" Plug 'ffanzhang/vim-airline-stopwatch'
        "Plug 'Zuckonit/vim-airline-tomato'
        "let g:airline_theme='cool'
        "let g:tomato#interval = 60 * 20
        "let g:tomato#show_clock = 1
        "let g:tomato#remind = "☻"
        "let g:tomato#restinfo = "☺"
        "let g:tomato#show_clock = 1
        "let g:tomato#show_count_down = 1

        "----------------------------------------------------------------------------------
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "        let g:airline_theme='cool'
        "        set showmode                "-Display the current mode
        "        set showcmd                 "-Show partial commands in status line
        "        "--------------------------------------------------------------------------
        "        let g:airline_section_c = '%{strftime("%b %d %X")}'
        "        let g:airline#extensions#tabline#enabled = 1
        "        let g:airline#extensions#tabline#buffer_min_count = 1
        "        "-----------------------------------------------------------
        "        let g:airline#extensions#branch#enabled = 1
        "        "-----------------------------------------------------------
        "        let g:airline#extensions#tagbar#enabled=1
        "        let g:airline#extensions#hunks#enabled=1
        "        let g:airline#extensions#branch#displayed_head_limit=12
        "        let g:airline#extensions#branch#sha1_len=8
        "        let g:airline#extensions#whitespace#checks=['indent', 'mixed-indent-file']
        "        let g:airline#extensions#taboo#enabled=1
        "        let g:airline#extensions#ale#enabled=1
        "----------------------------------------------------------------------------------
        " let g:airline_powerline_fonts=1
        " let g:airline_left_sep='▙'
        " let g:airline_right_sep='▟'
        "-----------------------------------------------------------
        " if !exists('g:airline_symbols')
        "         let g:airline_symbols = {}
        " endif
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "----------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#WIN+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"----------------------------------------------------------------------------------
        set cursorline " highlight the current line. Needed for the next plugin to work.
        Plug 'vim-scripts/CursorLineCurrentWindow'
"----------------------------------------------------------------------------------
        let g:indentLine_enabled = 1
        let g:indent_guides_auto_colors = 1
        let g:indent_guides_enable_on_vim_startup = v:true

        let g:indent_guides_exclude_filetypes = ['help', 'man']

        let g:indent_guides_enable_on_vim_startup = 1
        let g:indent_guides_color_change_percent = 20
        let g:indent_guides_guide_size = 1

        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        nnoremap <M-q> :quit<CR>
        inoremap <silent> <M-q> <C-o>:quit<CR>
        nnoremap <M-Q> :quit!<CR>
        inoremap <silent> <M-Q> <C-o>:quit!<CR>

        " nnoremap <C-z> yy:<C-r>"<cr>
        " nnoremap ;y yy:<C-r>"<cr>

        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "---------------------------------------------------------------------------------
                Plug 'kshenoy/vim-origami'
                " `<count>Za`  Align all folds of level 'count'
                "         `ZA`  Align all folds
                " `<count>ZF`  Insert a start foldmarker of level 'count' at the end of line and comment it
                " `<count>Zf`  Insert a start foldmarker of level 'count' at the end of line but don't comment it
                " `<count>ZC`  Insert an end  foldmarker of level 'count' at the end of line and comment it
                " `<count>Zc`  Insert an end  foldmarker of level 'count' at the end of line but don't comment it
                "         `ZD`  Delete the foldmarker from the line
                "==========================================================================================
                let g:OrigamiMap = {
                        \ 'Leader'           : "Z",
                        \ 'Align'            : "Z",
                        \ 'AlignAll'         : "A",
                        \ 'CommentedOpen'    : "F",
                        \ 'UncommentedOpen'  : "f",
                        \ 'CommentedClose'   : "C",
                        \ 'UncommentedClose' : "c",
                        \ 'Delete'           : "D",
                        \ }
        "---------------------------------------------------------------------------------
        " move 5 lines at a time
        " noremap <c-down> 5<down>
        " noremap <c-up> 5<up>
        "===!!!============================================================================
        "Plug '907th/vim-auto-save'
        "let g:auto_save = 1
        "===!!!============================================================================
        "===openFileWithSameBasenameDifferentExtension=============================================
        "nnoremap <expr> ,R  ":e ".expand("%:r")."."
        "==========================================================================================
        "============================================================================================
        " :call halo#run()
        " :call halo#run({'shape': 'cross2halo1'})
        " :call halo#run({'intervals': [100, 300, 600, 300, 100]})
        " :call halo#run({'intervals': [200,200,200], 'hlgroup': 'IncSearch'})
        " autocmd BufEnter * call halo#run()
        " autocmd BufEnter * call halo#run({'shape': 'cross2halo1'})
        " autocmd BufEnter * call halo#run({'intervals': [200,200,200], 'hlgroup': 'IncSearch'})
        "============================================================================================
        " Plug 'danro/rename.vim'
        " Plug 'uarun/vim-protobuf'
        " Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}
        "----------------------------------------------------------------------------------
        "---Perfection - Continuity------
        Plug 'terryma/vim-smooth-scroll'
        noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
        noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
        noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
        noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"++bbb++}}}
"++AAA+#BackUP+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "---------------------------------------------------------------------------------
        let s:VIMROOT = $HOME."/.vim"
        let &runtimepath=s:VIMROOT."," . &runtimepath
        let &runtimepath=s:VIMROOT."/bundle/vim-plug," . &runtimepath

        if glob(s:VIMROOT."/bundle/vim-plug/") != "" " if Plug exists
                " BEGIN PLUGIN MANAGEMENT:
                if has('vim_starting')
                        let &runtimepath=s:VIMROOT."/bundle/vim-plug," . &runtimepath
                        runtime plug.vim
                endif
        "---------------------------------------------------------------------------------
        "
        " Create necessary folders if they don't already exist.
        if exists("*mkdir")
        silent! call mkdir(s:VIMROOT, "p")
        silent! call mkdir(s:VIMROOT."/bundle", "p")
        silent! call mkdir(s:VIMROOT."/swap", "p")
        silent! call mkdir(s:VIMROOT."/undo", "p")
        silent! call mkdir(s:VIMROOT."/backup", "p")
        else
        echo "Error: Create the directories ".s:VIMROOT."/, ".s:VIMROOT."/bundle/, ".s:VIMROOT."/undo/, ".s:VIMROOT."/backup/, and ".s:VIMROOT."/swap/ first."
        exit
        endif

        let &backupdir=s:VIMROOT.'/backup//' " double slash means make the filenames unique.
        set noswapfile
        let &directory=s:VIMROOT.'/swap//' " double slash means make the filenames unique.
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------

"++bbb++}}} 
"++AAA+#BASH+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
# Use Neovim as "preferred editor"
        export VISUAL=nvim
# Use Neovim instead of Vim or Vi
        alias vim=nvim
        alias vi=nvim
"++bbb++}}} 
"++AAA+#VIM++#SYS+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        " Enable tooltips:
        " if has('balloon_eval')
        "         set ballooneval
        " endif
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        " Set "very magic" for all searches.
        "Plug 'coot/EnchantedVim'
        let g:VeryMagic = 0
        " Turn on all other features.
        let g:VeryMagicSubstituteNormalise = 1
        let g:VeryMagicSubstitute = 1
        let g:VeryMagicGlobal = 1
        let g:VeryMagicVimGrep = 1
        let g:VeryMagicSearchArg = 1
        let g:VeryMagicFunction = 1
        let g:VeryMagicHelpgrep = 1
        let g:VeryMagicRange = 1
        let g:VeryMagicEscapeBackslashesInSearchArg = 1
        let g:SortEditArgs = 1

        " no-magic searching
        nnoremap / /\V
        nnoremap ? ?\V
        vnoremap / /\V
        vnoremap ? ?\V

        " If using incsearch:
        noremap <leader>/ /\v
        noremap <leader>? ?\v
        vnoremap <leader>/ /\v
        vnoremap <leader>? ?\v
        "---------------------------------------------------------------------------------
        " Plug 'bfredl/nvim-miniyank'
        "---------------------------------------------------------------------------------
        " Plug 'osyo-manga/vim-anzu'
        "------------------------------------------------------------------------------------------
        " Plug 'sunaku/vim-shortcut'
        "------------------------------------------------------------------------------------------
        "============================================================================================
        " Plug 'editorconfig/editorconfig-vim'
"++bbb++}}}
"++AAA+#ProgMix+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Other
        Plug 'tomlion/vim-solidity', {'for': 'solidity'}
        Plug 'hashivim/vim-terraform', {'for': 'terraform'}
        Plug 'wannesm/wmgraphviz.vim'
        Plug 'amadeus/vim-mjml'
        Plug 'dart-lang/dart-vim-plugin'

        "----------------------------------------------------------------------------------
        " Plug 'rust-lang/rust.vim', {'for': 'rust'}
        " Plug 'rhysd/rust-doc.vim', {'for': 'rust'}
        "----------------------------------------------------------------------------------
        " Plug 'mattn/emmet-vim', {'for': 'html'}
        " Plug 'elixir-lang/vim-elixir'
        "----------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#GIT+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'rhysd/committia.vim'
        "============[#FRESH]======================================================================
        Plug 'vlmarek/DiffGoFile'
        " nnoremap <silent><buffer> <C-]>      :call DiffGoFile('n')<CR>
        " nnoremap <silent><buffer> <C-W><C-]> :call DiffGoFile('v')<CR>
        " nnoremap <silent><buffer> <C-W>]     :call DiffGoFile('v')<CR>
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
"++bbb++}}}
"++AAA+#IDE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'dmonllao/vim-IDE'
        Plug 'dmonllao/vim-IDE'
        Plug 'dmonllao/vim-IDE'
        Plug 'dmonllao/vim-IDE'
        Plug 'mkropat/vim-jumpthere'
"++bbb++}}}
"++AAA+#Project++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'vimplugin/project.vim'
        "------------------------------------------------------------------
        Plug 'kristijanhusak/vim-project-lint'
        "------------------------------------------------------------------
        Plug 'daniel-samson/project-tree.vim'
        "------------------------------------------------------------------
        "-Plug 'amiorin/vim-project'
"++bbb++}}}
"++AAA+#CSS+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " CSS
        Plug 'JulesWang/css.vim', {'for': 'css'}
        Plug 'othree/csscomplete.vim', {'for': 'css'}
        Plug 'ap/vim-css-color', {'for': 'css'}
        "----------------------------------------------------------------------------------
        " Plug 'AndrewRadev/tagalong.vim', {'for': 'html'}
"++bbb++}}}
"++AAA+#RUBY+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "============================================================================================
        " Ruby
        "----------------------------------------------------------------------------------
        "-Plug 'tpope/vim-rake'
        "-Plug 'tpope/vim-rails'
        " Plug 'vim-ruby/vim-ruby'
        Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
        Plug 'tpope/vim-endwise', {'for': 'ruby'}
        Plug 'nelstrom/vim-textobj-rubyblock', {'for': 'ruby'}
        Plug 'nelstrom/vim-textobj-rubyblock'
        Plug 'danchoi/ri.vim'
"++bbb++}}}
"++AAA+#Type+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Javascript
        Plug 'pangloss/vim-javascript', {'for': 'javascript'}
        Plug 'styled-components/vim-styled-components', {'for': ['javascript', 'typescript', 'typescript.tsx']}
        Plug 'pangloss/vim-javascript'
        Plug 'mxw/vim-jsx'
        " Typescript
        Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

"++bbb++}}}
"++AAA+#PHP+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "===================================================================================
        "----------------------------------------------------------------------------------
        "-PHP-Projectionist-
        " Plug 'noahfrederick/vim-composer'
        "===================================================================================
        " Plug 'StanAngeloff/php.vim'
        " Plug 'squizlabs/PHP_CodeSniffer'
        " Plug 'LucHermitte/lh-cpp'
        "----------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#CLOJURE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------------------------------------------------------------------------------
        " Plug 'liquidz/vim-iced', {'for': 'clojure'}
        "------------------------------------------------------------------------------------------
        " Plug 'liquidz/vim-iced', {'for': 'clojure'}
        "------------------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#TPYTHON+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "no Python
        "no Plug 'vim-python/python-syntax', {'for': 'python'}
        "==========================================================================================
        "Err Plug 'psf/black'
        " Plug 'psf/black', {'for': 'python'}
                " autocmd BufWritePre *.py execute ':Black'
                " nnoremap <F9> :Black<CR>
        "------------------------------------------------------------------------------------------
        " Plug 'jacobsimpson/nvim-example-python-plugin'
"++bbb++}}}
"++AAA+#GO+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Golang
        Plug 'fatih/vim-go', {'for': 'go'}
        "" Go Lang Bundle
        " Plug 'fatih/vim-go'
        " Plug 'tweekmonster/hl-goimport.vim'
        " Plug 'buoto/gotests-vim'
"++bbb++}}}
"++AAA+#JuneGunn+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'easymotion/vim-easymotion', {'on': '<plug>(easymotion-s2)'}
        Plug 'easymotion/vim-easymotion'
        Plug 'junegunn/fzf', has('win32') ? {} : {'on': 'FZF', 'dir': '~/local/fzf', 'do': './install --bin'}
        Plug 'junegunn/gv.vim', {'on': 'GV'}
        Plug 'junegunn/vader.vim'
        Plug 'junegunn/vim-easy-align', {'on': '<plug>(LiveEasyAlign)'}
        Plug 'junegunn/vim-plug'
        Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
        Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
        "----------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#MHINZ+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " Plug 'mhinz/vim-crates'
        " Plug 'mhinz/vim-grepper'
        " Plug 'mhinz/vim-mix-format'
        " Plug 'mhinz/vim-rfc'
        " Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}
        " Plug 'mhinz/vim-signify'
        " Plug 'mhinz/vim-startify'
        " Plug 'mhinz/vim-tree'
        "----------------------------------------------------------------------------------
        "Err Plug 'mhinz/nvim-panacea', {'for': 'elixir'}
        "Err Plug 'mhinz/nvim-langserver'
        "----------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#DRAW++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "Err Plug 'xavierchow/vim-sequence-diagram'
        "============================================================================================
        "pdf-graph
        " Plug 'BurntSushi/erd'
        " Plug 'abaldwin88/roamer.vim'
        "----------------------------------------------------------------------------------
        " draw text-based things like lines, boxes, graphs, etc
        " Plug 'vim-scripts/DrawIt'

"++bbb++}}}
"++AAA+#SNIPP+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "---------------------------------------------------------------------------------
        " Plug 'KeyboardFire/vim-minisnip'
        " Plug 'joereynolds/deoplete-minisnip'
        " let g:minisnip_trigger = '<M-4>'
        "----------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#CleverTab+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        "???
        " vim-clevertab performs exactly how I want:
        "----------------------------------------------------------------------
        let s:types = ['start', 'tab', 'keyword', 'omni', 'dictionary', 'stop']
        if has('pythonx') && v:version >= 704
                let s:types = insert(s:types, 'ultisnips', 2)
        endif
        execute "inoremap <silent> <Tab> " .
                                \ join(map(s:types,
                                \
        {_, v -> '<C-r>=CleverTab#Complete("' . v . '")<CR>'}),
                                \
        "")
        inoremap <silent> <S-Tab> <C-r>=CleverTab#Complete('prev')<CR>
        "----------------------------------------------------------------------------------
"++bbb++}}} 
"++AAA+#GAME+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "---------------------------------------------------------------------------------
        " Plug 'uguu-org/vim-matrix-screensaver'
        " Plug 'vim-scripts/TeTrIs.vim'
        " Plug 'pravj/vingvong'
        "---------------------------------------------------------------------------------
"++bbb++}}}
"++AAA+#AUTO++#COMMANDS++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        command! -nargs=0 Tsc    :CocCommand tsserver.watchBuild
        "==================================================================================
        find . -name '*.java' > cscope.files
        "==================================================================================
        "==================================================================================================
        " ctags -R --fields=+l --languages=python --python-kinds=-iv -f /.tags ./
        "==================================================================================================

        "----------------------------------------------------------------------------------
        " Beautify json.
        command JsonFormat %!python -m json.tool
        " Reverse all lines.
        command Reverse g/^/m0
        "----------------------------------------------------------------------------------

        :nmap <F2> "=strftime('%c')<C-M>p
        :imap <F2> <C-R>=strftime('%c')<C-M>
        " generate Number sequ
        put =map(range(1,150), 'printf(''%04d'', v:val)')
        for i in range(1,10) | put ='192.168.0.'.i | endfor
        "===???======================================================================================
        command! NpmRestart call jobsend(1, "\<C-c>npm run server\<CR>")
        command! ApaStart call jobsend(1, "\<C-c>apachectl start\<CR>")
        ":Restart
        augroup ft_django
                au!
                au BufNewFile,BufRead urls.py           setlocal nowrap
                au BufNewFile,BufRead urls.py           normal! zR
                au BufNewFile,BufRead dashboard.py      normal! zR
                au BufNewFile,BufRead local_settings.py normal! zR
                au BufNewFile,BufRead admin.py     setlocal filetype=python.django
                au BufNewFile,BufRead urls.py      setlocal filetype=python.django
                au BufNewFile,BufRead models.py    setlocal filetype=python.django
                au BufNewFile,BufRead views.py     setlocal filetype=python.django
                au BufNewFile,BufRead settings.py  setlocal filetype=python.django
                au BufNewFile,BufRead settings.py  setlocal foldmethod=marker
                au BufNewFile,BufRead forms.py     setlocal filetype=python.django
                au BufNewFile,BufRead common_settings.py  setlocal filetype=python.django
                au BufNewFile,BufRead common_settings.py  setlocal foldmethod=marker
        augroup END
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
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        " autocmd FileType python setlocal omnifunc=lsp#complete
        " autocmd! FileType typescript setlocal omnifunc=coc#completions
        " autocmd! FileType python setlocal omnifunc=pythoncomplete#Complete
        " autocmd! FileType python setlocal omnifunc=jedi#completions
        " autocmd! FileType python setlocal completeopt+=menu,preview
        "---------------------------------------------------------------------------------
        "=autocmd! FileType python setlocal completeopt+=preview
        "=autocmd! FileType python setlocal omnifunc=coc#completions
        "==========================================================================================
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "==========================================================================================
        "---------------------------------------------------------------
        :com -complete=custom,ListUsers -nargs=1 Finger !finger <args>
        fun ListUsers(A,L,P)
                return system("cut -d: -f1 /etc/passwd")
        endfun
        "---------------------------------------------------------------
        "---------------------------------------------------------------
        command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
        "---------------------------------------------------------------
"++bbb++}}}
"++AAA+#WhichKey+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
"----------------------------------------------------------------------------------
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" autocmd User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
"--IRENE----------------------------------------------------------------------------
"==========================================================================================
" source ~/git/bTest/kDot/sWhich8Key.vim
"        nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"        nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
"        nnoremap <silent> ; :<c-u>WhichKey  ';'<CR>
"==========================================================================================

let g:which_key_sep = get(g:, 'which_key_sep', '→')
let g:which_key_hspace = get(g:, 'which_key_hspace', 5)
let g:which_key_flatten = get(g:, 'which_key_flatten', 1)
let g:which_key_timeout = get(g:, 'which_key_timeout', &timeoutlen)
let g:which_key_max_size = get(g:, 'which_key_max_size', 0)
let g:which_key_vertical = get(g:, 'which_key_vertical', 0)
let g:which_key_position = get(g:, 'which_key_position', 'botright')
let g:which_key_sort_horizontal = get(g:, 'which_key_sort_horizontal', 0)
let g:which_key_run_map_on_popup = get(g:, 'which_key_run_map_on_popup', 1)
let g:which_key_align_by_seperator = get(g:, 'which_key_align_by_seperator', 1)
let g:which_key_ignore_invalid_key = get(g:, 'which_key_ignore_invalid_key', 1)
let g:which_key_default_group_name = get(g:, 'which_key_default_group_name', '+prefix')
let g:which_key_use_floating_win = (exists('*nvim_open_win') || exists('*popup_create')) && get(g:, 'which_key_use_floating_win', 1)
let g:WhichKeyFormatFunc = get(g:, 'WhichKeyFormatFunc', function('which_key#util#format'))

command! -bang -nargs=1 WhichKey call which_key#start(0, <bang>0, <args>)
command! -bang -nargs=1 -range WhichKeyVisual call which_key#start(1, <bang>0, <args>)

let &cpo = s:save_cpo
unlet s:save_cpo
"==================================================================================
" Define prefix dictionary
let g:which_key_map =  {}

" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

let g:which_key_map.f = { 'name' : '+file' }

nnoremap <silent> <leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'

nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
let g:which_key_map.f.d = 'open-vimrc'

nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
let g:which_key_map.o = {
\ 'name' : '+open',
\ 'q' : 'open-quickfix'    ,
\ 'l' : 'open-locationlist',
\ }

" =======================================================
" Create menus not based on existing mappings:
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.) and descriptions for existing mappings
let g:which_key_map.b = {
\ 'name' : '+buffer' ,
\ '1' : ['b1'        , 'buffer 1']        ,
\ '2' : ['b2'        , 'buffer 2']        ,
\ 'd' : ['bd'        , 'delete-buffer']   ,
\ 'f' : ['bfirst'    , 'first-buffer']    ,
\ 'h' : ['Startify'  , 'home-buffer']     ,
\ 'l' : ['blast'     , 'last-buffer']     ,
\ 'n' : ['bnext'     , 'next-buffer']     ,
\ 'p' : ['bprevious' , 'previous-buffer'] ,
\ '?' : ['Buffers'   , 'fzf-buffer']      ,
\ }

let g:which_key_map.l = {
\ 'name' : '+lsp',
\ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
\ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
\ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
\ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
\ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
\ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
        \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
        \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
        \ },
\ }

"----------------------------------------------------------------------------------
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
"++bbb++EWhichKeu+++++++++++}}}
"++AAA+#LSP++#VISTA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==================================================================================
        let g:lsp_signs_enabled = 1
        let g:lsp_diagnostics_echo_cursor = 1
        let g:lsp_signs_error = {'text': '✗'}
        let g:lsp_signs_warning = {'text': '‼', 'icon': '/path/to/some/icon'}
        let g:lsp_signs_hint = {'icon': '/path/to/some/other/icon'}
        let g:lsp_highlights_enabled = 0
        let g:lsp_textprop_enabled = 0
        let g:lsp_virtual_text_enabled = 0
        let g:lsp_highlight_references_enabled = 1
        highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "---------------------------------------------------------
        " highlight link LspErrorHighlight customAAA
        " highlight link LspWarningHighlight customBBB
        " highlight link LspInformationHighlight customGGG
        " highlight link LspHintHighlight customOOO
        " highlight link LspErrorText customAAA
        "---------------------------------------------------------
        " autocmd FileType python,go nmap gd <plug>(lsp-definition)
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


        "=============================================================================================================
        "===Vista===================================================================================================
        "=============================================================================================================
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

         function! NearestMethodOrFunction() abort
                 return get(b:, 'vista_nearest_method_or_function', '')
         endfunction

         set statusline+=%{NearestMethodOrFunction()}

         let s:save_cpo = &cpo
         set cpo&vim
        "=============================================================================================================

        "==================================================================================
        " Set the executive for some filetypes explicitly. Use the explicit executive
        " instead of the default one for these filetypes when using `:Vista` without
        " specifying the executive.
        let g:vista_executive_for = {
        \ 'cpp': 'vim_lsp',
        \ 'php': 'vim_lsp',
        \ }

        " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
        let g:vista#renderer#enable_icon = 1

        " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
        let g:vista#renderer#icons = {
        \   "function": "\uf794",
        \   "variable": "\uf71b",
        \  }
        "==================================================================================
"++bbb++}}}
"++AAA+#DISARM+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
* `:PP`: Pretty print.  With no argument, acts as a REPL.
* `:Runtime`: Reload runtime files.  Like `:runtime!`, but it unlets any
  include guards first.
* `:Disarm`: Remove a runtime file's maps, commands, and autocommands,
  effectively disabling it.
* `:Scriptnames`: Load `:scriptnames` into the quickfix list.
* `:Messages`: Load `:messages` into the quickfix list, with stack trace
  parsing.
* `:Verbose`: Capture the output of a `:verbose` invocation into the preview
  window.
* `:Time`: Measure how long a command takes.
* `:Breakadd`: Like its lowercase cousin, but makes it much easier to set
  breakpoints inside functions.  Also `:Breakdel`.
* `:Vedit`: Edit a file relative the runtime path. For example,
  `:Vedit plugin/scriptease.vim`. Also, `:Vsplit`, `:Vtabedit`, etc.
  Extracted from [pathogen.vim](https://github.com/tpope/vim-pathogen).
* `K`: Look up the `:help` for the VimL construct under the cursor.
* `zS`: Show the active syntax highlighting groups under the cursor.
* `g=`: Eval a motion or selection as VimL and replace it with the result.
  This is handy for doing math, even outside of VimL.
* Projections for
"++bbb++}}} 
"++AAA+#ALE+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        Plug 'w0rp/ale'
        "==================================================================================
        let g:ale_fixers = {
                                \    'ruby': ['standardrb'],
                                \}
        let g:ale_fix_on_save = 1

        let g:ale_linters = {
                                \   'ruby': ['standardrb', 'rubocop'],
                                \   'python': ['flake8', 'pylint'],
                                \   'javascript': ['eslint'],
                                \}
        "==================================================================================
        if (&termencoding ==# 'utf-8') || has('gui_running')
                let g:ale_sign_error = ''
                let g:ale_sign_warning = ''
                let g:ale_sign_info = ''
                let g:ale_sign_style_error = ''
                let g:ale_sign_style_warning = ''
        endif
        if has('gui_running')
                for s:k in ['Error', 'Info', 'Warning']
                        execute 'sign define ALE' . s:k . 'Sign icon=' .
                                                \ expand('~/.vim/icons/' . tolower(s:k) . '.png')
                endfor
        endif
        "==================================================================================
        "==================================================================================
        "==================================================================================

"++bbb++}}} 
"++AAA+#Clap++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
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
        hi ClapDefaultPreview          ctermbg=237 guibg=#3E4452
        hi ClapDefaultSelected         cterm=bold,underline gui=bold,underline ctermfg=80 guifg=#5fd7d7
        hi ClapDefaultCurrentSelection cterm=bold gui=bold ctermfg=224 guifg=#ffd7d7
        "========================================================
        hi default link ClapPreview          ClapDefaultPreview
        hi default link ClapSelected         ClapDefaultSelected
        hi default link ClapCurrentSelection ClapDefaultCurrentSelection
        "==================================================================================
"++AAAClap++}}}
"++AAA+#NMAP++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        nnoremap <F6> :ScratchPreview<CR>
        nnoremap <F7> :Scratch<CR>
        " Replace text
        nnoremap gr" vi":s/
        nnoremap gr) vi):s/
        nnoremap gr> vi>:s/
        nnoremap gr] vi]:s/
        nnoremap gra ggvG:s/
        nnoremap grl 0v$:s/
        nnoremap gg vip:s/
        nnoremap gf vis:s/
        nnoremap gr} vi}:s/
        "----------------------------------------------------------------------------------
        vnoremap <silent> <M-{> >gv:<C-u>call Enclose('{', 1)<CR>
        vnoremap <silent> <M-3> >gv:<C-u>call Enclose('#', 1)<CR>
        vnoremap <silent> <M-/> :<C-u>call Enclose('/', 0)<CR>
        "----------------------------------------------------------------------------------
        ":::???::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        let g:dsf_no_mappings = 1
        nmap dsf <Plug>DsfDelete
        nmap csf <Plug>DsfChange
        nmap dsnf <Plug>DsfNextDelete
        nmap csnf <Plug>DsfNextChange
        omap af <Plug>DsfTextObjectA
        xmap af <Plug>DsfTextObjectA
        omap if <Plug>DsfTextObjectI
        xmap if <Plug>DsfTextObjectI
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " Type <Leader>s to trig searching in normal mode
        nmap <silent> <Leader>s <Plug>SearchNormal
        " Type <Leader>s to search selected text in visual mode
        vmap <silent> <Leader>s <Plug>SearchVisual
        " Type <Leader>S to input the text you want to search in the cmdline
        nmap <silent> <Leader>S <Plug>SearchComand
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"++bbb++}}} 
"++AAA+#IMODE++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "==========================================================================================
        " C-c and C-v - Copy/Paste to global clipboard
        vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]ppp
        " map p <Plug>(miniyank-autoput)
        " map P <Plug>(miniyank-autoPut)
        "==========================================================================================
        imap <c-7> <plug>(fzf-complete-path)
        imap <c-k> <plug>(fzf-complete-word)
        imap <C-8> <plug>(fzf-complete-file-ag)
        imap <expr><M-0> fzf#vim#complete('cat /usr/share/dict/words')
        "========================================================
        "-SWITCH TO THE DIRECTORY OF THE OPEN BUFFER
        map cd :cd %:p:h<cr>
        "==========================================================================================
"++bbb++}}} 
"++AAA+#Money++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "----------------------------------------------------------------------------------
        " vim-lost
        " let g:plug_url_format = 'git@github.com:%s.git'
        "----------------------------------------------------------------------------------
        " npm install sqlanywhere
        "----------------------------------------------------------------------------------
        " Since teaching a lesson on pytest in our 100 Days of Code course I discovered
        " coverage and made this alias in my .vimrc to simply check it with one keystroke:
        " nmap ,t :w<CR>:!pytest -s --cov-report term-missing --cov='.'<CR>
        " # enable venv (TODO: switch to pipenv)
        " pip install pytest-cov
        "----------------------------------------------------------------------------------
"++bbb++}}} 
