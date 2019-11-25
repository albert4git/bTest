        "==================================================================================

        "==================================================================================
        "==================================================================================
        " Better gitcommit messages
        hi diffAdded   ctermbg=NONE ctermfg=46  cterm=NONE guibg=NONE guifg=#00FF00 gui=NONE
        hi diffRemoved ctermbg=NONE ctermfg=196 cterm=NONE guibg=NONE guifg=#FF0000 gui=NONE
        hi link diffLine String
        hi link diffSubname Normal
        "==================================================================================
        " hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
        " hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
        " hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
        " hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2
        "==================================================================================

        " guifg=#ff0ad8 
        " guifg=#0fdad8 
        " guifg=#ffda00 
        "-TOP------------------------------------------------------------------------------
        "==================================================================================
        " highlight DiffAdd           cterm=bold ctermbg=22  guibg=#3f5a18
        " highlight DiffAdd           cterm=bold ctermbg=22  guibg=#00008f
        " highlight DiffDelete        cterm=bold ctermbg=3  guibg=#ff0a78
        " highlight DiffChange        cterm=bold ctermbg=52  guibg=#ff8a00
        "==================================================================================
        "-TOP------------------------------------------------------------------------------

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
        hi Visual cterm=bold ctermbg=2 ctermfg=NONE  guibg=#000099
        hi Comment        ctermfg=249 guifg=#dddddd  guibg=#0087ff
        hi Comment        ctermfg=249 guifg=#dddddd  guifg=#50DFFF
        hi Comment        ctermfg=249 guifg=#dddddd  guibg=#0F8F14

        hi Folded     ctermfg=249 guifg=#dddddd  guibg=#0087ff
        "--------------------------------------------------------------------------------
        set pumheight=18
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#0090F6
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#A040F6
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#880033

        " hi Pmenu guibg=brown gui=bold
        hi PmenuSbar      ctermfg=11 ctermbg=5   guibg=#F0B000
        hi PmenuThumb     ctermfg=12 ctermbg=2   guibg=#8000FF
        hi PmenuSel       ctermbg=10 ctermfg=1   guibg=#DD0011

        "--------------------------------------------------------------------------------
        let g:CommandTHighlightColor = 9

        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "--------------------------------------------------------------------------------
        hi customPink     ctermbg=245 ctermfg=White  guibg=#444444 guifg=#ff3f00
        hi customBlue     ctermbg=245 ctermfg=White  guibg=#ccbbcc guifg=#0087ff
        hi customBlue     ctermbg=245 ctermfg=White  guifg=#ff5f00 guibg=#0FBF34
        hi customBlue     ctermbg=245 ctermfg=White  guifg=#ccCCcc guibg=#0F8F14

        hi customPlus     ctermbg=245 ctermfg=White  guibg=#EcEcEc guifg=#0011ff

        hi lightGray      ctermbg=12  guibg=#cccccc guifg=#ff11c0
        hi darkGray       ctermbg=211 guibg=#ffff00  guifg=#8000f0

        "--------------------------------------------------------------------------------
        hi custRed     ctermbg=Red   ctermfg=White  guibg=#ffFF97  guifg=#ff0011
        hi custGreen   ctermbg=Green ctermfg=White  guibg=#Afffaf  guifg=#0024fF
        hi custYellow  ctermbg=Blue  ctermfg=White  guibg=#AfffDf  guifg=#ff5f00
        "--------------------------------------------------------------------------------
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
        call matchadd('customBlue', '=')
        call matchadd('customPink', '==')
        call matchadd('customPink', '#')
        call matchadd('customPink', ':')
        call matchadd('customBlue', '-')
        call matchadd('customPink', '-')
        call matchadd('customPlus', '++')
        "------------------------------------------------------

        "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        autocmd! User Oblique       normal! zz
        autocmd! User ObliqueStar   normal! zz
        autocmd! User ObliqueRepeat normal! zz

        hi! def link ObliqueCurrentMatch Keyword
        hi! def link ObliquePrompt       Structure
        hi! def link ObliqueLine         String
        let g:oblique#clear_highlight =0

"===============================================================================================================
" show invisible
" set list
set listchars=tab:▸\ ,eol:¬,trail:⋅
hi NonText ctermfg=16 guifg=#Fa3a19
hi SpecialKey ctermfg=16 guifg=#ff00af
"===============================================================================================================
highlight ExtraWhitespace ctermbg=red guibg=#ffFFff
highlight ExtraTabs ctermbg=red guibg=#FF9922
" Show tabs that are not at the start of a line:
match ExtraTabs /[^\t]\zs\t\+/
" Show trailing whitespace:
" match ErrorMsg '\s\+$'
match ExtraWhitespace /\s\+$/

""===============================================================================================================
"match ErrorMsg '/\t'
"" Show trailing whitespace and spaces before a tab:
"match ExtraWhitespace /\s\+$\| \+\ze\t/
"" Show spaces used for indenting (so you use only tabs for indenting).
"match ExtraWhitespace /^\t*\zs \+/
"
