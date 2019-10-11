
        set termguicolors     " enable true colors support
        "source mix/n-badwolf.vim 
        "colorscheme molokai
        "colorscheme badwolf
        "source ~/git/bTest/kDot/mix/n-badwolf.vim
        "colorscheme candycode
        colorscheme desert
        colorscheme badwolf
         " colorscheme ayu
        " let ayucolor="dark"   " for dark version of theme
        " let ayucolor="light"  " for light version of theme
        " let ayucolor="mirage" " for mirage version of theme

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

        highlight UnderlineTag  cterm=underline  

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

        "-TOP---!!!---------------------------------------------------------------------------
        hi pythonSelf  ctermfg=68 cterm=bold 
        hi Search         ctermbg=11 
        " hi Normal         ctermbg=235
        " guibg=#333333
        hi ColorColumn    ctermbg=22
        hi MatchParen     ctermbg=39 ctermfg=11  cterm=bold
        set signcolumn=yes
        hi signcolumn     ctermbg=23 guibg=14
        highlight SignColumn     ctermbg=230       guibg=#00ff00

        "hi LineNr         ctermbg=199 ctermfg=16 
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#020202
        hi LineNr         ctermbg=17 ctermfg=15   guibg=#10205f  guifg=#ffffff
        "--------------------------------------------------------------------------------- 
        "red let g:indentLine_color_term = 251
        "red let g:indentLine_newVersion = 0
        "--------------------------------------------------------------------------------- 
        " :sign define piet text=>> texthl=Search
        " :exe ":sign place 2 line=240 name=piet file=" . expand("%:p")

        "--------------------------------------------------------------------------------
        hi CursorLine     ctermbg=90  guibg=#870087
        set cursorcolumn
        hi CursorColumn   ctermbg=16 guibg=#870087 

        "--------------------------------------------------------------------------------
        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=240
        hi ColorColumn    ctermbg=14   guibg=#005500
        set pumheight=12
        " Popup menu hightLight Group
        hi Pmenu          ctermfg=1  ctermbg=255
        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE
        hi PmenuSel       ctermbg=10 ctermfg=1
        let g:CommandTHighlightColor = 9

        "--------------------------------------------------------------------------------
        silent! set complete& completeopt=menu infercase noshowfulltag
        "set shortmess+=c
        "suppress intro message because the above makes it look bad
        set shortmess+=I
        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "------------------------------------------------------

        hi customPink     ctermbg=245 ctermfg=White  guifg=#ff5f00 guibg=#ccbbcc
        hi lightGray      ctermbg=12
        hi darkGray       ctermbg=211 guibg=#ffbbff  guifg=#8000f0

        "------------------------------------------------------
        highlight Visual cterm=bold ctermbg=2 ctermfg=NONE
        hi Pmenue        ctermfg=11
        set nuw =4
        set list
        set listchars=tab:▸\

        "---???------------------------------------------------
        call matchadd('darkGray', 'NEXT')
        call matchadd('darkGray', 'TODO')
        call matchadd('darkGray', '!!!')
        call matchadd('darkGray', '???')
        call matchadd('darkGray', 'AAA')
        call matchadd('darkGray', 'KKK')
        call matchadd('darkGray', 'MMM')
        call matchadd('darkGray', 'TTT')
        call matchadd('darkGray', 'DDD')
        call matchadd('customPink', '===')
        call matchadd('customPink', '==')
        call matchadd('customPink', '=')
        call matchadd('customPink', '###')
        call matchadd('customPink', ':::')
        call matchadd('customPink', '::')
        call matchadd('customPink', '---')
        call matchadd('customPink', '--')
        call matchadd('customPink', '-')
        "------------------------------------------------------
        hi Comment        ctermfg=241
        hi Comment        ctermfg=249
