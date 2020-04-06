Matsumoto  Yukihiro  Ruby   1965  Japan
Moolenar   Bram      Vim    1961  Netherlands
Ritchie    Dennis    C      1941  USA
Stallman   Richard   GNU    1953  USA
Thompson   Ken       Unix   1943  USA
Tridgell   Andrew    Samba  1967  Australia
Wall       Larry     Perl   1954  USA

                " minibufexplorer (MBE) config
                " always display syntax in minibufexpl
                let g:miniBufExplForceSyntaxEnable = 1
                " for other explorers like TagList
                let g:miniBufExplModSelTarget = 1
                " omit the buffer number from MBE's buffer display
                "let g:miniBufExplShowBufNumbers = 0
                " an empty status line instead of "-MiniBufExplorer-"
                let g:statusLineText = "-Indi-"


                " colors for MBE
                "hi MBENormal term=bold,reverse cterm=bold,reverse gui=bold,reverse ctermbg=yellow ctermfg=white guibg=yellow guifg=white
                " buffers that have NOT CHANGED and are VISIBLE
                hi MBEVisibleNormal term=bold cterm=bold gui=bold guibg=Gray guifg=Black ctermbg=Blue ctermfg=Gray
                " buffers that have CHANGED and are VISIBLE
                hi MBEVisibleChanged term=bold cterm=bold gui=bold guibg=DarkRed guifg=Black
                hi MBENormal ctermfg=cyan
                " MBE mappings
                " FIXME mbe keys are always being loaded - only load them if MBE is loaded
                nnoremap gt :MBEbn<CR>
                nnoremap gT :MBEbp<CR>
