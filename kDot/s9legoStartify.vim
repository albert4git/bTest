
"===============================================================================================================
"===VIM-SARTIFY-1===============================================================================================
"===============================================================================================================
" autocmd!  VimEnter * execute ":Startify"
" autocmd!  VimEnter * execute ":SearchIndex"
"===============================================================================================================
let g:startify_custom_header      =
        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

let g:startify_enable_special      = 1
let g:startify_files_number        = 9
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1
let g:startify_update_oldfiles     = 1
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1

highlight StartifyBracket ctermfg=14
highlight StartifyFooter  ctermfg=10
highlight StartifyHeader  ctermfg=14
highlight StartifyNumber  ctermfg=9
highlight StartifyPath    ctermfg=245
highlight StartifySlash   ctermfg=240
highlight StartifySpecial ctermfg=240

"===============================================================================================================
let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'bundle/.*/doc',
        \ '/data/repo/neovim/runtime/doc',
        \ '/Users/mhi/local/vim/share/vim/vim74/doc',
        \ ]

"===============================================================================================================
let g:startify_bookmarks = [
        \ '~/git/bTest/kDot/kIng19.sh',
        \ '~/git/bTest/kDot/k2MinFF.vim',
        \ '~/git/bTest/kDot/k2MinFzfDeoLs.vim',
        \ '~/git/bTest/kDot/kZshrc19.sh',
        \ '~/git/bTest/kDot/kBank21.yml',
        \ ]

"===============================================================================================================
let g:startify_custom_footer =
        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

"===============================================================================================================
let g:startify_list_order = [
                        \ ['   Commands'], 'commands',
                        \ ['   Sessions'], 'sessions',
                        \ ['   MRU Files'], 'files',
                        \ ['   MRU Files in Current Dir'], 'dir',
                        \ ['   Bookmarks'], 'bookmarks',
                        \ ]

"===============================================================================================================
let g:startify_session_dir = '~/git/bTest/kDot/zSS'
let g:startify_session_sort = 1
let g:startify_session_number = 5

"===============================================================================================================
let g:startify_commands = [
                        \ {'a': ['seti', ':colorscheme seti']},
                        \ {'b': ['FZFMru', ':FZFMru']},
                        \ {'i': ['FFMarks', ':FFMarks']},
                        \ {'c': ['FFHistory', ':FFHistory']},
                        \ {'d': ['FFHelptags', ':FFHelptags']},
                        \ {'e': ['ZPlugHelp', ':ZPlugHelp']},
                        \ {'k': ['ZTag', ':ZTag']},
                        \ {'l': ['ZFiles', ':ZFiles']},
                        \ {'n': ['ZLibList', ':ZLibList']},
                        \ {'f': ['LGHistory', ':LGHistory']},
                        \ {'g': ['CommandTHelp', ':CommandTHelp']},
                        \ {'x': ['FZFDefinitions', ':FZFDefinitions']},
                        \ {'p': ['List', ':List']},
                        \ {'r': ['List', ':List']},
                        \ {'u': ['unite', ':Unite help buffer file_mru file file_rec bookmark']},
                        \ ]

