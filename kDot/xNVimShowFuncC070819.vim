|| $MYVIMRC         variable     17 k2MinFF.vim      let $MYVIMRC='~/.config/nvim/init.vim'
|| maplocalleader   variable     26 k2MinFF.vim      let maplocalleader=','
|| mapleader        variable     27 k2MinFF.vim      let mapleader=' '
|| g:ackprg         variable     65 k2MinFF.vim      let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
|| vimrc            augroup      69 k2MinFF.vim      augroup vimrc
|| g:pymode_python  variable     74 k2MinFF.vim      let g:pymode_python = 'python3'
|| <cr>             map         157 k2MinFF.vim      nnoremap <cr> o<esc>
|| <CR>             map         159 k2MinFF.vim      inoremap <silent><expr> <CR> (pumvisible() && bufname('%') !=# '[Command Line]' ? "\<C-e>\<CR>" : "\<C-g>u\<CR>")
|| }                map         161 k2MinFF.vim      noremap } }^
|| >                map         163 k2MinFF.vim      nnoremap > v>
|| <                map         164 k2MinFF.vim      nnoremap < v<
|| <                map         165 k2MinFF.vim      vnoremap < <gv
|| >                map         166 k2MinFF.vim      vnoremap > >gv
|| .                map         168 k2MinFF.vim      vnoremap . :normal .<CR>
|| w!!              map         170 k2MinFF.vim      cmap w!! w !sudo tee % >/dev/null
|| cd               map         174 k2MinFF.vim      map cd :cd %:p:h<cr>
k2MinFF.vim|184| function! ScriptExecute()
|| ScriptExecutePermission augroup     189 k2MinFF.vim      augroup ScriptExecutePermission
|| SourceVimrc      augroup     194 k2MinFF.vim      augroup SourceVimrc
|| g:indentLine_color_term variable    280 k2MinFF.vim      let g:indentLine_color_term = 251
|| g:indentLine_newVersion variable    281 k2MinFF.vim      let g:indentLine_newVersion = 0
|| g:CommandTHighlightColor variable    303 k2MinFF.vim      let g:CommandTHighlightColor = 9
|| g:oblique#clear_highlight variable    361 k2MinFF.vim      let g:oblique#clear_highlight =0
|| <BS>             map         399 k2MinFF.vim      nnoremap <BS> X
|| j                map         401 k2MinFF.vim      noremap j gj
|| k                map         402 k2MinFF.vim      noremap k gk
|| gj               map         403 k2MinFF.vim      noremap gj j
|| gk               map         404 k2MinFF.vim      noremap gk k
|| <C-A>            map         406 k2MinFF.vim      cnoremap <C-A> <Home>
|| <C-E>            map         407 k2MinFF.vim      cnoremap <C-E> <End>
|| <C-d>            map         408 k2MinFF.vim      cnoremap <C-d> <Del>
|| <c-o>            map         410 k2MinFF.vim      nnoremap <c-o> <c-o>zz
|| <c-i>            map         411 k2MinFF.vim      nnoremap <c-i> <c-i>zz
|| Y                map         414 k2MinFF.vim      nnoremap Y y$
|| H                map         416 k2MinFF.vim      nnoremap H mzJ`z
|| gv               map         419 k2MinFF.vim      nnoremap gv `[v`]
|| <C-W>            map         427 k2MinFF.vim      inoremap <C-W> <C-G>u<C-W>
|| <C-U>            map         428 k2MinFF.vim      inoremap <C-U> <C-G>u<C-U>
|| <Esc><Esc>       map         430 k2MinFF.vim      nnoremap <Esc><Esc> :<C-u>set nopaste<CR>:nohlsearch<CR>
|| n                map         432 k2MinFF.vim      nmap n nzz
|| N                map         433 k2MinFF.vim      nmap N Nzz
|| g*               map         434 k2MinFF.vim      nmap g* g*zz
|| g#               map         435 k2MinFF.vim      nmap g# g#zz
|| <tab>            map         441 k2MinFF.vim      nmap <tab> :bn<cr>
|| <s-tab>          map         442 k2MinFF.vim      nmap <s-tab> :bp<cr>
|| <S-right>        map         456 k2MinFF.vim      nnoremap <S-right> :vertical resize +3<cr>
|| <S-left>         map         457 k2MinFF.vim      nnoremap <S-left> :vertical resize -3<cr>
|| <S-up>           map         458 k2MinFF.vim      nnoremap <S-up> :resize +3<cr>
|| <S-down>         map         459 k2MinFF.vim      nnoremap <S-down> :resize -3<cr>
|| <S-up>           map         462 k2MinFF.vim      noremap <silent> <S-up> :call smooth_scroll#up(&scroll, 0, 2)<CR>
|| <S-down>         map         463 k2MinFF.vim      noremap <silent> <S-down> :call smooth_scroll#down(&scroll, 0, 2)<CR>
|| <c-u>            map         465 k2MinFF.vim      noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
|| <c-d>            map         466 k2MinFF.vim      noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
|| <c-b>            map         467 k2MinFF.vim      noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
|| <c-f>            map         468 k2MinFF.vim      noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
|| <S-j>            map         472 k2MinFF.vim      noremap <S-j> :PreviewScroll -1<cr>
|| <S-l>            map         473 k2MinFF.vim      noremap <S-l> :PreviewScroll +1<cr>
k2MinFF.vim|475| fun! ScrollOtherWindow(dir)
|| <C-M-Down>       map         483 k2MinFF.vim      nmap <silent> <C-M-Down> :call ScrollOtherWindow("down")<CR>
|| <C-M-Up>         map         484 k2MinFF.vim      nmap <silent> <C-M-Up> :call ScrollOtherWindow("up")<CR>
|| Q                map         490 k2MinFF.vim      nnoremap Q @q
|| Q                map         491 k2MinFF.vim      vnoremap Q :norm @q<cr>
|| q                map         493 k2MinFF.vim      nmap q <Nop>
|| q                map         494 k2MinFF.vim      nnoremap q <Nop>
|| ss               map         495 k2MinFF.vim      nnoremap ss :wa<cr>
|| qa               map         497 k2MinFF.vim      nnoremap qa :wa<cr> :bd<cr>
|| qq               map         498 k2MinFF.vim      nnoremap qq :bd<cr>
|| qs               map         499 k2MinFF.vim      nnoremap qs :wa<cr> :qa<cr>
|| ee               map         501 k2MinFF.vim      nnoremap ee :w<cr>:e #<cr>
|| qw               map         502 k2MinFF.vim      nnoremap qw <C-w>q<CR>
|| wq               map         503 k2MinFF.vim      nnoremap wq <C-w>q<CR>
|| ww               map         504 k2MinFF.vim      nnoremap ww <C-w>o<CR>
|| ZZ               map         506 k2MinFF.vim      nnoremap ZZ <Nop> 
|| ZZ               map         507 k2MinFF.vim      nnoremap ZZ mzzt1<c-u>`z
|| zs               map         508 k2MinFF.vim      nnoremap zs mzzt2<c-u>`z
|| zx               map         509 k2MinFF.vim      nnoremap zx mzzt35<c-u>`z
|| zh               map         510 k2MinFF.vim      nnoremap zh mzzt10<c-u>`z
|| EE               map         511 k2MinFF.vim      nnoremap EE :source $MYVIMRC<CR>
|| BB               map         512 k2MinFF.vim      nnoremap BB ggVG
|| CC               map         513 k2MinFF.vim      nnoremap CC ggVG"+y
|| ;e               map         516 k2MinFF.vim      nnoremap ;e :ls<cr>:b<space>
|| ;v               map         518 k2MinFF.vim      nnoremap ;v <c-w>v<c-w>l
|| vv               map         519 k2MinFF.vim      nnoremap vv <c-w>v<c-w>l<cr><c-w>w<cr>
|| hh               map         520 k2MinFF.vim      nnoremap hh <c-w>w
|| ll               map         522 k2MinFF.vim      nnoremap ll :execute "leftabove vsplit" bufname('#')<cr>
|| VV               map         523 k2MinFF.vim      nnoremap VV :execute "leftabove vsplit" bufname('#')<cr>
|| ;r               map         524 k2MinFF.vim      nnoremap ;r :execute "rightbelow vsplit" bufname('#')<cr>
|| W                map         534 k2MinFF.vim      nnoremap W gwip
|| ;t               map         535 k2MinFF.vim      nnoremap ;t :set tw=70<cr>v<s-}>gq<end>
|| ;a               map         536 k2MinFF.vim      noremap ;a =ip
|| ;p               map         541 k2MinFF.vim      nnoremap ;p :'.t.<cr>
|| ;p               map         542 k2MinFF.vim      vnoremap ;p :'.t.<cr>
|| ;f               map         545 k2MinFF.vim      nnoremap ;f ?^func\\|^[a-zA-Z].*func<CR>,/
|| ;d               map         547 k2MinFF.vim      nnoremap ;d mayiw`a:exe ":Capture !dict -P - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
|| ,d               map         549 k2MinFF.vim      nnoremap ,d mayiw`a:exe ":Capture !dict -d fd-eng-deu - $(echo " . @" . "\| recode latin1..utf-8)"<CR>
|| ,w               map         552 k2MinFF.vim      nnoremap ,w :<C-r>=expand("<cword>")<CR>
|| ;w               map         553 k2MinFF.vim      nnoremap ;w :<C-r>=getline(".")<CR>
|| ,,               map         556 k2MinFF.vim      nmap ,, <Plug>(easymotion-overwin-w)
|| ;;               map         557 k2MinFF.vim      nmap ;; <Plug>(easymotion-overwin-w)
|| ;;               map         558 k2MinFF.vim      imap ;; <ESC>
|| g:EasyOperator_line_do_mapping variable    560 k2MinFF.vim      let g:EasyOperator_line_do_mapping = 0
|| ;l               map         561 k2MinFF.vim      omap ;l <Plug>(easyoperator-line-select)
|| d;l              map         563 k2MinFF.vim      nmap d;l <Plug>(easyoperator-line-delete)
|| p;l              map         564 k2MinFF.vim      nmap p;l <Plug>(easyoperator-line-yank)
|| ]c               map         571 k2MinFF.vim      nmap ]c <Plug>GitGutterNextHunk
|| [c               map         572 k2MinFF.vim      nmap [c <Plug>GitGutterPrevHunk
|| hp               map         574 k2MinFF.vim      nmap hp <Plug>GitGutterPreviewHunk
|| hs               map         575 k2MinFF.vim      nmap hs <Plug>GitGutterStageHunk
|| hu               map         576 k2MinFF.vim      nmap hu <Plug>GitGutterUndoHunk
|| dg               map         578 k2MinFF.vim      vmap dg :diffget<CR>
|| dp               map         579 k2MinFF.vim      vmap dp :diffput<CR>
|| do               map         580 k2MinFF.vim      nnoremap do :diffoff!<cr>
|| <A-c>            map         597 k2MinFF.vim      vmap <A-c> :w !cat >> ./zbuf<CR>
|| ;x               map         602 k2MinFF.vim      nnoremap ;x yy:<C-r>"<cr>
|| (                map         606 k2MinFF.vim      nnoremap ( <c-x>:y x\|@x<cr>
|| )                map         607 k2MinFF.vim      nnoremap ) <c-a>:y x\|@x<cr>
|| <leader>o        map         612 k2MinFF.vim      nnoremap <leader>o :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
|| <localleader>o   map         613 k2MinFF.vim      nnoremap <localleader>o :Utl<CR>
|| ;o               map         614 k2MinFF.vim      nnoremap ;o :Utl<CR>
|| <A-]>            map         618 k2MinFF.vim      nnoremap <A-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
k2MinFF.vim|620| function! s:VSetSearch()
|| *                map         626 k2MinFF.vim      vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
|| #                map         627 k2MinFF.vim      vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>
|| <C-g>            map         630 k2MinFF.vim      inoremap <expr><C-g> deoplete#undo_completion()
|| <C-l>            map         631 k2MinFF.vim      inoremap <expr><C-l> deoplete#refresh()
|| <C-h>            map         632 k2MinFF.vim      inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
|| <C-s>            map         634 k2MinFF.vim      imap <C-s> <Plug>(neosnippet_start_unite_snippet)
|| <C-k>            map         635 k2MinFF.vim      imap <C-k> <Plug>(neosnippet_expand_or_jump)
|| <Leader>y        map         638 k2MinFF.vim      nnoremap <Leader>y :<C-u>Unite -buffer-name=neosnippet neosnippet<CR>
k2MinFF.vim|645| function! UltiSnipsCallUnite()
|| <F4>             map         649 k2MinFF.vim      inoremap <F4> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
|| g:UltiSnipsExpandTrigger variable    651 k2MinFF.vim      let g:UltiSnipsExpandTrigger="<tab>"
|| g:UltiSnipsJumpBackwardTrigger variable    652 k2MinFF.vim      let g:UltiSnipsJumpBackwardTrigger="<C-b>"
|| g:UltiSnipsJumpForwardTrigger variable    653 k2MinFF.vim      let g:UltiSnipsJumpForwardTrigger="<C-z>"
|| cmdline_map_start variable    658 k2MinFF.vim      let cmdline_map_start = '<LocalLeader>s'
|| cmdline_map_send variable    659 k2MinFF.vim      let cmdline_map_send = '<Space>'
|| cmdline_map_send_and_stay variable    660 k2MinFF.vim      let cmdline_map_send_and_stay = '<LocalLeader><Space>'
|| cmdline_map_source_fun variable    661 k2MinFF.vim      let cmdline_map_source_fun = '<LocalLeader>f'
|| cmdline_map_send_paragraph variable    662 k2MinFF.vim      let cmdline_map_send_paragraph = '<LocalLeader>p'
|| cmdline_map_send_block variable    663 k2MinFF.vim      let cmdline_map_send_block = '<LocalLeader>b'
|| cmdline_map_quit variable    664 k2MinFF.vim      let cmdline_map_quit = '<LocalLeader>q'
|| <F1>             map         670 k2MinFF.vim      inoremap <F1> <ESC>
|| <F1>             map         671 k2MinFF.vim      nnoremap <F1> <ESC>
|| <F1>             map         672 k2MinFF.vim      vnoremap <F1> <ESC>
|| <F2>             map         677 k2MinFF.vim      nmap <F2> <Esc>:helpgrep <C-r><C-w><CR>
|| <F2>             map         678 k2MinFF.vim      nmap <F2> "zyw:exe "h ".@z.""<CR>
|| <F2>             map         679 k2MinFF.vim      nmap <F2> <Esc>:help <C-r><C-w><CR>
|| <F3>             map         683 k2MinFF.vim      nnoremap <F3> :call NERDTreeToggleInCurDir()<CR>
|| <F3>             map         684 k2MinFF.vim      inoremap <F3> <esc>:NERDTreeToggle<cr>
|| <F4>             map         686 k2MinFF.vim      nnoremap <F4> <esc>:Startify<cr>
|| <F5>             map         688 k2MinFF.vim      nnoremap <F5> :w<CR>:!python %<CR>
|| <F5>             map         700 k2MinFF.vim      nnoremap <F5> :call <SID>compile_and_run()<CR>
k2MinFF.vim|702| function! s:compile_and_run()
|| g:asyncrun_open  variable    717 k2MinFF.vim      let g:asyncrun_open = 15
|| <Leader>0        map         722 k2MinFF.vim      nnoremap <Leader>0 :set number!<return>
|| <Leader>1        map         724 k2MinFF.vim      nnoremap <Leader>1 :SideSearch <C-r><C-w><CR> | wincmd p
|| SIS              command     725 k2MinFF.vim      command! -complete=file -nargs=+ SIS execute 'SideSearch <args>'
|| <Leader>2        map         727 k2MinFF.vim      nnoremap <Leader>2 :PymodeDoc <cword> .<cr>
|| <Leader>3        map         729 k2MinFF.vim      nnoremap <Leader>3 :Pydoc <cword> .<cr>
|| <Leader>4        map         731 k2MinFF.vim      nnoremap <Leader>4 <Plug>AgRawSearch
|| SS               map         733 k2MinFF.vim      nnoremap SS :SideSearch <C-r><C-w><CR> | wincmd p
|| g:pydoc_cmd      variable    736 k2MinFF.vim      let g:pydoc_cmd = 'python -m pydoc'
|| PP               map         737 k2MinFF.vim      nnoremap PP :Pydoc <C-r><C-w><CR> | wincmd p
|| ff               map         743 k2MinFF.vim      nnoremap ff :NV <C-r><C-w><CR> | wincmd p
|| FF               map         744 k2MinFF.vim      nnoremap FF :ZRg <C-r><C-w><CR> | wincmd p
|| AA               map         745 k2MinFF.vim      nnoremap AA :ZAg <C-r><C-w><CR> | wincmd p
|| GG               map         746 k2MinFF.vim      nnoremap GG :ZGit <C-r><C-w><CR> | wincmd p
|| <Leader>a        map         747 k2MinFF.vim      nnoremap <Leader>a :Ack <C-r><C-w><CR> | wincmd p
|| <Leader>m        map         749 k2MinFF.vim      nnoremap <Leader>m :<C-u>Unite -buffer-name=jump jump<CR>
|| <Leader>c        map         750 k2MinFF.vim      nnoremap <Leader>c :<C-u>Unite -buffer-name=change change<CR>
|| <LocalLeader>;   map         756 k2MinFF.vim      nnoremap <LocalLeader>; :CodeQueryMenu Unite Full<CR>
|| <LocalLeader>\   map         759 k2MinFF.vim      nnoremap <LocalLeader>\ :CodeQueryMenu Unite Magic<CR>A
|| g:codequery_trigger_build_db_when_db_not_found variable    762 k2MinFF.vim      let g:codequery_trigger_build_db_when_db_not_found = 1
|| g:codequery_find_text_cmd variable    764 k2MinFF.vim      let g:codequery_find_text_cmd = 'Ack!'
|| g:codequery_find_text_from_current_file_dir variable    766 k2MinFF.vim      let g:codequery_find_text_from_current_file_dir = 0
|| g:codequery_auto_switch_to_find_text_for_wrong_filetype variable    772 k2MinFF.vim      let g:codequery_auto_switch_to_find_text_for_wrong_filetype = 0
|| \\               map         785 k2MinFF.vim      nnoremap \\ :<C-u>Unite -buffer-name=register register<CR>
|| <F6>             map         787 k2MinFF.vim      nnoremap <F6> :FFLines <C-r><C-w><CR> | wincmd p
|| <F7>             map         788 k2MinFF.vim      nnoremap <F7> :FFBLines <C-r><C-w><CR> | wincmd p
|| ,h               map         790 k2MinFF.vim      nnoremap ,h :CommandTHelp<cr>
|| ;h               map         791 k2MinFF.vim      nnoremap ;h :CommandTHelp<cr>
|| cc               map         798 k2MinFF.vim      nmap cc gcl
|| <F8>             map         800 k2MinFF.vim      nnoremap <F8> :LocationToggle<cr>
|| <LocalLeader>n   map         801 k2MinFF.vim      nnoremap <LocalLeader>n :lnext<cr>zvzz
|| <LocalLeader>b   map         802 k2MinFF.vim      nnoremap <LocalLeader>b :lprev<cr>zvzz
|| <F9>             map         804 k2MinFF.vim      nnoremap <F9> :call ToggleQuickFix()<CR>
|| <Leader>b        map         805 k2MinFF.vim      nnoremap <Leader>b :cprev<cr>zvzz
|| <Leader>n        map         806 k2MinFF.vim      nnoremap <Leader>n :cnext<cr>zvzz
|| <F10>            map         808 k2MinFF.vim      nmap <F10> <c-w>w
|| <F12>            map         810 k2MinFF.vim      nnoremap <F12> :TagbarToggle<CR>
|| TT               map         811 k2MinFF.vim      nnoremap TT :TagbarToggle<CR>
|| <C-o>            map         814 k2MinFF.vim      inoremap <silent> <C-o> <C-x><C-o>
|| <C-d>            map         816 k2MinFF.vim      inoremap <silent> <C-d> <C-x><C-d>
|| <C-f>            map         817 k2MinFF.vim      inoremap <silent> <C-f> <C-x><C-f>
|| <C-l>            map         818 k2MinFF.vim      inoremap <silent> <C-l> <C-x><C-l>
|| <C-]>            map         819 k2MinFF.vim      inoremap <silent> <C-]> <C-x><C-]>
|| fu               map         829 k2MinFF.vim      nnoremap fu :syntax sync fromstart<cr>:redraw!<cr>
|| zu               map         830 k2MinFF.vim      nnoremap zu :<c-u>update<cr>
|| g:undoquit_mapping variable    831 k2MinFF.vim      let g:undoquit_mapping = ';q' 
|| <Leader>q        map         832 k2MinFF.vim      nnoremap <Leader>q :Bdelete<CR> 
|| ,z               map         836 k2MinFF.vim      nnoremap ,z :call FocusLine()<cr>
|| z0               map         837 k2MinFF.vim      nnoremap z0 zczO 
|| z8               map         840 k2MinFF.vim      nnoremap z8 :call <SID>SynStack()<CR>
|| <Leader>x        map         847 k2MinFF.vim      nnoremap <Leader>x :ThesaurusQueryReplaceCurrentWord<CR>
|| LocationToggle   command     853 k2MinFF.vim      command! LocationToggle call LocationToggle()
k2MinFF.vim|854| function! LocationToggle()
|| ToggleQuickFix   command     865 k2MinFF.vim      command! ToggleQuickFix call ToggleQuickFix()
k2MinFF.vim|866| function! ToggleQuickFix()
k2MinFF.vim|891| function! FocusLine()
k2MinFF.vim|899| function! <SID>SynStack()
k2MinFF.vim|907| function! ShowFuncKeys(bang)
|| ShowFuncKeys     command     918 k2MinFF.vim      command! ShowFuncKeys call ShowFuncKeys(<q-bang>)
|| ShowFunc         command     920 k2MinFF.vim      command! ShowFunc call ShowFunc()
|| ShowFuncC        command     921 k2MinFF.vim      command! ShowFuncC call ShowFunc()
k2MinFF.vim|922| function! ShowFunc()
|| g:fzf_layout     variable    942 k2MinFF.vim      let g:fzf_layout = { 'window': 'enew' }
|| g:fzf_layout     variable    943 k2MinFF.vim      let g:fzf_layout = { 'window': '-tabnew' }
|| g:fzf_layout     variable    944 k2MinFF.vim      let g:fzf_layout = { 'down': '~20%' }
|| g:fzf_layout     variable    945 k2MinFF.vim      let g:fzf_layout = { 'window': '10split enew' }
|| g:fzf_colors     variable    948 k2MinFF.vim      let g:fzf_colors =
|| g:fzf_command_prefix variable    963 k2MinFF.vim      let g:fzf_command_prefix = 'FF'
|| g:fzf_action     variable    964 k2MinFF.vim      let g:fzf_action = {
k2MinFF.vim|970| function! s:fzf_statusline()
|| g:fzf_buffers_jump variable    980 k2MinFF.vim      let g:fzf_buffers_jump = 1
|| g:fzf_commits_log_options variable    982 k2MinFF.vim      let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
|| g:fzf_tags_command variable    984 k2MinFF.vim      let g:fzf_tags_command = 'ctags -R'
|| g:fzf_commands_expect variable    986 k2MinFF.vim      let g:fzf_commands_expect = 'alt-enter,ctrl-x'
k2MinFF.vim|989| function! FzfSpellSink(word)
k2MinFF.vim|992| function! FzfSpell()
|| ZTag             command     998 k2MinFF.vim      command! ZTag if !empty(tagfiles()) | call fzf#run({
k2MinFF.vim|1005| function! s:tag_handler(tag)
|| <leader><tab>    map        1021 k2MinFF.vim      nmap <leader><tab> <plug>(fzf-maps-n)
|| <leader><tab>    map        1023 k2MinFF.vim      omap <leader><tab> <plug>(fzf-maps-o)
|| <c-x><c-k>       map        1030 k2MinFF.vim      inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')
|| <c-k>            map        1031 k2MinFF.vim      imap <c-k> <plug>(fzf-complete-word)
|| <A-k>            map        1032 k2MinFF.vim      imap <expr><A-k> fzf#vim#complete#word({'left': '20%'})
|| <c-j>            map        1033 k2MinFF.vim      imap <c-j> <plug>(fzf-complete-file-ag)
|| <c-l>            map        1034 k2MinFF.vim      imap <c-l> <plug>(fzf-complete-line)
|| <c-q>            map        1037 k2MinFF.vim      inoremap <expr> <c-q> fzf#vim#complete(fzf#wrap({
|| ==               map        1057 k2MinFF.vim      nmap == :call FzfSpell()<CR>
|| ZFind            command    1069 k2MinFF.vim      command! -bang -nargs=* ZFind call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
|| ZFi              command    1070 k2MinFF.vim      command! -bang -nargs=* ZFi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
|| ZFiles           command    1076 k2MinFF.vim      command! -bang -nargs=? -complete=dir ZFiles
|| ZAg              command    1079 k2MinFF.vim      command! -bang -nargs=? ZAg
|| ZRg              command    1082 k2MinFF.vim      command! -bang -nargs=* ZRg 
|| ZGit             command    1087 k2MinFF.vim      command! -bang -nargs=? ZGit
|| ZClr             command    1090 k2MinFF.vim      command! -bang -nargs=? ZClr
|| g:pathToTemplates variable   1100 k2MinFF.vim      let g:pathToTemplates='~/bakBuk/'
k2MinFF.vim|1102| function! PutSink(file)
|| ZPut             command    1106 k2MinFF.vim      command! ZPut call fzf#run({
|| ZLibList         command    1114 k2MinFF.vim      command! ZLibList call fzf#run({'source': 'find ~/git/ ~/Documents/ -type f', 'sink': 'edit'})
k2MinFF.vim|1120| function! s:plug_help_sink(line)
|| ZPlugHelp        command    1133 k2MinFF.vim      command! ZPlugHelp call fzf#run(fzf#wrap({
|| ZDeviList        command    1143 k2MinFF.vim      command! ZDeviList call ZDeviList()
|| ZDevi            command    1144 k2MinFF.vim      command! ZDevi call ZDeviList()
k2MinFF.vim|1146| function! ZDeviList()
k2MinFF.vim|1152| function! s:prepend_icon(candidates)
k2MinFF.vim|1163| function! s:edit_file(item)
|| zp               map        1189 k2MinFF.vim      nmap zp <Plug>yankstack_substitute_older_paste
|| zn               map        1190 k2MinFF.vim      nmap zn <Plug>yankstack_substitute_newer_paste
|| <C-c>            map        1195 k2MinFF.vim      vmap <C-c> "+yi imap <C-v> <esc>"+gpi nmap WW ]p
|| _u               map        1232 k2MinFF.vim      map _u :call ID_search()<Bar>execute "/\\<" . g:word . "\\>"<CR>
|| _n               map        1233 k2MinFF.vim      map _n :n<Bar>execute "/\\<" . g:word . "\\>"<CR>
k2MinFF.vim|1235| function! ID_search()
|| ;z               map        1252 k2MinFF.vim      nmap ;z <Plug>Zeavim
|| <Leader>z        map        1253 k2MinFF.vim      nmap <Leader>z <Plug>ZVKeyDocset
|| DiffOrig         command    1259 k2MinFF.vim      command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
k2MinFF.vim|1263| function! MyJumpTo()
|| <Leader>5        map        1272 k2MinFF.vim      nnoremap <Leader>5 :call MyJumpTo()<CR>
|| ff               map        1275 k2MinFF.vim      nnoremap ff :call CscopeFindInteractive(expand('<cword>'))<CR>
|| <leader>ff       map        1277 k2MinFF.vim      nnoremap <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
|| <Leader>d        map        1292 k2MinFF.vim      nmap <silent> <Leader>d <Plug>DictSearch
|| <Leader>t        map        1293 k2MinFF.vim      nnoremap <Leader>t :!goldendict <C-r><C-w><CR>
|| <Leader>s        map        1295 k2MinFF.vim      nmap <Leader>s <Plug>(textobj-diff-hunk-n)
