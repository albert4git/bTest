let g:ale_vim_vint_show_style_issues = 1
 Global Variables:

let g:ale_echo_cursor = 1
let g:ale_echo_msg_error_str = '✖ Error'
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_echo_msg_warning_str = '⚠ Warning'
let g:ale_enabled = 1
let g:ale_fix_on_save = 0
let g:ale_fixers = {}
let g:ale_keep_list_window_open = 0
let g:ale_lint_delay = 200
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_linter_aliases = {}
let g:ale_linters = {'vim': ['vint'], 'markdown': ['mdl'], 'sh': ['shellcheck'], 'html': ['tidy'], 'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_open_list = 0
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_set_signs = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = '•'
let g:ale_sign_offset = 1000000
let g:ale_sign_warning = '•'
let g:ale_statusline_format = ['%d error(s)', '%d warning(s)', 'OK']
let g:ale_warn_about_trailing_whitespace = 1
  Command History:
        "==================================================================================
        hi link ALEErrorSign    lightGray
        hi link ALEWarningSign  darkGray
        hi link ALEInfo  customPink
        "==================================================================================
        hi! link ALEVirtualTextError Grey
        hi! link ALEVirtualTextWarning Grey
        hi! link ALEVirtualTextInfo Grey
        "==================================================================================
        let g:ale_sign_error = "◉"
        let g:ale_sign_warning = "◉"
        highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
        highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

        "==================================================================================
        hi link ALEErrorSign    lightGray
        hi link ALEWarningSign  darkGray
        " hi link ALEInfo  customPink
        "====================================
        hi ALEWarningSign guifg=#eccc8f guibg=#45565e guisp=NONE gui=NONE cterm=NONE
        hi ALEErrorSign guifg=#ff9094 guibg=#45565e guisp=NONE gui=NONE cterm=NONE
        hi ALEInfoSign guifg=#bdd0e5 guibg=#45565e guisp=NONE gui=NONE cterm=NONE
        hi ALEError guifg=#ff9094 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
        hi ALEWarning guifg=#eccc8f guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
        "==================================================================================
        hi! link ALEVirtualTextError lightGray
        hi! link ALEVirtualTextWarning darkGray
        hi! link ALEVirtualTextInfo customPink
        "==================================================================================
