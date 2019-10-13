"==================================================================================
"==================================================================================
"==================================================================================


"===============================================================================================================

"===============================================================================================================

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
