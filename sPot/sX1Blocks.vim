"++AAA++++TYPESCRIPT-BLOCK++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "===================================================================================
        "-Plug 'mhartington/nvim-typescript'
        "-Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
        "-autocmd BufWrite *.ts,*.tsx TSGetDiagnostics
        "===================================================================================
        "---css-highlight----
        " Plug 'styled-components/vim-styled-components'
        " Plug 'moll/vim-node'
        " Plug 'sareyko/neat.vim'
        " Plug 'jparise/vim-graphql'
        " Plug 'jparise/vim-graphql', {'for': ['graphql', 'javascript', 'typescript']}
        " Plug 'MaxMEllon/vim-jsx-pretty'
        " Plug 'HerringtonDarkholme/yats.vim'
        " Plug 'leafgarland/typescript-vim', { 'for': [ 'typescript', 'vue' ] }
        " Plug 'leafgarland/typescript-vim'
        "===================================================================================
        " Plug 'peitalin/vim-jsx-typescript'
        "         autocmd BufNewFile,BufRead *.tsx,*.jsx,*.ts,*.js set filetype=typescript.tsx
        "         - dark red
        "         hi tsxTagName guifg=#E06C75
        "         - orange
        "         hi tsxCloseString guifg=#F99575
        "         hi tsxCloseTag guifg=#F99575
        "         hi tsxAttributeBraces guifg=#F99575
        "         hi tsxEqual guifg=#F99575
        "         - yellow
        "         hi tsxAttrib guifg=#F8BD7F cterm=italic
        "===================================================================================
        "- Javascript Bundle
        " Plug 'pangloss/vim-javascript', {'for': 'javascript'}
        " Plug 'othree/yajs.vim', {'for': 'javascript'}
        " Plug 'posva/vim-vue', {'for': 'vue'}
        " Plug 'heavenshell/vim-jsdoc'
        "===================================================================================
"++AAA+TYPESCRIPT-BLOCK++}}}

"++AAA++LC-Jedi-Grab++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " let g:LanguageClient_autoStart = 1
        " " let g:LanguageClient_hoverPreview="Never"
        " let g:LanguageClient_hoverPreview="Always"
        " let g:LanguageClient_useFloatingHover=1
        " let g:LanguageClient_serverCommands = {
        "                         \ 'python': ['/usr/local/bin/pyls'],
        "                         \ }
        " let g:LanguageClient_autoStop=1
        " nnoremap <LspF12> :call LanguageClient_contextMenu()<CR>

        "----------------------------------------------------------------------------------
        " let g:jedi#force_py_version=3
        " let g:jedi#documentation_command = "gj"
        " let g:jedi#completions_enabled = 1
        " let g:jedi#popup_on_dot = 1
        " let g:jedi#auto_close_doc = 1


"++bbb++}}}


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

        " To change the style of the highlighting, you can set or link
        " `LspErrorHighlight`, `LspWarningHighlight`, `LspInformationHighlight` and
        " `LspHintHighlight` highlight groups.

        Example: >
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        let g:lsp_virtual_text_enabled = 1
        let g:lsp_virtual_text_prefix = "> "
        let g:lsp_highlights_enabled = 0
        let g:lsp_highlights_enabled = 1
        highlight link LspErrorHighlight Error
        let g:lsp_use_event_queue = 0
        let g:lsp_use_event_queue = 1
        let g:lsp_highlight_references_enabled = 0
        let g:lsp_highlight_references_enabled = 1
        let g:lsp_signature_help_enabled = 0
        let g:lsp_signature_help_enabled = 1
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        Plug 'prabirshrestha/vim-lsp'
        let g:lsp_signs_enabled = 0
        let g:lsp_signs_enabled = 1
        let g:lsp_signs_priority = 9
        let g:lsp_signs_priority = 11
        "---------------------------------------
        let g:lsp_virtual_text_enabled = 1
        let g:lsp_virtual_text_prefix = " >!> "
        let g:lsp_highlights_enabled = 0
        let g:lsp_highlights_enabled = 1
        " LspWarningHighlight
        " LspInformationHighlight
        let g:lsp_use_event_queue = 0
        let g:lsp_use_event_queue = 1
        let g:lsp_highlight_references_enabled = 0
        let g:lsp_highlight_references_enabled = 1
        let g:lsp_signature_help_enabled = 0
        let g:lsp_signature_help_enabled = 1
        "--------------------------------------------------------------------------------
        hi custred     ctermbg=red   ctermfg=white  guibg=#ffff97  guifg=#ff0011
        hi custgreen   ctermbg=green ctermfg=white  guibg=#afffaf  guifg=#0024ff
        hi custyellow  ctermbg=blue  ctermfg=white  guibg=#afffdf  guifg=#ff5f00
        "--------------------------------------------------------------------------------
        highlight link LspErrorHighlight Error
        highlight link LspErrorHighlight customAAA
        "----------------------------------------------------------
        highlight link LspWarningHighlight customBBB
        "----------------------------------------------------------
        highlight link LspInformationHighlight customGGG
        "----------------------------------------------------------
        highlight link LspHintHighlight customAAA
        "----------------------------------------------------------
        highlight link LspErrorText customBBB

        autocmd FileType python,go nmap gd <plug>(lsp-definition)

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        let g:lsp_signs_priority_map = {
                \'LspError': 11,
                \'LspWarning': 7,
                \'clangd_LspWarning': 11,
                \'clangd_LspInformation': 11
                \}

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        function! s:on_lsp_buffer_enabled() abort
                setlocal omnifunc=lsp#complete
                setlocal signcolumn=yes
                nmap <buffer> gd <plug>(lsp-definition)
                nmap <buffer> <f2> <plug>(lsp-rename)
        endfunction

        augroup lsp_install
                au!
                autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
        augroup END
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


"%%%%%%%%%%%%%%%%%%%%Hierarchie%%%%%%%Structur%%%%%%Beziehung%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
{#EasyAlign}
"---------------------------------------------------------------------------------
"---------------------------------------------------------------------------------
" Keybinding for visiting the GitHub page of the plugin defined on the current line
"---------------------------------------------------------------------------------
        augroup Vimrc
                autocmd!
                autocmd FileType vim nnoremap <silent> gp :call OpenPluginHomepage()<CR>
        augroup END
"---------------------------------------------------------------------------------
        function! OpenPluginHomepage() abort
                " Get line under cursor
                let line = getline(".")
                " Matches for instance Plug 'tpope/surround' -> tpope/surround
                " Greedy match in order to not capture trailing comments
                let plugin_name = '\w\+ \([''"]\)\(.\{-}\)\1'
                try
                        let repository = matchlist(line, plugin_name)[2]
                        " Open the corresponding GitHub homepage with $BROWSER
                        " You need to set the BROWSER environment variable in order for this to work
                        " For MacOS, you can set the following for opening it in your default
                        " browser: 'export BROWSER=open'
                        silent exec "!$BROWSER https://github.com/".repository
                catch /.*/
                        echo 'No match for "<user>/<repository>" on this line!'
                endtry
        endfunction
        "---------------------------------------------------------------------------------
        nnoremap <silent> <Leader>gf :call PutFixupCommandInPasteBoard()<CR>
        "---------------------------------------------------------------------------------

        "---------------------------------------------------------------------------------
        " run test under cursor
        autocmd FileType rust nmap <leader>t :RustTest<CR>
        autocmd FileType rust nmap <leader>T :RustTest!<CR>


        "---------------------------------------------------------------------------------
        " markdown - no conceal
        let g:vim_markdown_conceal = 0
        " Vim Move <CTRL> binding
        let g:move_key_modifier = 'C'
        " <TAB> to select from popup menu
        inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
        " Auto-insert shebangs
        inoreabbrev <expr> #!! "#!/usr/bin/env" . (empty(&filetype) ? '' : ' '.&filetype)
        " quick subtitutions
        nnoremap <leader>s :%s/
        " Echo path current directory
        nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>
        " Remove search highlighting
        nnoremap <silent> <BS> :nohlsearch<CR>
        " Quote words under cursor
        nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
        nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l
        " <Leader>T = Delete all Trailing space in file
        nnoremap <Leader>t :%s/\s\+$//<CR>:let @/=''<CR>:nohlsearch<CR>
        "---------------------------------------------------------------------------------


        "---------------------------------------------------------------------------------
        Plug 'ap/vim-buftabline'
        Plug 'valloric/MatchTagAlways'
        let g:mta_set_default_matchtag_color = 0
        let g:mta_use_matchparen_group = 0
        nnoremap <leader>% :MtaJumpToOtherTag<cr>
        if !has('nvim')
        set viminfo='100,n$HOME/.vim/files/info/viminfo'
        endif


        "---------------------------------------------------------------------------------
        "let g:dein#install_process_timeout=1000
        ""eclim
        "let g:EclimCompletionMethod='omnifunc'
        "let g:EclimFileTypeValidate = 0
        "autocmd FileType scala nn <buffer> <leader>i :ScalaImport<cr>
        "autocmd FileType java nn <buffer> <leader>i :JavaImport<cr>

        " let g:LanguageClient_serverCommands = {
        "     \ 'rust': ['rls'],
        "     \ 'vue': ['vls'],
        "     \ }
        " let g:LanguageClient_signColumnAlwaysOn = 0
        " let g:LanguageClient_autoStart = 1
        " let g:LanguageClient_diagnosticsList = 'Location'

        "---------------------------------------------------------------------------------
        " Use `:Format` for format current buffer
        command! -nargs=0 Format :call CocAction('format')

        " Use `:Fold` for fold current buffer
        command! -nargs=? Fold :call CocAction('fold', <f-args>)

        "---------------------------------------------------------------------------------
        " Python providers
        let g:python3_host_prog = '/Users/kim/.pyenv/shims/python3'  " Python 3

        "---------------------------------------------------------------------------------
        " FZF
        set rtp+=~/.fzf
        set rtp+=/usr/local/opt/fzf
        let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
        nnoremap <leader>t :FZF!<CR>
        nnoremap <leader>b :Buffers<CR>
        nnoremap <leader>g :GFiles?<CR>
        "---------------------------------------------------------------------------------
        " Use K for show documentation in preview window
        nnoremap <silent> K :call <SID>show_documentation()<CR>

        function! s:show_documentation()
        if &filetype == 'vim'
        execute 'h '.expand('<cword>')
        else
        call CocAction('doHover')
        endif
        endfunction
        "---------------------------------------------------------------------------------


        "++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " ****************************************************************************
        " ----------------------------------------------------------------------------
        " <Enter> | vim-easy-align
        " ----------------------------------------------------------------------------
        let g:easy_align_delimiters = {
        \ '>': { 'pattern': '>>\|=>\|>' }, \ '\': { 'pattern': '\\' },
        \ '/': { 'pattern': '//\+\|/\*\|\*/', 'delimiter_align': 'l', 'ignore_groups': ['!Comment'] },
        \ ']': {
        \     'pattern':       '\]\zs',
        \     'left_margin':   0,
        \     'right_margin':  1,
        \     'stick_to_left': 0
        \   },
        \ ')': {
        \     'pattern':       ')\zs',
        \     'left_margin':   0,
        \     'right_margin':  1,
        \     'stick_to_left': 0
        \   },
        \ 'f': {
        \     'pattern': ' \(\S\+(\)\@=',
        \     'left_margin': 0,
        \     'right_margin': 0
        \   },
        \ 'd': {
        \     'pattern': ' \ze\S\+\s*[;=]',
        \     'left_margin': 0,
        \     'right_margin': 0
        \   }
        \ }

        " -------------------------------------------------
        " Start interactive EasyAlign in visual mode
        xmap ga <Plug>(EasyAlign)
        " Start interactive EasyAlign with a Vim movement
        nmap ga <Plug>(EasyAlign)
        " xmap <Leader>ga   <Plug>(LiveEasyAlign)
        " -------------------------------------------------

        nnoremap <leader>[ vi[<c-v>$: EasyAlign\ g/^\S/<cr>gv =
        nnoremap <leader>{ vi{<c-v>$: EasyAlign\ g/^\S/<cr>gv =
        nnoremap <leader>( vi(<c-v>$: EasyAlign\ g/^\S/<cr>gv =

        {#EasyAlign}
        ------------------+------------------------------------+--------------------
        With visual map   | Description                        | Equivalent command ~
        ------------------+------------------------------------+--------------------
        <Enter><Space>    | Around 1st whitespaces             | :'<,'>EasyAlign\
        <Enter>2<Space>   | Around 2nd whitespaces             | :'<,'>EasyAlign2\
        <Enter>-<Space>   | Around the last whitespaces        | :'<,'>EasyAlign-\
        <Enter>-2<Space>  | Around the 2nd to last whitespaces | :'<,'>EasyAlign-2\
        <Enter>:          | Around 1st colon ( `key:  value` )   | :'<,'>EasyAlign:
        <Enter><Right>:   | Around 1st colon ( `key : value` )   | :'<,'>EasyAlign:<l1
        <Enter>=          | Around 1st operators with =        | :'<,'>EasyAlign=
        <Enter>3=         | Around 3rd operators with =        | :'<,'>EasyAlign3=
        <Enter>*=         | Around all operators with =        | :'<,'>EasyAlign*=
        <Enter>**=        | Left-right alternating around =    | :'<,'>EasyAlign**=
        <Enter><Enter>=   | Right alignment around 1st =       | :'<,'>EasyAlign!=
        <Enter><Enter>**= | Right-left alternating around =    | :'<,'>EasyAlign!**=
        ------------------+------------------------------------+--------------------

        " ----------------------------------------------------------------------------
        " ----------------------------------------------------------------------------
        " vim-after-object
        " ----------------------------------------------------------------------------
        silent! if has_key(g:plugs, 'vim-after-object')
        autocmd VimEnter * silent! call after_object#enable('=', ':', '#', ' ', '|')
        endif

        " ----------------------------------------------------------------------------
        " vim-fugitive
        " ----------------------------------------------------------------------------
        nmap     <Leader>g :Gstatus<CR>gg<c-n>
        nnoremap <Leader>gd :Gdiff<CR>

        "++AAAx++}}}
                " ----------------------------------------------------------------------------
                " SonicTemplate {{{ Easy and high speed coding method.
                " :Template <Tab>
                let g:template_vim_template_dir = [
                                \ '$HOME/.vim/template/SonicTemplate/'
                                \ ]
                        " template filename rule:
                        " [kind]-[name].[extension]
                        "  `- 'base' or 'snip'
                        " template file keyword: {{_name_}}, {{_cursor_}}, {{_input_:var}} ....
                " }}}
                " ----------------------------------------------------------------------------

                " ----------------------------------------------------------------------------
                " Markdown headings
                " ----------------------------------------------------------------------------
                nnoremap <leader>1 m`yypVr=``
                nnoremap <leader>2 m`yypVr-``
                nnoremap <leader>3 m`^i### <esc>``4l
                nnoremap <leader>4 m`^i#### <esc>``5l
                nnoremap <leader>5 m`^i##### <esc>``6l

                " ----------------------------------------------------------------------------
                " Moving lines
                " ----------------------------------------------------------------------------
                nnoremap <silent> <C-k> :move-2<cr>
                nnoremap <silent> <C-j> :move+<cr>
                nnoremap <silent> <C-h> <<
                nnoremap <silent> <C-l> >>
                xnoremap <silent> <C-k> :move-2<cr>gv
                xnoremap <silent> <C-j> :move'>+<cr>gv
                xnoremap <silent> <C-h> <gv
                xnoremap <silent> <C-l> >gv
                xnoremap < <gv
                xnoremap > >gv

                " ----------------------------------------------------------------------------
                " <Leader>c Close quickfix/location window
                " ----------------------------------------------------------------------------
                nnoremap <leader>c :cclose<bar>lclose<cr>


                " Fugitive
                au FileType gitcommit setlocal completefunc=emoji#complete
                au FileType gitcommit nnoremap <buffer> <silent> cd :<C-U>Gcommit --amend --date="$(date)"<CR>

                " http://vim.wikia.com/wiki/Highlight_unwanted_spaces
                au BufNewFile,BufRead,InsertLeave * silent! match ExtraWhitespace /\s\+$/
                au InsertEnter * silent! match ExtraWhitespace /\s\+\%#\@<!$/

                "==========================================================================================
                nnoremap ;t :set tw=70<cr>v<s-}>gq<end>

                "==========================================================================================
                "---TRANSPORTER-----------666------------------------------------------------------
                Plug 'matze/vim-move'
                        let g:move_key_modifier = 'C'
                "--Wozu?---TODO------------------------------------------
                " Plug 'haya14busa/vim-easyoperator-line'
                "==========================================================================================

                "===!!!=================================
                " The plugin defines a mapping to delete a surrounding function call (or
                " Plug 'AndrewRadev/dsf.vim'
                " Plug 'haya14busa/is.vim'
                " Plug 'garbas/vim-snipmate'
                " Plug 'Shougo/neosnippet.vim'
                " Plug 'Shougo/neosnippet-snippets'
                "==========================================================================================
                imap <C-b>    <Plug>(neosnippet_expand_or_jump)
                smap <C-b>    <Plug>(neosnippet_expand_or_jump)
                " xmap <C-b>    <Plug>(neosnippet_expand_target)
                "==========================================================================================
                let g:snipMate = {}
                let g:snipMate.scope_aliases = {}
                let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'
                "---------------------------------------------------------------------------------
                imap <C-b> <Plug>snipMateNextOrTrigger
                smap <C-b> <Plug>snipMateNextOrTrigger

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
