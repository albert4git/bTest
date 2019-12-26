        "==================================================================================
        " Plug 'NLKNguyen/papercolor-theme'
        " let g:lightline = { 'colorscheme': 'PaperColor' }
        " \ 'colorscheme': 'onedark',
        " \ 'colorscheme': 'gruvbox',
        " let g:lightline.colorscheme = 'deus_beta_dark'
        " let g:lightline.colorscheme = 'space_vim_dark'
        " let g:lightline.colorscheme = 'Tomorrow_Night_Eighties'
        " \ 'colorscheme': 'tender',
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


        hi SpecialKey ctermfg=251 guifg=#999999

        highlight Class cterm=bold ctermbg=88
        highlight Function cterm=bold ctermbg=19
        highlight LocalVariable cterm=bold ctermbg=14
        highlight GlobalVariable cterm=bold ctermbg=207


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
        set signcolumn=yes
        hi signcolumn     ctermbg=23 guibg=14
        "---------------------------------------------------------------------------------
        " highlight SignColumn     ctermbg=230       guibg=#00ff00
        " hi MatchParen     ctermbg=39 ctermfg=11  cterm=bold
        "---------------------------------------------------------------------------------


        hi LineNr         ctermbg=17 ctermfg=15   guibg=#020202
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#ef5000  guifg=#ffffff
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#0f5000  guifg=#ffffff
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#5fafdf  guifg=#ffffff
        "---------------------------------------------------------------------------------
        "red let g:indentLine_color_term = 251
        "red let g:indentLine_newVersion = 0
        "---------------------------------------------------------------------------------

        " hi CursorLine term=underline
        " hi CursorLineNr term=bold,italic,reverse,underline
        "--------------------------------------------------------------------------------
        " hi CursorLine     ctermbg=90  guibg=#870087 gui=underline
        " hi CursorLine     ctermbg=90  guibg=#662211 gui=underline

        hi CursorLine    guibg=#331166   gui=underline cterm=underline
        hi CursorLine    guibg=#000000   gui=underline cterm=underline  guisp=#FF0000

        hi cursorline    guibg=#600060   gui=underline cterm=underline  guisp=#ff0000
        hi cursorline    guibg=#000099   gui=underline cterm=underline  guisp=#ff0000

        " set cursorcolumn
        " hi cursorcolumn   ctermbg=16 guibg=#ff4040

        "--------------------------------------------------------------------------------
        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=240
        hi ColorColumn    ctermbg=14   guibg=#005500
        hi Visual cterm=bold ctermbg=2 ctermfg=NONE  guibg=#700070
        " hi Comment        ctermfg=249 guifg=#dddddd  guibg=#0087ff
        " hi Comment        ctermfg=249 guifg=#dddddd  guifg=#50DFFF
        " hi Comment        ctermfg=249 guifg=#eeeeee  guibg=#5F5F11
        " hi Comment        ctermfg=249 guifg=#eeeeee  guibg=#005011 gui=bold
        hi Comment        ctermfg=249 guifg=#eeeeee  guibg=#0F5F11

        hi Folded     ctermfg=249 guifg=#dddddd  guibg=#0087ff
        hi Folded     ctermfg=249 guifg=#0081FF  guibg=#aa0022
        hi Folded     ctermfg=249 guifg=#FFffFF  guibg=#aa0022
        "--------------------------------------------------------------------------------
        set pumheight=18
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#0090F6
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#A040F6
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#880033
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#000088

        "==================================================================================
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
        hi customGrayB     ctermbg=245 ctermfg=White  guibg=#555555 guifg=#0087ff
        hi customGrayG     ctermbg=245 ctermfg=White  guifg=#666666 guibg=#0FBF34

        hi customBlue     ctermbg=245 ctermfg=White  guifg=#ccCCcc guibg=#0F8F14

        hi customPlus     ctermbg=245 ctermfg=White  guibg=#ffFFB7 guifg=#88114f

        hi customEQ     ctermbg=245 ctermfg=White  guibg=#ffFFB9 guifg=#88114f
        hi customEQ     ctermbg=245 ctermfg=White  guibg=#ffFFB9 guifg=#ff3f00
        hi customEQ     ctermbg=245 ctermfg=White  guibg=#331174 guifg=#ff3f00
        hi customEQ     ctermbg=245 ctermfg=White  guibg=#331174 guifg=#0fBf00
        hi customEQ     ctermbg=245 ctermfg=White  guibg=#881144 guifg=#aaAAaa

        hi customMin    ctermbg=245 ctermfg=White  guibg=#ffffB9 guifg=#ff3f00
        hi customMin    ctermbg=245 ctermfg=White  guibg=#331194 guifg=#ffffb0
        hi customMin    ctermbg=245 ctermfg=White  guibg=#331194 guifg=#aaaaaa
        hi customMin    ctermbg=245 ctermfg=White  guibg=#881144 guifg=#aaaaaa

        hi lightGray      ctermbg=12  guibg=#afffaf guifg=#001100 gui=bold
        hi darkGray       ctermbg=211 guibg=#ffff00  guifg=#8000f0

        "--------------------------------------------------------------------------------
        hi custRed     ctermbg=Red   ctermfg=White  guibg=#ffFF97  guifg=#ff0011
        hi custGreen   ctermbg=Green ctermfg=White  guibg=#Afffaf  guifg=#0024fF
        hi custYellow  ctermbg=Blue  ctermfg=White  guibg=#AfffDf  guifg=#ff5f00
        "--------------------------------------------------------------------------------

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
        call matchadd('customPink', '#')
        call matchadd('customPink', ':')
        call matchadd('customBlue', '-')
        call matchadd('customPink', '-')
        call matchadd('customPlus', '++')
        call matchadd('customEQ', '==')
        call matchadd('customMin', '--')
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




