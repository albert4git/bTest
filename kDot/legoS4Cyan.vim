        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        "----------------------------------------------------------------------------------
        hi LanguageToolGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
        hi LanguageToolSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none

        "----TYPESCRIPT--------------------------------------------------------------------
        " dark red
        hi tsxTagName guifg=#E06C75
        " orange
        hi tsxCloseString guifg=#F99575
        hi tsxCloseTag guifg=#F99575
        hi tsxAttributeBraces guifg=#F99575
        hi tsxEqual guifg=#F99575
        " yellow
        hi tsxAttrib guifg=#F8BD7F cterm=italic

        "----------------------------------------------------------------------------------
        hi statusline ctermbg=10 ctermfg=Black  cterm=bold guibg=custGreen 
        hi StatusLineNC  ctermbg=5 ctermfg=0 cterm=NONE

        "----------------------------------------------------------------------------------
        highlight StartifyBracket ctermfg=14
        highlight StartifyFooter  ctermfg=10
        highlight StartifyHeader  ctermfg=14
        highlight StartifyNumber  ctermfg=9
        highlight StartifyPath    ctermfg=245
        highlight StartifySlash   ctermfg=240
        highlight StartifySpecial ctermfg=240

        "----------------------------------------------------------------------------------
        highlight BookmarkSign ctermbg=10 ctermfg=1
        highlight BookmarkLine ctermbg=10 ctermfg=1
        highlight BookmarkAnnotationLine ctermbg=9 ctermfg=1
        highlight BookmarkAnnotationSign ctermbg=9 ctermfg=1

        "----------------------------------------------------------------------------------
        call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
        call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
        call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
        call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
        call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
        call NERDTreeHighlightFile('vim', 'Red', 'none', 'red', '#151515')
        call NERDTreeHighlightFile('js', 'blue', 'none', '#ffa500', '#151515')
        call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
        call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
        call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
        call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
        call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
        call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')
        "----------------------------------------------------------------------------------
        highlight TagbarHighlight   ctermfg=051 ctermbg=9 cterm=bold
        highlight TagListTagName    ctermfg=250
        highlight TagbarFoldIcon    ctermfg=051 ctermbg=9 
        highlight TagbarHelp        ctermfg=051 ctermbg=9

        "----------------------------------------------------------------------------------
        highlight GitGutterAdd ctermfg=green         guifg=#00ff00 
        highlight GitGutterChange ctermfg=yellow     guifg=#ffff00
        highlight GitGutterDelete ctermfg=red        guifg=#ff000f
        highlight GitGutterChangeDelete ctermfg=cyan guifg=#00ffff
        "-TOP------------------------------------------------------------------------------
        highlight DiffAdd           cterm=bold ctermbg=22
        highlight DiffDelete        cterm=bold ctermbg=3
        highlight DiffChange        cterm=bold ctermbg=11
        highlight DiffChange        cterm=bold ctermbg=52
        "----------------------------------------------------------------------------------
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
        hi pythonSelf     ctermfg=68 cterm=bold 
        hi Search         ctermbg=11 
        " hi Normal       ctermbg=235 guibg=#333333
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

        "----------------------------------------------------------------------------------
        hi CursorLine     ctermbg=90  guibg=#870087
        set cursorcolumn
        hi CursorColumn   ctermbg=16 guibg=#870087 

        "--------------------------------------------------------------------------------
        set colorcolumn=92,100,112,120
        hi ColorColumn    ctermbg=240
        hi ColorColumn    ctermbg=14   guibg=#005500
        hi Visual cterm=bold ctermbg=2 ctermfg=NONE  guibg=#005500
        hi Comment        ctermfg=249 guifg=#dddddd  guibg=#0087ff
        hi Comment        ctermfg=249 guifg=#dddddd  guifg=#50DFFF
        hi Comment        ctermfg=249 guifg=#dddddd  guibg=#0F8F14

        "--------------------------------------------------------------------------------
        set pumheight=12
        hi Pmenu          ctermfg=1  ctermbg=255 guibg=#006600
        hi PmenuSbar      ctermfg=11 ctermbg=5 cterm=NONE guibg=#660000
        hi PmenuThumb     ctermfg=12 ctermbg=2 cterm=NONE guibg=#000066
        hi PmenuSel       ctermbg=10 ctermfg=1  guibg=#BF0011

        let g:CommandTHighlightColor = 9
        "--------------------------------------------------------------------------------
        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

        "--------------------------------------------------------------------------------
        hi customPink     ctermbg=245 ctermfg=White  guibg=#555555 guifg=#ff3f00
        hi customBlue     ctermbg=245 ctermfg=White  guibg=#ccbbcc guifg=#0087ff
        hi customBlue     ctermbg=245 ctermfg=White  guifg=#ff5f00 guibg=#0FBF34
        hi customBlue     ctermbg=245 ctermfg=White  guifg=#ccCCcc guibg=#0F8F14

        "--------------------------------------------------------------------------------
        hi lightGray      ctermbg=12  guibg=#4c6b6c guifg=#ff5fa0
        hi darkGray       ctermbg=211 guibg=#ffff00  guifg=#8000f0

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
        call matchadd('customBlue', '==')
        call matchadd('customPink', '#')
        call matchadd('customPink', ':')
        call matchadd('customPink', '::')
        call matchadd('customBlue', '-')
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
" show invisible
" set list
set listchars=tab:▸\ ,eol:¬,trail:⋅
hi NonText ctermfg=16 guifg=#Fa3a19
hi NonText ctermfg=16 guifg=#00ff25
" hi SpecialKey ctermfg=251 guifg=#999999
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
