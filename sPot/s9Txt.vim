        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        autocmd FileType ruby :iabbrev <buffer> pry! require 'pry'; binding.pry;
        autocmd FileType ruby :iabbrev <buffer> arlog! ActiveRecord::Base.logger = Logger.new(STDOUT);

        function InitFile()
        if @% == ""
                " No filename for current buffer
                silent !$HOME/.dotfiles/ruby/snippets/init_file %
        elseif filereadable(@%) == 0
                " File doesn't exist yet
                silent !$HOME/.dotfiles/ruby/snippets/init_file %
        elseif line('$') == 1 && col('$') == 1
                " File is empty
                silent !$HOME/.dotfiles/ruby/snippets/init_file %
        endif
        endfunction

        au BufReadPost *.rb call InitFile()
        " autocmd BufWritePost Gemfile,*.gemspec AsyncRun bundle install
        " autocmd BufWritePost *.rb AsyncRun -post=checktime rubocop % --auto-correct --config $HOME/.dotfiles/ruby/rubocop.yml
        autocmd BufNewFile,BufRead Brewfile set filetype=ruby
        autocmd FileType ruby setlocal colorcolumn=100
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

        cnoremap <expr> <space> '/?' =~ getcmdtype() ? ".*" : "<space>"

        nmap <Leader>cc :! grep "module\\\|class\\\|private\\\|def " %<Enter>

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "-source ~/git/bTest/sPot/SYPLUG/nHydra.vim
        "-source ~/git/bTest/sPot/SYPLUG/NNV.vim
        "-let g:nnv_search_paths = ['~/git/bTest/']
        "-let g:nnv_search_paths = ['/media/red/124Black/']
        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

        "---------------------------------------------------------------
        vmap sq "zdi"<C-R>z"<ESC>
        vmap sb "zdi( <C-R>z )<ESC>


        let g:lightline.component = {
                                \ 'mode': '%{lightline#mode()}',
                                \ 'absolutepath': '%F',
                                \ 'relativepath': '%f',
                                \ 'filename': '%t',
                                \ 'modified': '%M',
                                \ 'bufnum': '%n',
                                \ 'paste': '%{&paste?"PASTE":""}',
                                \ 'readonly': '%R',
                                \ 'charvalue': '%b',
                                \ 'charvaluehex': '%B',
                                \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
                                \ 'fileformat': '%{&ff}',
                                \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
                                \ 'percent': '%3p%%',
                                \ 'percentwin': '%P',
                                \ 'spell': '%{&spell?&spelllang:""}',
                                \ 'lineinfo': '%3l:%-2v',
                                \ 'line': '%l',
                                \ 'column': '%c',
                                \ 'close': '%999X X ',
                                \ 'winnr': '%{winnr()}' }

        let g:lightline.tab_component_function = {
                                \ 'filename': 'lightline#tab#filename',
                                \ 'modified': 'lightline#tab#modified',
                                \ 'readonly': 'lightline#tab#readonly',
                                \ 'tabnum': 'lightline#tab#tabnum' }

        let g:lightline.mode_map = {
                                \ 'n' : 'NORM',
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
                                \ }

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


        "----------------------------------------------------------------------------------
        " 255   0 255		magenta1
        " 0   139 139		dark cyan
        " 0   139 139		DarkCyan
        " 139   0 139		dark magenta
        " 1h39   0 139		DarkMagenta
        " 139   0   0		dark red
        " 139   0   0		DarkRed
        " 144 238 144		light green
        " 144 238 144		LightGreen

        " set lighline theme inside lightline config
        " let g:lightline = { 'colorscheme': 'tender' }
        " let g:lightline = { 'colorscheme': 'ayu' }
        " \ 'colorscheme': 'monokai_tasty',

        " let g:lightline = {
        "         \ 'colorscheme': 'monokai_tasty',
        "         \ }

        let g:lightline = {
                \ 'colorscheme': 'monokai_tasty',
                \ 'enable': {
                \   'statusline': 1,
                \   'tabline': 0,
                \ },
                \ 'active': {
                \   'left': [
                \       [ 'mode', 'paste' ],
                \       [ 'filename', 'readonly', 'modified' ],
                \       [ 'fugitive', ],
                \   ]
                \ },
                \ 'inactive': {
                \   'left': [
                \       [ 'filename', 'readonly', 'modified' ],
                \       [ ],
                \   ]
                \ },
                \ 'component': {
                \   'readonly': '%{&readonly?"x":""}',
                \   'fugitive': '%{winwidth(0) > 70 ? (exists("*fugitive#head") ? "⎇  " . fugitive#head() : "") : ""}',
                \   'filetype': '%{winwidth(0) > 70 ? (&filetype !=# "" ? &filetype : "no ft") : ""}',
                \   'fileencoding': '%{winwidth(0) > 70 ? (&fenc !=# "" ? &fenc : &enc) : ""}',
                \   'fileformat': '%{winwidth(0) > 70 ? &fileformat : ""}',
                \ },
                \ 'component_visible_condition': {
                \   'fugitive': '(exists("*fugitive#head") && winwidth(0) > 70 && ""!=fugitive#head())',
                \   'filetype': '(winwidth(0) > 70)',
                \   'fileencoding': '(winwidth(0) > 70)',
                \   'fileformat': '(winwidth(0) > 70)',
                \ },
                \ 'separator': { 'left': '', 'right': '' },
                \ 'subseparator': { 'left': '|', 'right': '|' }
                \ }


|:TextobjDiffDefaultKeyMappings| to redefine these key mappings.

mode	{lhs}		{rhs}				~
----	-----		------------------------------	~
NVO	<Leader>dfJ	<Plug>(textobj-diff-file-N)
NVO	<Leader>dfK	<Plug>(textobj-diff-file-P)
NVO	<Leader>dfj	<Plug>(textobj-diff-file-n)
NVO	<Leader>dfk	<Plug>(textobj-diff-file-p)
NVO	<Leader>dJ	<Plug>(textobj-diff-hunk-N)
NVO	<Leader>dK	<Plug>(textobj-diff-hunk-P)
NVO	<Leader>dj	<Plug>(textobj-diff-hunk-n)
NVO	<Leader>dk	<Plug>(textobj-diff-hunk-p)
VO	adH		<Plug>(textobj-diff-file)
VO	adf		<Plug>(textobj-diff-file)
VO	adh		<Plug>(textobj-diff-hunk)
VO	idH		<Plug>(textobj-diff-file)
VO	idf		<Plug>(textobj-diff-file)
VO	idh		<Plug>(textobj-diff-hunk)


        "----------------------------------------------------------------------------------
        localcfg/plugin_vim_coiled_snake.vim
        I prefer my fold text as it is uniform across all filetypes:
        let g:coiled_snake_set_foldtext = v:false
        localcfg/plugin_vim_ditto
        Store data in user’s system data directory:
        let g:ditto_dir = g:vim_data_dir . '/ditto'


        "----------------------------------------------------------------------------------
        " :emenu   ???
        " dwm.vim

        call s:define_menu('&python', {
                                \ '&config': [
                                \
        expand('$PYTHONSTARTUP'),
                                \
        g:xdg_config_dir . '/python/rc',
                                \ ],
                                \ '&flake8': g:xdg_config_dir . '/flake8',
                                \ '&pip': g:xdg_config_dir . '/pip/pip.conf',
                                \ 'ptpytho&n': '~/.ptpython/config.py',
                                \ })
        "==================================================================================================
        "==================================================================================
        types_c.taghl
        types_go.taghl
        types_java.taghl
        types_php.taghl
        types_pl.taghl
        types_py.taghl
        types_ruby.taghl
        "==================================================================================
        "====
        " let generate_tags=1
        " Set tags option
        " set tags=./javascript_tags;/
        " set tags+=./python_tags;/
        " set tags+=./ruby_tags;/
        " set tags+=./go_tags;/
        " set tags+=./java_tags;/
        " set tags+=./c_tags;/
        ":set tags=./tags,tags,/home/user/commontags
        "====
        "==========================================================================================
        "----------------------------------------------------------------------------------
"++AAAx++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        " set dictionary=/usr/share/dict/words
        " set dictionary="/usr/dict/words"
        " set spellfile=~/.config/nvim/spell/en.utf-8.add
"++AAAx++}}}

        "----------------------------------------------------------------------------------
        " nmap <Leader>c <Plug>CRV_CRefVimNormal
        " vmap <Leader>r <Plug>CRV_CRefVimVisual
        " map  <Leader>cw <Plug>CRV_CRefVimAsk
        " map  <Leader>cc <Plug>CRV_CRefVimInvoke
        "----------------------------------------------------------------------------------
        " <Plug>(neoterm-repl-send)
        "========================================================
        "========================================================
        " nmap gz <Plug>ZVOperator
        " vmap <localleader>z <Plug>ZVVisSelection
        "========================================================
        "========================================================


        "===???============================================================================
        nnoremap <Leader>4 <Plug>(textobj-diff-hunk-p)
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


        "---------------------------------------------------------------------------------
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        " let g:asyncomplete_auto_popup = 0
        " imap <c-space> <Plug>(asyncomplete_force_refresh)
        ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        "diagnostic.errorSign": "cER",
        "diagnostic.warningSign": "cWR",
        "diagnostic.infoSign": "cIn",
        "diagnostic.virtualText": true
        "---------------------------------------------------------------------------------
        "---------------------------------------------------------------------------------
        https://github.com/Quramy/tsuquyomi
        https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Python
        https://github.com/prabirshrestha/vim-lsp/wiki/Servers
        "---------------------------------------------------------------------------------

        "==================================================================================
        $ git clone https://github.com/posquit0/vimrc ~/.vim
        $ ln -s .vim/vimrc .vimrc
        $ ln -s ~/.vim .config/nvim
        $ vim +PlugInstall +qall now
        "==================================================================================

        "==================================================================================
        "Plug 'vim-scripts/tagselect'
        "Plug 'xolox/vim-easytags'
        "==================================================================================

        " set listchars=eol:$
        set showbreak=↪\
        set listchars=eol:↲
        set listchars=tab:▸\
        "==================================================================================


"===============================================================================================================
" remove parentheses around function call arguments
function! Format_funcall_drop_parens() abort
  let cursor = winsaveview()
  execute 'normal '. s:delete_surround .'('
  execute 'normal! i '
  call winrestview(cursor)
endfunction

" convert from double quotes to single quotes
function! Format_quotes_singularize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."\"'"
  call winrestview(cursor)
endfunction

" convert from single quotes to double quotes
function! Format_quotes_pluralize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."'\""
  call winrestview(cursor)
endfunction
"===============================================================================================================
" remove parentheses around function call arguments
function! Format_funcall_drop_parens() abort
  let cursor = winsaveview()
  execute 'normal '. s:delete_surround .'('
  execute 'normal! i '
  call winrestview(cursor)
endfunction

" convert from double quotes to single quotes
function! Format_quotes_singularize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."\"'"
  call winrestview(cursor)
endfunction

" convert from single quotes to double quotes
function! Format_quotes_pluralize() abort
  let cursor = winsaveview()
  execute 'normal '. s:change_surround ."'\""
  call winrestview(cursor)
endfunction


"++AAA+#DevIcons++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
" adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 1
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1
" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1
" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0
" enable custom folder/directory glyph exact matching
" (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = 'ƛ'
" change the default dictionary mappings for file extension matches
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" change the default dictionary mappings for exact file node matches
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" add or override pattern matches for filetypes
" these take precedence over the file extensions
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'
" add or override individual additional filetypes
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
"++AAAx++}}}
"==================================================================================


"++AAA+#Utl++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++{{{
        "------------------TODO------------------------------------------------------------
        Plug 'vim-scripts/utl.vim'
        " [ open with \o ] {{{ open: URL, preview doc: markdown, TeX, etc.
        " Utl {{{ :Utl to open links, files.
        " nnoremap <leader>o :Utl<CR>
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
        " }}}

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
"++AAAx++}}}


        "----------------------------------------------------------------------------------
        " abc,def,ghi
        " the, most , short , long , big , bigly
        " a,b,c
        "----------------------------------------------------------------------------------
        runtime vimrc.d/paths.vim
        " *Must* be early
        runtime vimrc.d/disabled.vim
        runtime vimrc.d/dein.vim
        runtime vimrc.d/settings.vim
        runtime vimrc.d/syntax.vim
        runtime vimrc.d/misc.vim
        runtime vimrc.d/maps.vim
        if has('patch-7.4.1821')
                runtime vimrc.d/packages.vim
        else
                " There may be other things in packages.vim, but this is *the* thing
                " I can't do without.
                if !exists('*EditExisting')
                        runtime macros/editexisting.vim
                endif
        endif
        runtime vimrc.d/localcfg.vim
