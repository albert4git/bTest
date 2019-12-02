
call quickmenu#reset()
" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"
" use your favorite key to show / hide quickmenu
"--------------------------------------------------------------------------------- 
" new section: empty action with text starts with "#" represent a new section
call quickmenu#append("# Debug", '')
" script between %{ and } will be evaluated before menu open
call quickmenu#append("Run %{expand('%:t')}", '!./%', "Run current file")
"--------------------------------------------------------------------------------- 
call quickmenu#append("# Git", '')
" use fugitive to show diff
call quickmenu#append("git diff", 'Gvdiff', "use fugitive's Gvdiff on current document")
call quickmenu#append("git status", 'Gstatus', "use fugitive's Gstatus on current document")

"--------------------------------------------------------------------------------- 
call quickmenu#append("# Coc", '')
call quickmenu#append("coc diagnostics", 'CocList diagnostics')
call quickmenu#append("coc extensions", 'CocList extensions')
call quickmenu#append("coc commands", 'CocList commands')
call quickmenu#append("coc outline", 'CocList outline')
call quickmenu#append("coc symbols", 'CocList -I symbols')

"--------------------------------------------------------------------------------- 
call quickmenu#append("# Misc", '')
call quickmenu#append("Turn paste %{&paste? 'off':'on'}", "set paste!", "enable/disable paste mode (:set paste!)")
call quickmenu#append("Turn spell %{&spell? 'off':'on'}", "set spell!", "enable/disable spell check (:set spell!)")
call quickmenu#append("Function List", "TagbarToggle", "Switch Tagbar on/off")

"--------------------------------------------------------------------------------- 
"--------------------------------------------------------------------------------- 
" " clear all the items
" call g:quickmenu#reset()

" " new section: empty action with text starts with "#" represent a new section
" call quickmenu#append("# Debug", '')

" " script between %{ and } will be evaluated before menu open
" call quickmenu#append("Run %{expand('%:t')}", '!./%', "Run current file")

" " new section
" call quickmenu#append("# Git", '')

" " use fugitive to show diff
" call quickmenu#append("git diff", 'Gvdiff', "use fugitive's Gvdiff on current document")
" call quickmenu#append("git status", 'Gstatus', "use fugitive's Gstatus on current document")

" " new section
" call quickmenu#append("# Misc", '')
" call quickmenu#append("Turn paste %{&paste? 'off':'on'}", "set paste!", "enable/disable paste mode (:set paste!)")
" call quickmenu#append("Turn spell %{&spell? 'off':'on'}", "set spell!", "enable/disable spell check (:set spell!)")
" call quickmenu#append("Function List", "TagbarToggle", "Switch Tagbar on/off")
