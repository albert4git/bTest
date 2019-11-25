
"===============================================================================================================
"=====================================WhichKEY==================================================================
"===============================================================================================================

"==========================================================
let g:which_key_hspace =4
let g:which_key_sep = get(g:, 'which_key_sep', '>>')
let g:which_key_hspace = get(g:, 'which_key_hspace', 4)
let g:which_key_vertical = get(g:, 'which_key_vertical', 1)
" let g:which_key_flatten = get(g:, 'which_key_flatten', 0)
"===============================================================================================================

let g:which_key_map = {}

let g:which_key_map.9 = {
\ 'name' : '+buffer' ,
\ '1' : ['b1'        , 'buffer 1']        ,
\ '2' : ['b2'        , 'buffer 2']        ,
\ 'd' : ['bd'        , 'delete-buffer']   ,
\ 'f' : ['bfirst'    , 'first-buffer']    ,
\ 'h' : ['Startify'  , 'home-buffer']     ,
\ 'l' : ['blast'     , 'last-buffer']     ,
\ 'n' : ['bnext'     , 'next-buffer']     ,
\ 'p' : ['bprevious' , 'previous-buffer'] ,
\ '?' : ['Buffers'   , 'fzf-buffer']      ,
\ }

let g:which_key_map.8= {
\ 'name' : '+windows' ,
\ 'w' : ['<C-W>w'     , 'other-window']          ,
\ 'd' : ['<C-W>c'     , 'delete-window']         ,
\ '-' : ['<C-W>s'     , 'split-window-below']    ,
\ '|' : ['<C-W>v'     , 'split-window-right']    ,
\ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
\ 'h' : ['<C-W>h'     , 'window-left']           ,
\ 'j' : ['<C-W>j'     , 'window-below']          ,
\ 'l' : ['<C-W>l'     , 'window-right']          ,
\ 'k' : ['<C-W>k'     , 'window-up']             ,
\ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
\ 'J' : ['resize +5'  , 'expand-window-below']   ,
\ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
\ 'K' : ['resize -5'  , 'expand-window-up']      ,
\ '=' : ['<C-W>='     , 'balance-window']        ,
\ 's' : ['<C-W>s'     , 'split-window-below']    ,
\ 'v' : ['<C-W>v'     , 'split-window-below']    ,
\ '?' : ['Windows'    , 'fzf-window']            ,
\ }



