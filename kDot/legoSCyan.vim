

        "-TOP------------------------------------------------------------------------------
        highlight DiffAdd           cterm=bold ctermbg=22
        highlight DiffDelete        cterm=bold ctermbg=3
        highlight DiffChange        cterm=bold ctermbg=11
        highlight DiffChange        cterm=bold ctermbg=52

        hi SpecialKey ctermfg=251 guifg=#999999

        highlight Class cterm=bold ctermbg=88
        highlight Function cterm=bold ctermbg=19
        highlight LocalVariable cterm=bold ctermbg=14
        highlight GlobalVariable cterm=bold ctermbg=207

        highlight UnderlineTag  cterm=underline  gui=underline guifg=#555555

        "----------------------------------------------------------------------------------
        " hi Enumerator guifg="c000c0"
        " Class           : Class
        " DefinedName     : Define
        " Enumerator      : Enumerator
        " Function        : Function or method
        " EnumerationName : Enumeration name
        " Member          : Member (of structure or class)
        " Structure       : Structure Name
        " Type            : Typedef
        " Union           : Union Name
        " GlobalConstant  : Global Constant
        " GlobalVariable  : Global Variable
        " LocalVariable   : Local Variable

        "---TOP---!!!----------------------------------------------------------------------
        hi pythonSelf  ctermfg=68 cterm=bold 
        hi Search         ctermbg=11 
        " hi Normal         ctermbg=235 guibg=#333333
        hi ColorColumn    ctermbg=22
        hi MatchParen     ctermbg=39 ctermfg=11  cterm=bold
        set signcolumn=yes
        hi signcolumn     ctermbg=23 guibg=14
        " highlight SignColumn     ctermbg=230       guibg=#00ff00

        hi LineNr         ctermbg=17 ctermfg=15   guibg=#020202
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#10205f  guifg=#ffffff
        "--------------------------------------------------------------------------------- 
        "red let g:indentLine_color_term = 251
        "red let g:indentLine_newVersion = 0
        "--------------------------------------------------------------------------------- 

        "--------------------------------------------------------------------------------
        hi CursorLine     ctermbg=90  guibg=#870087
        set cursorcolumn
        hi CursorColumn   ctermbg=16 guibg=#870087 

        "--------------------------------------------------------------------------------
        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=240
        hi ColorColumn    ctermbg=14   guibg=#005500
        hi Visual cterm=bold ctermbg=2 ctermfg=NONE  guibg=#005500
        hi Comment        ctermfg=249 guifg=#dddddd  guibg=#ff3f00

        "--------------------------------------------------------------------------------
        set pumheight=12
        " Popup menu hightLight Group
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#006600
        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE guibg=#660000
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE guibg=#000066
        hi PmenuSel       ctermbg=10 ctermfg=1  guibg=#BF0011

        let g:CommandTHighlightColor = 9

        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "--------------------------------------------------------------------------------
        hi customPink     ctermbg=245 ctermfg=White  guibg=#ccbbcc guifg=#ff3f00
        hi lightGray      ctermbg=12  guibg=#4c6b6c guifg=#ff5fa0
        hi darkGray       ctermbg=211 guibg=#ffff00  guifg=#8000f0

        "--------------------------------------------------------------------------------
        hi custRed     ctermbg=Red   ctermfg=White  guibg=#ffFF97  guifg=#ff0011
        hi custGreen   ctermbg=Green ctermfg=White  guibg=#Afffaf  guifg=#0024fF
        hi custYellow  ctermbg=Blue  ctermfg=White  guibg=#AfffDf  guifg=#ff5f00
        "--------------------------------------------------------------------------------
        hi Pmenue        ctermfg=11
        set nuw =4
        set list
        set listchars=tab:▸\

        "--------------------------------------------------------------------------------
        call matchadd('lightGray', 'NEXT')
        call matchadd('lightGray', 'AAA')
        call matchadd('darkGray', 'TODO')
        call matchadd('darkGray', '!!!')
        call matchadd('darkGray', '???')
        call matchadd('darkGray', 'KKK')
        call matchadd('darkGray', 'MMM')
        call matchadd('darkGray', 'TTT')
        call matchadd('darkGray', 'DDD')
        call matchadd('customPink', '=')
        call matchadd('customPink', '#')
        call matchadd('customPink', ':')
        call matchadd('customPink', '-')
        "------------------------------------------------------

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        autocmd! User Oblique       normal! zz
        autocmd! User ObliqueStar   normal! zz
        autocmd! User ObliqueRepeat normal! zz

        hi! def link ObliqueCurrentMatch Keyword
        hi! def link ObliquePrompt       Structure
        hi! def link ObliqueLine         String
        let g:oblique#clear_highlight =0