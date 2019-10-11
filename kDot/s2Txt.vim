        "==================================================================================

        "==================================================================================

        "==================================================================================


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
