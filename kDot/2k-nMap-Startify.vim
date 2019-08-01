   <M-n>       *@:call AutoPairsJump()<CR>
   <M-p>       *@:call AutoPairsToggle()<CR>
n  <Tab>         :bn<CR>
   <NL>          <C-W>j<C-W>_
no <C-K>         <C-W>k<C-W>_
n  <CR>        * o<Esc>
n  <C-O>       * <C-O>zz
n  <C-P>       * :<C-U>CtrlP<CR>
n  <C-W>gsb      <Plug>(Visual-Split-SplitBelow)
n  <C-W>gsa      <Plug>(Visual-Split-SplitAbove)
n  <C-W>gss      <Plug>(Visual-Split-Split)
n  <C-W>gr       <Plug>(Visual-Split-Resize)
n  <C-W>g<C-]> * :Stjump <cword><CR>
n  <C-W>g]     * :Stselect <cword><CR>
n  <C-Z>       * yy:<C-R>"<CR>
n  <Esc><Esc>  * :<C-U>set nopaste<CR>:nohlsearch<CR>
n  <Space>fp   * :BMChangeDirectory<CR>
n  <Space>fa   * :BMFiles<CR>
n  <Space>fg   * :BMGitFiles<CR>
n  <Space>tt     <Plug>(table-mode-tableize)
n  <Space>tm   * :<C-U>call tablemode#Toggle()<CR>
   <Space>f      :Ranger<CR>
n  <Space>u      [unite]
n  <Space>t      <Plug>(CommandT)
   <Space>r      <Plug>(quickrun)
n  <Space>gw   * :GitGrepWord<CR>
n  <Space>c    * :<C-U>Unite -buffer-name=change change<CR>
n  <Space>m    * :<C-U>Unite -buffer-name=jump jump<CR>
n  <Space>j    * :<C-U>Unite -buffer-name=jump jump<CR>
n  <Space><Tab>   <Plug>(fzf-maps-n)
n  <Space>n    * :cnext<CR>zvzz
n  <Space>b    * :cprev<CR>zvzz
n  <Space>a    * :Ack <C-R><C-W><CR><Space>
n  <Space>4    * <Plug>AgRawSearch
n  <Space>3    * :Pydoc <cword> .<CR>
n  <Space>2    * :PymodeDoc <cword> .<CR>
n  <Space>1    * :SideSearch <C-R><C-W><CR><Space>
n  <Space>0    * :set number!<CR>
n  <Space>y    * :<C-U>Unite -buffer-name=neosnippet neosnippet<CR>
n  <Space>o    * :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;|%")<CR><CR>
n  <Space>a|     :Tabularize /|<CR>
n  <Space>a,,    :Tabularize /,\zs<CR>
n  <Space>a,     :Tabularize /,<CR>
n  <Space>a::    :Tabularize /:\zs<CR>
n  <Space>a:     :Tabularize /:<CR>
n  <Space>a=>    :Tabularize /=><CR>
n  <Space>a=     :Tabularize /^[^=]*\zs=<CR>
n  <Space>a&     :Tabularize /&<CR>
n  <Space>ss   * :SideSearch <C-R><C-W><CR><Space>
n  #           * #:call BlingHighight()<CR>
n  %           * :<C-U>call <SNR>87_Match_wrapper('',1,'n') <CR>
n  '[          * :<C-U>call signature#mark#Goto("prev", "line", "alpha")<CR>
n  ']          * :<C-U>call signature#mark#Goto("next", "line", "alpha")<CR>
n  (           * <C-X>:y x|@x<CR>
n  )           * <C-A>:y x|@x<CR>
n  *           * *:call BlingHighight()<CR>
n  +             <Plug>(expand_region_expand)
n  ,z          * :call FocusLine()<CR>
n  ,b          * :lprev<CR>zvzz
n  ,n          * :lnext<CR>zvzz
n  ,d          * mayiw`a:exe ":Capture !dict -d fd-eng-deu - $(echo " . @" . "| recode latin1..utf-8)"<CR>
n  ,,            <Plug>(easymotion-overwin-w)
   /           * :call SearchCompleteStart()<CR>/
n  ;q          * :call undoquit#UndoQuitWindow()<CR>
n  ;;            <Plug>(easymotion-overwin-w)
n  ;z          * :<C-R>=getline(".")<CR>
n  ;w          * :<C-R>=expand("<cword>")<CR>
n  ;d          * mayiw`a:exe ":Capture !dict -P - $(echo " . @" . "| recode latin1..utf-8)"<CR>
n  ;f          * ?^func\|^[a-zA-Z].*func<CR>,/
n  ;p          * :'.t.<CR>
   ;a          * =ip
n  ;t          * :set tw=70<CR>v<S-}>gq<End>
n  ;r          * :execute "rightbelow vsplit" bufname('#')<CR>
n  ;v          * <C-W>v<C-W>l
n  ;e          * :ls<CR>:b<Space>
n  <p          & :<C-U>call <SNR>100_putline(v:count1 . ']p', 'Below')<CR><']
n  <P          & :<C-U>call <SNR>100_putline(v:count1 . '[p', 'Above')<CR><']
n  <           * v<
n  =p          & :<C-U>call <SNR>100_putline(v:count1 . ']p', 'Below')<CR>=']
n  =P          & :<C-U>call <SNR>100_putline(v:count1 . '[p', 'Above')<CR>=']
n  =op         * <Nop>
n  =o            <SNR>100_legacy_option_map(nr2char(getchar()))
n  ==            :call FzfSpell()<CR>
n  >p          & :<C-U>call <SNR>100_putline(v:count1 . ']p', 'Below')<CR>>']
n  >P          & :<C-U>call <SNR>100_putline(v:count1 . '[p', 'Above')<CR>>']
n  >           * v>
n  AA          * :ZAg <C-R><C-W><CR><Space>
n  BB          * ggVG
n  C           * <SNR>146_yank_with_key("C")
n  CC          * ggVG"+y
n  D           * <SNR>146_yank_with_key("D")
n  EE          * :source $MYVIMRC<CR>
n  FF          * :ZRg <C-R><C-W><CR><Space>
n  GG          * :ZGit <C-R><C-W><CR><Space>
n  H           * mzJ`z
   J           * :PreviewScroll -1<CR>
n  K           * :call <SNR>44_dict(0)<CR>
   L           * :PreviewScroll +1<CR>
n  N           * N:call BlingHighight()<CR>
n  P           * :<C-U>call <SNR>146_paste_with_key("P", "n", v:register, v:count1)<CR>
n  Q           * @q
n  S           * <SNR>146_yank_with_key("S")
n  SS          * :SideSearch <C-R><C-W><CR><Space>
n  TT          * :TagbarToggle<CR>
n  WW            ]p
n  W           * gwip
n  X           * <SNR>146_yank_with_key("X")
n  Y           * <SNR>146_yank_with_key("Y")
n  ZZ          * mzzt1<C-U>`z
n  [xx           <Plug>unimpaired_line_xml_encode
n  [x            <Plug>unimpaired_xml_encode
n  [uu           <Plug>unimpaired_line_url_encode
n  [u            <Plug>unimpaired_url_encode
n  [yy           <Plug>unimpaired_line_string_encode
n  [y            <Plug>unimpaired_string_encode
n  [P            <Plug>unimpairedPutAbove
n  [p            <Plug>unimpairedPutAbove
n  [op         & :call <SNR>100_setup_paste()<CR>O
n  [o+         & :set cursorline cursorcolumn<CR>
n  [ox         & :set cursorline cursorcolumn<CR>
n  [ov         & :set virtualedit+=all<CR>
n  [ow         & :setlocal wrap<C-R>=<SNR>100_statusbump()<CR><CR>
n  [os         & :setlocal spell<C-R>=<SNR>100_statusbump()<CR><CR>
n  [or         & :setlocal relativenumber<C-R>=<SNR>100_statusbump()<CR><CR>
n  [on         & :setlocal number<C-R>=<SNR>100_statusbump()<CR><CR>
n  [ol         & :setlocal list<C-R>=<SNR>100_statusbump()<CR><CR>
n  [oi         & :set ignorecase<C-R>=<SNR>100_statusbump()<CR><CR>
n  [oh         & :set hlsearch<C-R>=<SNR>100_statusbump()<CR><CR>
n  [od         & :diffthis<CR>
n  [o|         & :setlocal cursorcolumn<C-R>=<SNR>100_statusbump()<CR><CR>
n  [ou         & :setlocal cursorcolumn<C-R>=<SNR>100_statusbump()<CR><CR>
n  [o_         & :setlocal cursorline<C-R>=<SNR>100_statusbump()<CR><CR>
n  [o-         & :setlocal cursorline<C-R>=<SNR>100_statusbump()<CR><CR>
n  [oc         & :setlocal cursorline<C-R>=<SNR>100_statusbump()<CR><CR>
n  [ob         & :set background=light<CR>
n  [e            <Plug>unimpairedMoveUp
n  [<Space>      <Plug>unimpairedBlankUp
n  [n            <Plug>unimpairedContextPrevious
n  [f            <Plug>unimpairedDirectoryPrevious
n  [<C-T>        <Plug>unimpairedTPPrevious
n  [T            <Plug>unimpairedTFirst
n  [t            <Plug>unimpairedTPrevious
n  [<C-Q>        <Plug>unimpairedQPFile
n  [Q            <Plug>unimpairedQFirst
n  [q            <Plug>unimpairedQPrevious
n  [<C-L>        <Plug>unimpairedLPFile
n  [L            <Plug>unimpairedLFirst
n  [l            <Plug>unimpairedLPrevious
n  [B            <Plug>unimpairedBFirst
n  [b            <Plug>unimpairedBPrevious
n  [A            <Plug>unimpairedAFirst
n  [a            <Plug>unimpairedAPrevious
n  [%          * :<C-U>call <SNR>87_MultiMatch("bW", "n") <CR>
n  [unite]o    * :<C-U>Unite -buffer-name=outline -auto-highlight -vertical -winwidth=30 outline:!<CR>
n  [unite]D    * :<C-U>Unite  -no-split  neomru/directory<CR>
n  [unite]d    * :<C-U>Unite  neomru/directory<CR>
n  [unite]R    * :<C-U>Unite  -no-split  neomru/file<CR>
n  [unite]r    * :<C-U>Unite  neomru/file<CR>
n  [unite]T    * :<C-U>Unite  -no-split  -input= tag<CR>
n  [unite]t    * :<C-U>Unite  -input= tag<CR>
n  [unite]B    * :<C-U>Unite  -no-split  buffer<CR>
n  [unite]b    * :<C-U>Unite  buffer<CR>
n  [unite]G    * :<C-U>UniteResume grep<CR>
n  [unite]]    * :<C-U>call <SNR>83_NavigateTo()<CR>
n  [unite]g    * :<C-U>UniteWithInput grep:.<CR>
n  [unite]F    * :<C-U>Unite  -no-split  -resume -buffer-name=file    -no-restore -input= -start-insert -hide-source-names -unique file file/new<CR>
n  [unite]f    * :<C-U>Unite  -resume -buffer-name=file    -no-restore -input= -start-insert -hide-source-names -unique file file/new<CR>
n  [unite]P    * :<C-U>Unite  -no-split  -resume -buffer-name=project -no-restore -input= -start-insert -hide-source-names -unique file_rec/git:--cached:--others:--exclude-standard<CR>
n  [unite]p    * :<C-U>Unite  -resume -buffer-name=project -no-restore -input= -start-insert -hide-source-names -unique file_rec/git:--cached:--others:--exclude-standard<CR>
n  [unite]     * <Nop>
n  [=          * :<C-U>call signature#marker#Goto("prev", "any",  v:count)<CR>
n  [-          * :<C-U>call signature#marker#Goto("prev", "same", v:count)<CR>
n  [`          * :<C-U>call signature#mark#Goto("prev", "spot", "pos")<CR>
n  ['          * :<C-U>call signature#mark#Goto("prev", "line", "pos")<CR>
n  [c            <Plug>GitGutterPrevHunk
n  \\          * :<C-U>Unite -buffer-name=register register<CR>
n  ]xx           <Plug>unimpaired_line_xml_decode
n  ]x            <Plug>unimpaired_xml_decode
n  ]uu           <Plug>unimpaired_line_url_decode
n  ]u            <Plug>unimpaired_url_decode
n  ]yy           <Plug>unimpaired_line_string_decode
n  ]y            <Plug>unimpaired_string_decode
n  ]P            <Plug>unimpairedPutBelow
n  ]p            <Plug>unimpairedPutBelow
n  ]op         & :call <SNR>100_setup_paste()<CR>o
n  ]o+         & :set nocursorline nocursorcolumn<CR>
n  ]ox         & :set nocursorline nocursorcolumn<CR>
n  ]ov         & :set virtualedit-=all<CR>
n  ]ow         & :setlocal nowrap<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]os         & :setlocal nospell<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]or         & :setlocal norelativenumber<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]on         & :setlocal nonumber<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]ol         & :setlocal nolist<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]oi         & :set noignorecase<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]oh         & :set nohlsearch<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]od         & :diffoff<CR>
n  ]o|         & :setlocal nocursorcolumn<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]ou         & :setlocal nocursorcolumn<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]o_         & :setlocal nocursorline<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]o-         & :setlocal nocursorline<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]oc         & :setlocal nocursorline<C-R>=<SNR>100_statusbump()<CR><CR>
n  ]ob         & :set background=dark<CR>
n  ]e            <Plug>unimpairedMoveDown
n  ]<Space>      <Plug>unimpairedBlankDown
n  ]n            <Plug>unimpairedContextNext
n  ]f            <Plug>unimpairedDirectoryNext
n  ]<C-T>        <Plug>unimpairedTPNext
n  ]T            <Plug>unimpairedTLast
n  ]t            <Plug>unimpairedTNext
n  ]<C-Q>        <Plug>unimpairedQNFile
n  ]Q            <Plug>unimpairedQLast
n  ]q            <Plug>unimpairedQNext
n  ]<C-L>        <Plug>unimpairedLNFile
n  ]L            <Plug>unimpairedLLast
n  ]l            <Plug>unimpairedLNext
n  ]B            <Plug>unimpairedBLast
n  ]b            <Plug>unimpairedBNext
n  ]A            <Plug>unimpairedALast
n  ]a            <Plug>unimpairedANext
n  ]%          * :<C-U>call <SNR>87_MultiMatch("W",  "n") <CR>
n  ]=          * :<C-U>call signature#marker#Goto("next", "any",  v:count)<CR>
n  ]-          * :<C-U>call signature#marker#Goto("next", "same", v:count)<CR>
n  ]`          * :<C-U>call signature#mark#Goto("next", "spot", "pos")<CR>
n  ]'          * :<C-U>call signature#mark#Goto("next", "line", "pos")<CR>
n  ]c            <Plug>GitGutterNextHunk
n  _             <Plug>(expand_region_shrink)
n  `[          * :<C-U>call signature#mark#Goto("prev", "spot", "alpha")<CR>
n  `]          * :<C-U>call signature#mark#Goto("next", "spot", "alpha")<CR>
n  c           * <SNR>146_yank_with_key("c")
n  cop         * <Nop>
n  co            <SNR>100_legacy_option_map(nr2char(getchar()))
n  cc            gcl
   cd            :cd %:p:h<CR>
n  d           * <SNR>146_yank_with_key("d")
n  dm          * :<C-U>call signature#utils#Remove(v:count)<CR>
n  do          * :diffoff!<CR>
n  ee          * :w<CR>:e #<CR>
n  fu          * :syntax sync fromstart<CR>:redraw!<CR>
n  ff          * :NV <C-R><C-W><CR><Space>
n  gx            <Plug>NetrwBrowseX
n  gP          * :<C-U>call <SNR>146_paste_with_key("gP", "n", v:register, v:count1)<CR>
n  gp          * :<C-U>call <SNR>146_paste_with_key("gp", "n", v:register, v:count1)<CR>
n  gZzZz       * gs
n  gS            <Plug>(scratch-insert-clear)
n  gs            <Plug>(scratch-insert-reuse)
n  g<C-]>      * :Tjump <cword><CR>
n  g]          * :Tselect <cword><CR>
n  gcu           <Plug>Commentary<Plug>Commentary
n  gcc           <Plug>CommentaryLine
n  gc            <Plug>Commentary
n  g%          * :<C-U>call <SNR>87_Match_wrapper('',0,'n') <CR>
n  gag           <Plug>AgAction
n  g#            g#zz
n  g*            g*zz
n  gv          * `[v`]
   gk          * k
   gj          * j
n  hh          * <C-W>w
n  hu            <Plug>GitGutterUndoHunk
n  hs            <Plug>GitGutterStageHunk
n  hp            <Plug>GitGutterPreviewHunk
noxj           * gj
noxk           * gk
n  ll          * :execute "leftabove vsplit" bufname('#')<CR>
n  m?          * :<C-U>call signature#marker#List(v:count, 0)<CR>
n  m/          * :<C-U>call signature#mark#List(0, 0)<CR>
n  m<BS>       * :<C-U>call signature#marker#Purge()<CR>
n  m<Space>    * :<C-U>call signature#mark#Purge("all")<CR>
n  m-          * :<C-U>call signature#mark#Purge("line")<CR>
n  m.          * :<C-U>call signature#mark#ToggleAtLine()<CR>
n  m,          * :<C-U>call signature#mark#Toggle("next")<CR>
n  m           * :<C-U>call signature#utils#Input()<CR>
n  n           * n:call BlingHighight()<CR>
n  p           * :<C-U>call <SNR>146_paste_with_key("p", "n", v:register, v:count1)<CR>
n  qw          * <C-W>q<CR>
n  qs          * :wa<CR> :qa<CR>
n  qq          * :bd<CR>
n  qa          * :wa<CR> :bd<CR>
n  q           * <Nop>
n  srb           <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
n  sdb           <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
n  sr            <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
n  sd            <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
n  sa            <Plug>(operator-sandwich-add)
n  ss          * :wa<CR>
n  s           * <SNR>146_yank_with_key("s")
n  vv          * <C-W>v<C-W>l<CR><C-W>w<CR>
n  ww          * <C-W>o<CR>
n  wq          * <C-W>q<CR>
n  x           * <SNR>146_yank_with_key("x")
n  y           * <SNR>146_yank_with_key("y")
n  yop         & :call <SNR>100_setup_paste()<CR>0C
n  yo+         & :set <C-R>=<SNR>100_cursor_options()<CR><CR>
n  yox         & :set <C-R>=<SNR>100_cursor_options()<CR><CR>
n  yov         & :set <C-R>=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"<CR><CR>
n  yow         & :setlocal <C-R>=<SNR>100_toggle("wrap")<CR><CR>
n  yos         & :setlocal <C-R>=<SNR>100_toggle("spell")<CR><CR>
n  yor         & :setlocal <C-R>=<SNR>100_toggle("relativenumber")<CR><CR>
n  yon         & :setlocal <C-R>=<SNR>100_toggle("number")<CR><CR>
n  yol         & :setlocal <C-R>=<SNR>100_toggle("list")<CR><CR>
n  yoi         & :set <C-R>=<SNR>100_toggle("ignorecase")<CR><CR>
n  yoh         & :set <C-R>=<SNR>100_toggle("hlsearch")<CR><CR>
n  yod         & :<C-R>=&diff ? "diffoff" : "diffthis"<CR><CR>
n  yo|         & :setlocal <C-R>=<SNR>100_toggle("cursorcolumn")<CR><CR>
n  you         & :setlocal <C-R>=<SNR>100_toggle("cursorcolumn")<CR><CR>
n  yo_         & :setlocal <C-R>=<SNR>100_toggle("cursorline")<CR><CR>
n  yo-         & :setlocal <C-R>=<SNR>100_toggle("cursorline")<CR><CR>
n  yoc         & :setlocal <C-R>=<SNR>100_toggle("cursorline")<CR><CR>
n  yob         & :set background=<C-R>=&background == "dark" ? "light" : "dark"<CR><CR>
n  zn            <Plug>yankstack_substitute_newer_paste
n  zp            <Plug>yankstack_substitute_older_paste
n  z8          * :call <SNR>1_SynStack()<CR>
n  z0          * zczO<Space>
n  zu          * :<C-U>update<CR>
n  zh          * mzzt10<C-U>`z
n  zx          * mzzt35<C-U>`z
n  zs          * mzzt2<C-U>`z
   }           * }^
n  <Plug>(vital-coaster_buffer_region) * :<C-U>set operatorfunc=<SNR>285__buffer_region_operator<CR>g@
n  <SNR>278_:  * :<C-U><C-R>=v:count ? v:count : ''<CR>
   <Plug>AirlineSelectNextTab * :<C-U>call <SNR>239_jump_to_tab(v:count1)<CR>
   <Plug>AirlineSelectPrevTab * :<C-U>call <SNR>239_jump_to_tab(-v:count1)<CR>
   <Plug>AirlineSelectTab9 * :call <SNR>239_select_tab(8)<CR>
   <Plug>AirlineSelectTab8 * :call <SNR>239_select_tab(7)<CR>
   <Plug>AirlineSelectTab7 * :call <SNR>239_select_tab(6)<CR>
   <Plug>AirlineSelectTab6 * :call <SNR>239_select_tab(5)<CR>
   <Plug>AirlineSelectTab5 * :call <SNR>239_select_tab(4)<CR>
   <Plug>AirlineSelectTab4 * :call <SNR>239_select_tab(3)<CR>
   <Plug>AirlineSelectTab3 * :call <SNR>239_select_tab(2)<CR>
   <Plug>AirlineSelectTab2 * :call <SNR>239_select_tab(1)<CR>
   <Plug>AirlineSelectTab1 * :call <SNR>239_select_tab(0)<CR>
n  <Plug>NetrwBrowseX * :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<CR>
n  <Plug>(startify-open-buffers) * :<C-U>call startify#open_buffers()<CR>
n  <Plug>(table-mode-sort) * :call tablemode#spreadsheet#Sort('')<CR>
n  <Plug>(table-mode-echo-cell) * :call <SNR>187_TableEchoCell()<CR>
n  <Plug>(table-mode-eval-formula) * :call tablemode#spreadsheet#formula#EvaluateFormulaLine()<CR>
n  <Plug>(table-mode-add-formula) * :call tablemode#spreadsheet#formula#Add()<CR>
n  <Plug>(table-mode-delete-column) * :call tablemode#spreadsheet#DeleteColumn()<CR>
n  <Plug>(table-mode-delete-row) * :call tablemode#spreadsheet#DeleteRow()<CR>
n  <Plug>(table-mode-motion-right) * :<C-U>call tablemode#spreadsheet#cell#Motion('l')<CR>
n  <Plug>(table-mode-motion-left) * :<C-U>call tablemode#spreadsheet#cell#Motion('h')<CR>
n  <Plug>(table-mode-motion-down) * :<C-U>call tablemode#spreadsheet#cell#Motion('j')<CR>
n  <Plug>(table-mode-motion-up) * :<C-U>call tablemode#spreadsheet#cell#Motion('k')<CR>
n  <Plug>(table-mode-realign) * :call tablemode#table#Realign('.')<CR>
n  <Plug>(table-mode-tableize) * :Tableize<CR>
n  <Plug>(Visual-Split-SplitBelow) * :<C-U>set operatorfunc=<SNR>148_opgsb<CR>g@
n  <Plug>(Visual-Split-SplitAbove) * :<C-U>set operatorfunc=<SNR>148_opgsa<CR>g@
n  <Plug>(Visual-Split-Split) * :<C-U>set operatorfunc=<SNR>148_opgss<CR>g@
n  <Plug>(Visual-Split-Resize) * :<C-U>set operatorfunc=<SNR>148_opgr<CR>g@
nos<Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(0)<CR>
   <Plug>(easymotion-dotrepeat) * :<C-U>call EasyMotion#DotRepeat()<CR>
nos<Plug>(easymotion-repeat) * :<C-U>call EasyMotion#Repeat(0)<CR>
nos<Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(0,1)<CR>
nos<Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(0,0)<CR>
nos<Plug>(easymotion-wl) * :<C-U>call EasyMotion#WBL(0,0)<CR>
nos<Plug>(easymotion-lineforward) * :<C-U>call EasyMotion#LineAnywhere(0,0)<CR>
nos<Plug>(easymotion-lineanywhere) * :<C-U>call EasyMotion#LineAnywhere(0,2)<CR>
nos<Plug>(easymotion-bd-wl) * :<C-U>call EasyMotion#WBL(0,2)<CR>
nos<Plug>(easymotion-linebackward) * :<C-U>call EasyMotion#LineAnywhere(0,1)<CR>
nos<Plug>(easymotion-bl) * :<C-U>call EasyMotion#WBL(0,1)<CR>
nos<Plug>(easymotion-el) * :<C-U>call EasyMotion#EL(0,0)<CR>
nos<Plug>(easymotion-gel) * :<C-U>call EasyMotion#EL(0,1)<CR>
nos<Plug>(easymotion-bd-el) * :<C-U>call EasyMotion#EL(0,2)<CR>
nos<Plug>(easymotion-jumptoanywhere) * :<C-U>call EasyMotion#JumpToAnywhere(0,2)<CR>
nos<Plug>(easymotion-vim-n) * :<C-U>call EasyMotion#Search(0,0,1)<CR>
nos<Plug>(easymotion-n) * :<C-U>call EasyMotion#Search(0,0,0)<CR>
nos<Plug>(easymotion-bd-n) * :<C-U>call EasyMotion#Search(0,2,0)<CR>
nos<Plug>(easymotion-vim-N) * :<C-U>call EasyMotion#Search(0,1,1)<CR>
nos<Plug>(easymotion-N) * :<C-U>call EasyMotion#Search(0,1,0)<CR>
nos<Plug>(easymotion-eol-j) * :<C-U>call EasyMotion#Eol(0,0)<CR>
nos<Plug>(easymotion-sol-k) * :<C-U>call EasyMotion#Sol(0,1)<CR>
nos<Plug>(easymotion-sol-j) * :<C-U>call EasyMotion#Sol(0,0)<CR>
nos<Plug>(easymotion-k) * :<C-U>call EasyMotion#JK(0,1)<CR>
nos<Plug>(easymotion-j) * :<C-U>call EasyMotion#JK(0,0)<CR>
nos<Plug>(easymotion-bd-jk) * :<C-U>call EasyMotion#JK(0,2)<CR>
nos<Plug>(easymotion-eol-bd-jk) * :<C-U>call EasyMotion#Eol(0,2)<CR>
nos<Plug>(easymotion-sol-bd-jk) * :<C-U>call EasyMotion#Sol(0,2)<CR>
nos<Plug>(easymotion-eol-k) * :<C-U>call EasyMotion#Eol(0,1)<CR>
nos<Plug>(easymotion-iskeyword-ge) * :<C-U>call EasyMotion#EK(0,1)<CR>
nos<Plug>(easymotion-w) * :<C-U>call EasyMotion#WB(0,0)<CR>
nos<Plug>(easymotion-bd-W) * :<C-U>call EasyMotion#WBW(0,2)<CR>
nos<Plug>(easymotion-iskeyword-w) * :<C-U>call EasyMotion#WBK(0,0)<CR>
nos<Plug>(easymotion-gE) * :<C-U>call EasyMotion#EW(0,1)<CR>
nos<Plug>(easymotion-e) * :<C-U>call EasyMotion#E(0,0)<CR>
nos<Plug>(easymotion-bd-E) * :<C-U>call EasyMotion#EW(0,2)<CR>
nos<Plug>(easymotion-iskeyword-e) * :<C-U>call EasyMotion#EK(0,0)<CR>
nos<Plug>(easymotion-b) * :<C-U>call EasyMotion#WB(0,1)<CR>
nos<Plug>(easymotion-iskeyword-b) * :<C-U>call EasyMotion#WBK(0,1)<CR>
nos<Plug>(easymotion-iskeyword-bd-w) * :<C-U>call EasyMotion#WBK(0,2)<CR>
nos<Plug>(easymotion-W) * :<C-U>call EasyMotion#WBW(0,0)<CR>
nos<Plug>(easymotion-bd-w) * :<C-U>call EasyMotion#WB(0,2)<CR>
nos<Plug>(easymotion-iskeyword-bd-e) * :<C-U>call EasyMotion#EK(0,2)<CR>
nos<Plug>(easymotion-ge) * :<C-U>call EasyMotion#E(0,1)<CR>
nos<Plug>(easymotion-E) * :<C-U>call EasyMotion#EW(0,0)<CR>
nos<Plug>(easymotion-bd-e) * :<C-U>call EasyMotion#E(0,2)<CR>
nos<Plug>(easymotion-B) * :<C-U>call EasyMotion#WBW(0,1)<CR>
n  <Plug>(easymotion-overwin-w) * :<C-U>call EasyMotion#overwin#w()<CR>
n  <Plug>(easymotion-overwin-line) * :<C-U>call EasyMotion#overwin#line()<CR>
n  <Plug>(easymotion-overwin-f2) * :<C-U>call EasyMotion#OverwinF(2)<CR>
n  <Plug>(easymotion-overwin-f) * :<C-U>call EasyMotion#OverwinF(1)<CR>
nos<Plug>(easymotion-Tln) * :<C-U>call EasyMotion#TL(-1,0,1)<CR>
nos<Plug>(easymotion-t2) * :<C-U>call EasyMotion#T(2,0,0)<CR>
nos<Plug>(easymotion-t) * :<C-U>call EasyMotion#T(1,0,0)<CR>
nos<Plug>(easymotion-s) * :<C-U>call EasyMotion#S(1,0,2)<CR>
nos<Plug>(easymotion-tn) * :<C-U>call EasyMotion#T(-1,0,0)<CR>
nos<Plug>(easymotion-bd-t2) * :<C-U>call EasyMotion#T(2,0,2)<CR>
nos<Plug>(easymotion-tl) * :<C-U>call EasyMotion#TL(1,0,0)<CR>
nos<Plug>(easymotion-bd-tn) * :<C-U>call EasyMotion#T(-1,0,2)<CR>
nos<Plug>(easymotion-fn) * :<C-U>call EasyMotion#S(-1,0,0)<CR>
nos<Plug>(easymotion-bd-tl) * :<C-U>call EasyMotion#TL(1,0,2)<CR>
nos<Plug>(easymotion-fl) * :<C-U>call EasyMotion#SL(1,0,0)<CR>
nos<Plug>(easymotion-bd-tl2) * :<C-U>call EasyMotion#TL(2,0,2)<CR>
nos<Plug>(easymotion-bd-fn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
nos<Plug>(easymotion-f) * :<C-U>call EasyMotion#S(1,0,0)<CR>
nos<Plug>(easymotion-bd-fl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
nos<Plug>(easymotion-Fl2) * :<C-U>call EasyMotion#SL(2,0,1)<CR>
nos<Plug>(easymotion-tl2) * :<C-U>call EasyMotion#TL(2,0,0)<CR>
nos<Plug>(easymotion-f2) * :<C-U>call EasyMotion#S(2,0,0)<CR>
nos<Plug>(easymotion-Fln) * :<C-U>call EasyMotion#SL(-1,0,1)<CR>
nos<Plug>(easymotion-sln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
nos<Plug>(easymotion-tln) * :<C-U>call EasyMotion#TL(-1,0,0)<CR>
nos<Plug>(easymotion-fl2) * :<C-U>call EasyMotion#SL(2,0,0)<CR>
nos<Plug>(easymotion-bd-fl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
nos<Plug>(easymotion-T2) * :<C-U>call EasyMotion#T(2,0,1)<CR>
nos<Plug>(easymotion-bd-tln) * :<C-U>call EasyMotion#TL(-1,0,2)<CR>
nos<Plug>(easymotion-T) * :<C-U>call EasyMotion#T(1,0,1)<CR>
nos<Plug>(easymotion-bd-t) * :<C-U>call EasyMotion#T(1,0,2)<CR>
nos<Plug>(easymotion-Tn) * :<C-U>call EasyMotion#T(-1,0,1)<CR>
nos<Plug>(easymotion-s2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
nos<Plug>(easymotion-Tl) * :<C-U>call EasyMotion#TL(1,0,1)<CR>
nos<Plug>(easymotion-sn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
nos<Plug>(easymotion-Fn) * :<C-U>call EasyMotion#S(-1,0,1)<CR>
nos<Plug>(easymotion-sl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
nos<Plug>(easymotion-Fl) * :<C-U>call EasyMotion#SL(1,0,1)<CR>
nos<Plug>(easymotion-sl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
nos<Plug>(easymotion-bd-fln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
nos<Plug>(easymotion-F) * :<C-U>call EasyMotion#S(1,0,1)<CR>
nos<Plug>(easymotion-bd-f) * :<C-U>call EasyMotion#S(1,0,2)<CR>
nos<Plug>(easymotion-F2) * :<C-U>call EasyMotion#S(2,0,1)<CR>
nos<Plug>(easymotion-bd-f2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
nos<Plug>(easymotion-Tl2) * :<C-U>call EasyMotion#TL(2,0,1)<CR>
nos<Plug>(easymotion-fln) * :<C-U>call EasyMotion#SL(-1,0,0)<CR>
n  <M-P>         <Plug>yankstack_substitute_newer_paste
n  <M-p>         <Plug>yankstack_substitute_older_paste
n  <Plug>yankstack_after_paste * :call <SNR>146_after_paste()<CR>
n  <Plug>yankstack_substitute_newer_paste * :<C-U>call <SNR>146_substitute_paste(-v:count1, 'n')<CR>
n  <Plug>yankstack_substitute_older_paste * :<C-U>call <SNR>146_substitute_paste(v:count1, 'n')<CR>
n  <Plug>(scratch-insert-clear) * :call scratch#insert(1)<CR>
n  <Plug>(scratch-insert-reuse) * :call scratch#insert(0)<CR>
   <Plug>(_incsearch-g#) * g#
   <Plug>(_incsearch-g*) * g*
   <Plug>(_incsearch-#) * #
   <Plug>(_incsearch-*) * *
   <Plug>(_incsearch-N) * g:incsearch#consistent_n_direction && !v:searchforward ? 'n' : 'N'
   <Plug>(_incsearch-n) * g:incsearch#consistent_n_direction && !v:searchforward ? 'N' : 'n'
   <Plug>(incsearch-nohl-g#)   <Plug>(incsearch-nohl)<Plug>(_incsearch-g#)
   <Plug>(incsearch-nohl-g*)   <Plug>(incsearch-nohl)<Plug>(_incsearch-g*)
   <Plug>(incsearch-nohl-#)   <Plug>(incsearch-nohl)<Plug>(_incsearch-#)
   <Plug>(incsearch-nohl-*)   <Plug>(incsearch-nohl)<Plug>(_incsearch-*)
   <Plug>(incsearch-nohl-N)   <Plug>(incsearch-nohl)<Plug>(_incsearch-N)
   <Plug>(incsearch-nohl-n)   <Plug>(incsearch-nohl)<Plug>(_incsearch-n)
   <Plug>(incsearch-nohl2) * incsearch#autocmd#auto_nohlsearch(2)
   <Plug>(incsearch-nohl0) * incsearch#autocmd#auto_nohlsearch(0)
   <Plug>(incsearch-nohl) * incsearch#autocmd#auto_nohlsearch(1)
   <Plug>(incsearch-stay) * incsearch#go({'command': '/', 'is_stay': 1})
   <Plug>(incsearch-backward) * incsearch#go({'command': '?'})
   <Plug>(incsearch-forward) * incsearch#go({'command': '/'})
n  <Plug>(ale_documentation) * :ALEDocumentation<CR>
n  <Plug>(ale_hover) * :ALEHover<CR>
n  <Plug>(ale_find_references) * :ALEFindReferences<CR>
n  <Plug>(ale_go_to_type_definition_in_vsplit) * :ALEGoToTypeDefinitionInVSplit<CR>
n  <Plug>(ale_go_to_type_definition_in_split) * :ALEGoToTypeDefinitionInSplit<CR>
n  <Plug>(ale_go_to_type_definition_in_tab) * :ALEGoToTypeDefinitionInTab<CR>
n  <Plug>(ale_go_to_type_definition) * :ALEGoToTypeDefinition<CR>
n  <Plug>(ale_go_to_definition_in_vsplit) * :ALEGoToDefinitionInVSplit<CR>
n  <Plug>(ale_go_to_definition_in_split) * :ALEGoToDefinitionInSplit<CR>
n  <Plug>(ale_go_to_definition_in_tab) * :ALEGoToDefinitionInTab<CR>
n  <Plug>(ale_go_to_definition) * :ALEGoToDefinition<CR>
n  <Plug>(ale_fix) * :ALEFix<CR>
n  <Plug>(ale_detail) * :ALEDetail<CR>
n  <Plug>(ale_lint) * :ALELint<CR>
n  <Plug>(ale_reset_buffer) * :ALEResetBuffer<CR>
n  <Plug>(ale_disable_buffer) * :ALEDisableBuffer<CR>
n  <Plug>(ale_enable_buffer) * :ALEEnableBuffer<CR>
n  <Plug>(ale_toggle_buffer) * :ALEToggleBuffer<CR>
n  <Plug>(ale_reset) * :ALEReset<CR>
n  <Plug>(ale_disable) * :ALEDisable<CR>
n  <Plug>(ale_enable) * :ALEEnable<CR>
n  <Plug>(ale_toggle) * :ALEToggle<CR>
n  <Plug>(ale_last) * :ALELast<CR>
n  <Plug>(ale_first) * :ALEFirst<CR>
n  <Plug>(ale_next_wrap_warning) * :ALENext -wrap -warning<CR>
n  <Plug>(ale_next_warning) * :ALENext -warning<CR>
n  <Plug>(ale_next_wrap_error) * :ALENext -wrap -error<CR>
n  <Plug>(ale_next_error) * :ALENext -error<CR>
n  <Plug>(ale_next_wrap) * :ALENextWrap<CR>
n  <Plug>(ale_next) * :ALENext<CR>
n  <Plug>(ale_previous_wrap_warning) * :ALEPrevious -wrap -warning<CR>
n  <Plug>(ale_previous_warning) * :ALEPrevious -warning<CR>
n  <Plug>(ale_previous_wrap_error) * :ALEPrevious -wrap -error<CR>
n  <Plug>(ale_previous_error) * :ALEPrevious -error<CR>
n  <Plug>(ale_previous_wrap) * :ALEPreviousWrap<CR>
n  <Plug>(ale_previous) * :ALEPrevious<CR>
   <Plug>(sandwich-nop) * <Nop>
n  <Plug>(textobj-sandwich-literal-query-a) * textobj#sandwich#query('n', 'a', {}, [])
n  <Plug>(textobj-sandwich-literal-query-i) * textobj#sandwich#query('n', 'i', {}, [])
n  <Plug>(textobj-sandwich-query-a) * textobj#sandwich#query('n', 'a')
n  <Plug>(textobj-sandwich-query-i) * textobj#sandwich#query('n', 'i')
n  <Plug>(textobj-sandwich-auto-a) * textobj#sandwich#auto('n', 'a')
n  <Plug>(textobj-sandwich-auto-i) * textobj#sandwich#auto('n', 'i')
n  <Plug>(sandwich-CTRL-v) * <C-V>
n  <Plug>(sandwich-V) * V
n  <Plug>(sandwich-v) * v
n  <Plug>(sandwich-O) * O
n  <Plug>(sandwich-o) * o
n  <Plug>(sandwich-i) * i
n  <Plug>(operator-sandwich-gv) * gv
   <Plug>(operator-sandwich-g@) * g@
   <Plug>(operator-sandwich-replace-visualrepeat) * :<C-U>call operator#sandwich#visualrepeat('replace')<CR>
   <Plug>(operator-sandwich-delete-visualrepeat) * :<C-U>call operator#sandwich#visualrepeat('delete')<CR>
   <Plug>(operator-sandwich-add-visualrepeat) * :<C-U>call operator#sandwich#visualrepeat('add')<CR>
n  <Plug>(operator-sandwich-dot) * operator#sandwich#dot()
n  <Plug>(operator-sandwich-predot) * operator#sandwich#predot()
n  <Plug>(operator-sandwich-replace-query1st) * :<C-U>call operator#sandwich#query1st('replace', 'n')<CR>
n  <Plug>(operator-sandwich-add-query1st) * :<C-U>call operator#sandwich#query1st('add', 'n')<CR>
n  <Plug>(operator-sandwich-replace-pre) * :<C-U>call operator#sandwich#prerequisite('replace', 'n')<CR>
n  <Plug>(operator-sandwich-delete-pre) * :<C-U>call operator#sandwich#prerequisite('delete', 'n')<CR>
n  <Plug>(operator-sandwich-add-pre) * :<C-U>call operator#sandwich#prerequisite('add', 'n')<CR>
n  <Plug>(operator-sandwich-replace)   <Plug>(operator-sandwich-replace-pre)<Plug>(operator-sandwich-g@)
n  <Plug>(operator-sandwich-delete)   <Plug>(operator-sandwich-delete-pre)<Plug>(operator-sandwich-g@)
n  <Plug>(operator-sandwich-add)   <Plug>(operator-sandwich-add-pre)<Plug>(operator-sandwich-g@)
n  <Plug>(expand_region_expand) * :<C-U>call expand_region#next('n', '+')<CR>
n  <Plug>unimpaired_line_xml_decode * <SNR>100_TransformSetup("xml_decode")."_"
n  <Plug>unimpaired_xml_decode * <SNR>100_TransformSetup("xml_decode")
n  <Plug>unimpaired_line_xml_encode * <SNR>100_TransformSetup("xml_encode")."_"
n  <Plug>unimpaired_xml_encode * <SNR>100_TransformSetup("xml_encode")
n  <Plug>unimpaired_line_url_decode * <SNR>100_TransformSetup("url_decode")."_"
n  <Plug>unimpaired_url_decode * <SNR>100_TransformSetup("url_decode")
n  <Plug>unimpaired_line_url_encode * <SNR>100_TransformSetup("url_encode")."_"
n  <Plug>unimpaired_url_encode * <SNR>100_TransformSetup("url_encode")
n  <Plug>unimpaired_line_string_decode * <SNR>100_TransformSetup("string_decode")."_"
n  <Plug>unimpaired_string_decode * <SNR>100_TransformSetup("string_decode")
n  <Plug>unimpaired_line_string_encode * <SNR>100_TransformSetup("string_encode")."_"
n  <Plug>unimpaired_string_encode * <SNR>100_TransformSetup("string_encode")
n  <Plug>unimpairedPutBelow * :call <SNR>100_putline(']p', 'Below')<CR>
n  <Plug>unimpairedPutAbove * :call <SNR>100_putline('[p', 'Above')<CR>
n  <Plug>unimpairedPaste * :call <SNR>100_setup_paste()<CR>
   <Plug>unimpairedMoveSelectionDown * :<C-U>call <SNR>100_MoveSelectionDown(v:count1)<CR>
   <Plug>unimpairedMoveSelectionUp * :<C-U>call <SNR>100_MoveSelectionUp(v:count1)<CR>
n  <Plug>unimpairedMoveDown * :<C-U>call <SNR>100_Move('+',v:count1,'Down')<CR>
n  <Plug>unimpairedMoveUp * :<C-U>call <SNR>100_Move('--',v:count1,'Up')<CR>
n  <Plug>unimpairedBlankDown * :<C-U>call <SNR>100_BlankDown(v:count1)<CR>
n  <Plug>unimpairedBlankUp * :<C-U>call <SNR>100_BlankUp(v:count1)<CR>
n  <Plug>unimpairedContextNext * :call <SNR>100_Context(0)<CR>
n  <Plug>unimpairedContextPrevious * :call <SNR>100_Context(1)<CR>
n  <Plug>unimpairedDirectoryPrevious * :<C-U>edit <C-R>=<SNR>100_fnameescape(fnamemodify(<SNR>100_FileByOffset(-v:count1), ':.'))<CR><CR>
n  <Plug>unimpairedDirectoryNext * :<C-U>edit <C-R>=<SNR>100_fnameescape(fnamemodify(<SNR>100_FileByOffset(v:count1), ':.'))<CR><CR>
n  <Plug>unimpairedTPNext * :<C-U>exe "p".(v:count ? v:count : "")."tnext"<CR>
n  <Plug>unimpairedTPPrevious * :<C-U>exe "p".(v:count ? v:count : "")."tprevious"<CR>
n  <Plug>unimpairedTLast * :<C-U>exe "".(v:count ? v:count : "")."tlast"<CR>
n  <Plug>unimpairedTFirst * :<C-U>exe "".(v:count ? v:count : "")."tfirst"<CR>
n  <Plug>unimpairedTNext * :<C-U>exe "".(v:count ? v:count : "")."tnext"<CR>
n  <Plug>unimpairedTPrevious * :<C-U>exe "".(v:count ? v:count : "")."tprevious"<CR>
n  <Plug>unimpairedQNFile * :<C-U>exe "".(v:count ? v:count : "")."cnfile"<CR>zv
n  <Plug>unimpairedQPFile * :<C-U>exe "".(v:count ? v:count : "")."cpfile"<CR>zv
n  <Plug>unimpairedQLast * :<C-U>exe "".(v:count ? v:count : "")."clast"<CR>zv
n  <Plug>unimpairedQFirst * :<C-U>exe "".(v:count ? v:count : "")."cfirst"<CR>zv
n  <Plug>unimpairedQNext * :<C-U>exe "".(v:count ? v:count : "")."cnext"<CR>zv
n  <Plug>unimpairedQPrevious * :<C-U>exe "".(v:count ? v:count : "")."cprevious"<CR>zv
n  <Plug>unimpairedLNFile * :<C-U>exe "".(v:count ? v:count : "")."lnfile"<CR>zv
n  <Plug>unimpairedLPFile * :<C-U>exe "".(v:count ? v:count : "")."lpfile"<CR>zv
n  <Plug>unimpairedLLast * :<C-U>exe "".(v:count ? v:count : "")."llast"<CR>zv
n  <Plug>unimpairedLFirst * :<C-U>exe "".(v:count ? v:count : "")."lfirst"<CR>zv
n  <Plug>unimpairedLNext * :<C-U>exe "".(v:count ? v:count : "")."lnext"<CR>zv
n  <Plug>unimpairedLPrevious * :<C-U>exe "".(v:count ? v:count : "")."lprevious"<CR>zv
n  <Plug>unimpairedBLast * :<C-U>exe "".(v:count ? v:count : "")."blast"<CR>
n  <Plug>unimpairedBFirst * :<C-U>exe "".(v:count ? v:count : "")."bfirst"<CR>
n  <Plug>unimpairedBNext * :<C-U>exe "".(v:count ? v:count : "")."bnext"<CR>
n  <Plug>unimpairedBPrevious * :<C-U>exe "".(v:count ? v:count : "")."bprevious"<CR>
n  <Plug>unimpairedALast * :<C-U>exe "".(v:count ? v:count : "")."last"<CR>
n  <Plug>unimpairedAFirst * :<C-U>exe "".(v:count ? v:count : "")."first"<CR>
n  <Plug>unimpairedANext * :<C-U>exe "".(v:count ? v:count : "")."next"<CR>
n  <Plug>unimpairedAPrevious * :<C-U>exe "".(v:count ? v:count : "")."previous"<CR>
n  <Plug>CommentaryUndo   :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"<CR>
n  <Plug>ChangeCommentary * c:<C-U>call <SNR>99_textobject(1)<CR>
n  <Plug>CommentaryLine * <SNR>99_go() . '_'
n  <Plug>Commentary * <SNR>99_go()
n  <Plug>(CommandTTag) * :CommandTTag<CR>
n  <Plug>(CommandTSearch) * :CommandTSearch<CR>
n  <Plug>(CommandTMRU) * :CommandTMRU<CR>
n  <Plug>(CommandTLine) * :CommandTLine<CR>
n  <Plug>(CommandTCommand) * :CommandTCommand<CR>
n  <Plug>(CommandTJump) * :CommandTJump<CR>
n  <Plug>(CommandTHistory) * :CommandTHistory<CR>
n  <Plug>(CommandTHelp) * :CommandTHelp<CR>
n  <Plug>(CommandTBuffer) * :CommandTBuffer<CR>
n  <Plug>(CommandT) * :CommandT<CR>
n  <Plug>(fzf-maps-n) * :<C-U>call fzf#vim#maps('n', 0)<CR>
n  <Plug>AgActionWord * :set hlsearch<CR>:<C-U>set opfunc=<SNR>66_Ag<CR>g@iw
n  <Plug>AgAction * :set hlsearch<CR>:<C-U>set opfunc=<SNR>66_Ag<CR>g@
n  <Plug>RgRawWordUnderCursor * "ayiw:call agriculture#trim_and_escape_register_a()<CR>:RgRaw -F -- $'<C-R>a'
n  <Plug>AgRawWordUnderCursor * "ayiw:call agriculture#trim_and_escape_register_a()<CR>:AgRaw -Q -- $'<C-R>a'
n  <Plug>RgRawSearch * :RgRaw<Space>
n  <Plug>AgRawSearch * :AgRaw<Space>
n  <Plug>(quickrun) * :<C-U>QuickRun -mode n<CR>
n  <Plug>(quickrun-op) * :<C-U>set operatorfunc=quickrun#operator<CR>g@
n  <Plug>ExtraditeClose * :<C-U>call <SNR>37_ExtraditeClose()<CR>
n  <Plug>(qf_newer) * :<C-U> call qf#history#Newer()<CR>
n  <Plug>(qf_older) * :<C-U> call qf#history#Older()<CR>
n  <Plug>(qf_qf_switch) * &filetype ==# 'qf' ? '<C-W>p' : '<C-W>b'
n  <Plug>(qf_loc_toggle_stay) * :<C-U> call qf#toggle#ToggleLocWindow(1)<CR>
n  <Plug>(qf_loc_toggle) * :<C-U> call qf#toggle#ToggleLocWindow(0)<CR>
n  <Plug>(qf_qf_toggle_stay) * :<C-U> call qf#toggle#ToggleQfWindow(1)<CR>
n  <Plug>(qf_qf_toggle) * :<C-U> call qf#toggle#ToggleQfWindow(0)<CR>
n  <Plug>(qf_loc_next) * :<C-U> call qf#wrap#WrapCommand('down', 'l')<CR>
n  <Plug>(qf_loc_previous) * :<C-U> call qf#wrap#WrapCommand('up', 'l')<CR>
n  <Plug>(qf_qf_next) * :<C-U> call qf#wrap#WrapCommand('down', 'c')<CR>
n  <Plug>(qf_qf_previous) * :<C-U> call qf#wrap#WrapCommand('up', 'c')<CR>
n  <Plug>QfSwitch   &filetype ==# 'qf' ? '<C-W>p' : '<C-W>b'
n  <Plug>QfLtoggle   <Plug>(qf_loc_toggle)
n  <Plug>QfCtoggle   <Plug>(qf_qf_toggle)
n  <Plug>QfLnext   <Plug>(qf_loc_next)
n  <Plug>QfLprevious   <Plug>(qf_loc_previous)
n  <Plug>QfCnext   <Plug>(qf_qf_next)
n  <Plug>QfCprevious   <Plug>(qf_qf_previous)
n  <Plug>GitGutterPreviewHunk * :GitGutterPreviewHunk<CR>
n  <Plug>GitGutterUndoHunk * :GitGutterUndoHunk<CR>
n  <Plug>GitGutterStageHunk * :GitGutterStageHunk<CR>
n  <Plug>GitGutterPrevHunk * &diff ? '[c' : ":\<C-U>execute v:count1 . 'GitGutterPrevHunk'\<CR>"
n  <Plug>GitGutterNextHunk * &diff ? ']c' : ":\<C-U>execute v:count1 . 'GitGutterNextHunk'\<CR>"
n  <F12>       * :TagbarToggle<CR>
n  <F10>         <C-W>w
n  <F9>        * :call ToggleQuickFix()<CR>
n  <F8>        * :LocationToggle<CR>
n  <F7>          gcl
n  <F6>          cc
n  <F5>        * :call <SNR>1_compile_and_run()<CR>
n  <F4>        * <Esc>:Startify<CR>
n  <F3>        * :call NERDTreeToggleInCurDir()<CR>
n  <F2>          <Esc>:help <C-R><C-W><CR>
n  <F1>        * <Esc>
n  <M-]>       * <Esc>:exe "ptjump " . expand("<cword>")<Esc>
n  <M-C-Up>      :call ScrollOtherWindow("up")<CR>
n  <M-C-Down>    :call ScrollOtherWindow("down")<CR>
n  <S-Down>    * :resize -3<CR>
n  <S-Up>      * :resize +3<CR>
n  <S-Left>    * :vertical resize -3<CR>
n  <S-Right>   * :vertical resize +3<CR>
   <C-=>         <C-W>=
n  <S-Tab>       :bp<CR>
n  <BS>        * X
