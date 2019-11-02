https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Python
https://github.com/prabirshrestha/vim-lsp/wiki/Servers

function! s:js_completor(opt, ctx) abort
    let l:col = a:ctx['col']
    let l:typed = a:ctx['typed']

    let l:kw = matchstr(l:typed, '\v\S+$')
    let l:kwlen = len(l:kw)

    let l:startcol = l:col - l:kwlen

    let l:matches = [
        \ "do", "if", "in", "for", "let", "new", "try", "var", "case", "else", "enum", "eval", "null", "this", "true",
        \ "void", "with", "await", "break", "catch", "class", "const", "false", "super", "throw", "while", "yield",
        \ "delete", "export", "import", "public", "return", "static", "switch", "typeof", "default", "extends",
        \ "finally", "package", "private", "continue", "debugger", "function", "arguments", "interface", "protected",
        \ "implements", "instanceof"
        \ ]

    call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'javascript',
    \ 'whitelist': ['javascript'],
    \ 'completor': function('s:js_completor'),
    \ })

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
" golsp or bingo 
"==================================================================================
$ git clone https://github.com/posquit0/vimrc ~/.vim
$ ln -s .vim/vimrc .vimrc
# If you use NeoVIM
$ ln -s ~/.vim .config/nvim
$ vim +PlugInstall +qall now
"==================================================================================


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
"==================================================================================
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}
"==================================================================================
npm install sqlanywhere
"==================================================================================
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" hi User1 guifg=#eea040 guibg=#2222a2
" hi User2 guifg=#dd3333 guibg=#222262
" hi User3 guifg=#ff66ff guibg=#225222
" hi User4 guifg=#a0ee40 guibg=#822222
" hi User5 guifg=#eeee40 guibg=#522222
"==================================================================================
hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

let g:currentmode={
    \ 'n'      : 'N ',
    \ 'no'     : 'N·Operator Pending ',
    \ 'v'      : 'V ',
    \ 'V'      : 'V·Line ',
    \ '\<C-V>' : 'V·Block ',
    \ 's'      : 'Select ',
    \ 'S'      : 'S·Line ',
    \ '\<C-S>' : 'S·Block ',
    \ 'i'      : 'I ',
    \ 'R'      : 'R ',
    \ 'Rv'     : 'V·Replace ',
    \ 'c'      : 'Command ',
    \ 'cv'     : 'Vim Ex ',
    \ 'ce'     : 'Ex ',
    \ 'r'      : 'Prompt ',
    \ 'rm'     : 'More ',
    \ 'r?'     : 'Confirm ',
    \ '!'      : 'Shell ',
    \ 't'      : 'Terminal '
    \}


function! ChangeStatuslineColor()
        if (mode() =~# '\v(n|no)')
                exe 'hi! StatusLine ctermfg=008 guibg=#2fda00'
        elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
                exe 'hi! StatusLine ctermfg=005 guibg=#ff0ad8'
        elseif (mode() ==# 'i')
                exe 'hi! StatusLine ctermfg=004 guibg=#0fdad8'
        else
                exe 'hi! StatusLine ctermfg=006 guibg=#ffda00'
        endif
        return ''
endfunction
"===============================================================================================================
" guifg=#ff0ad8 
" guifg=#0fdad8 
" guifg=#ffda00 
"===============================================================================================================
function! GitInfo()
        let git = fugitive#head()
        if git != ''
                return ' '.fugitive#head()
        else
                return ''
endfunction
"===============================================================================================================
set laststatus=2
set statusline=
set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%8*\ [%n]                                " buffernr
set statusline+=%8*\ %{GitInfo()}                        " Git Branch name
"==================================================================================
        "Plug 'vim-scripts/tagselect'
        "Plug 'xolox/vim-easytags'
"==================================================================================


"===============================================================================================================

        " set listchars=eol:$
        set showbreak=↪\ 
        set listchars=eol:↲
        set listchars=tab:▸\
"===============================================================================================================

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
"===Vista===================================================================================================

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

"==================================================================================
after I improved indenting, highlighting and autocompletion slightly.
"==================================================================================
let s:save_cpo = &cpo
set cpo&vim

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


"==================================================================================
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
"==================================================================================

"==================================================================================

"==================================================================================
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
