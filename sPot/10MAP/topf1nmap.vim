n  K           *@:execute ":help " . expand("<cword>")<CR>
n  ["          *@:call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<CR>
n  []          *@m':call search('^\s*endf\%[unction]\>', "bW")<CR>
n  [[          *@m':call search('^\s*fu\%[nction]\>', "bW")<CR>
n  ]"          *@:call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<CR>
n  ][          *@m':call search('^\s*endf\%[unction]\>', "W")<CR>
n  ]]          *@m':call search('^\s*fu\%[nction]\>', "W")<CR>
   <M-n>       *@:call AutoPairsJump()<CR>
   <M-p>       *@:call AutoPairsToggle()<CR>
n  <Plug>ScripteaseHelp *@:<C-U>exe 'help '.scriptease#helptopic()<CR>
nx <C-E>       & <SNR>284_repmo('<C-E>','<C-Y>')<CR>
n  <C-H>         <Plug>MoveCharLeft
n  <Tab>         :bn<CR>
n  <NL>          <Plug>MoveLineDown
n  <C-K>         <Plug>MoveLineUp
n  <C-L>         <Plug>MoveCharRight
n  <CR>        * o<Esc>
n  <C-O>       * <C-O>zz
n  <C-P>       * :<C-U>CtrlPMRU<CR>
n  <C-T>       * :CommandTHelp<CR>
n  <C-W>gsb      <Plug>(Visual-Split-SplitBelow)
n  <C-W>gsa      <Plug>(Visual-Split-SplitAbove)
n  <C-W>gss      <Plug>(Visual-Split-Split)
n  <C-W>gr       <Plug>(Visual-Split-Resize)
nx <C-Y>       & <SNR>284_repmo('<C-Y>','<C-E>')<CR>
n  <C-Y>A        <Plug>(emmet-anchorize-summary)
n  <C-Y>a        <Plug>(emmet-anchorize-url)
n  <C-Y>k        <Plug>(emmet-remove-tag)
n  <C-Y>j        <Plug>(emmet-split-join-tag)
n  <C-Y>/        <Plug>(emmet-toggle-comment)
n  <C-Y>i        <Plug>(emmet-image-size)
n  <C-Y>N        <Plug>(emmet-move-prev)
n  <C-Y>n        <Plug>(emmet-move-next)
n  <C-Y>D        <Plug>(emmet-balance-tag-outword)
n  <C-Y>d        <Plug>(emmet-balance-tag-inward)
n  <C-Y>u        <Plug>(emmet-update-tag)
n  <C-Y>;        <Plug>(emmet-expand-word)
n  <Esc><Esc>  * :<C-U>set nopaste<CR>:nohlsearch<CR>
n  <C-\>         <Plug>(emmet-expand-abbr)
n  <Space>tc     <Plug>Colorizer
n  <Space>cs   * :ThesaurusQueryReplaceCurrentWord<CR>
n  <Space><Space>r   <Plug>DictRSearch
n  <Space>r      <Plug>TranslateR
n  <Space>w      <Plug>DictWSearch
n  <Space>tt     <Plug>(table-mode-tableize)
n  <Space>tm   * :<C-U>call tablemode#Toggle()<CR>
n  <Space>M    * :call magit#show_magit('v')<CR>
n  <Space>j      <Plug>(CommandTJump)
n  <Space>ig     <Plug>IndentGuidesToggle
n  <Space>gw   * :GitGrepWord<CR>
n  <Space>dj     <Plug>(textobj-diff-hunk-n)
n  <Space>dK     <Plug>(textobj-diff-hunk-P)
n  <Space>dJ     <Plug>(textobj-diff-hunk-N)
n  <Space>dk     <Plug>(textobj-diff-hunk-p)
n  <Space>dfj    <Plug>(textobj-diff-file-n)
n  <Space>dfK    <Plug>(textobj-diff-file-P)
n  <Space>dfJ    <Plug>(textobj-diff-file-N)
n  <Space>dfk    <Plug>(textobj-diff-file-p)
n  <Space>pw   * :call WindowSwap#DeprecatedDo()<CR>
n  <Space>yw   * :call WindowSwap#DeprecatedMark()<CR>
n  <Space>ww   * :call WindowSwap#EasyWindowSwap()<CR>
n  <Space>     * :<C-U>LeaderGuide ' '<CR>
n  <Space>fw     :w<CR>
n  <Space>ol     :lopen<CR>
n  <Space>oo     :copen<CR>
n  <Space>fs     :so %<CR>
n  <Space>fd     :e $MYVIMRC<CR>
n  <Space><Tab>   <Plug>(fzf-maps-n)
n  <Space>a    * :Ack <C-R><C-W><CR><Space>
n  <Space>2    * :Pydoc <cword> .<CR>
n  <Space>1    * :PymodeDoc <cword> .<CR>
n  <Space>0    * :set number!<CR>
n  <Space>n    * :cnext<CR>zvzz
n  <Space>b    * :cprev<CR>zvzz
n  <Space>x    * :ThesaurusQueryReplaceCurrentWord<CR>
n  <Space>s    * <Plug>(textobj-diff-hunk-n)
n  <Space>t      <Plug>Translate
n  <Space>d    * <Plug>DictSearch
n  <Space>q    * :Bdelete<CR>
n  <Space>p    * "pp
n  #           * #:call BlingHighight()<CR>
n  %           * :<C-U>call <SNR>123_Match_wrapper('',1,'n') <CR>
n  '?          & :<C-U>echo ":Start" dispatch#start_focus(v:count > 1 ? 0 : v:count ? line(".") : -1)<CR>
n  '!          & <SNR>283_:.Start!
n  '<Space>    & <SNR>283_:.Start<Space>
n  '<CR>       & <SNR>283_:.Start<CR>
n  '[          * :<C-U>call signature#mark#Goto("prev", "line", "alpha")<CR>
n  ']          * :<C-U>call signature#mark#Goto("next", "line", "alpha")<CR>
n  (           * <C-X>:y x|@x<CR>
n  )           * <C-A>:y x|@x<CR>
n  *           * *:call BlingHighight()<CR>
n  ,cs         * :ThesaurusQueryReplaceCurrentWord<CR>
n  ,           * :<C-U>LeaderGuide  ','<CR>
n  ,z            <Plug>ZVKeyDocset
n  ,b          * :lprev<CR>zvzz
n  ,n          * :lnext<CR>zvzz
n  ,d          * mayiw`a:exe ":Capture !dict -d fd-eng-deu - $(echo " . @" . "| recode latin1..utf-8)"<CR>
n  ,w          * :<C-R>=expand("<cword>")<CR>
n  ,,            <Plug>(easymotion-overwin-w)
   /           * :call SearchCompleteStart()<CR>/
n  ;q          * :call undoquit#UndoQuitWindow()<CR>
n  ;           * :<C-U>LeaderGuide  ';'<CR>
n  ;z            <Plug>Zeavim
n  ;;            <Plug>(easymotion-overwin-w)
n  ;d          * mayiw`a:exe ":Capture !dict -P - $(echo " . @" . "| recode latin1..utf-8)"<CR>
n  ;f          * ?^func\|^[a-zA-Z].*func<CR>,/
n  ;p          * :'.t.<CR>
   ;a          * =ip
n  ;t          * :set tw=70<CR>v<S-}>gq<End>
n  ;v          * <C-W>v<C-W>l
n  ;s          * :ls<CR>:b<Space>
n  ;w          * :<C-R>=getline(".")<CR>
n  <           * v<
n  ==            :call FzfSpell()<CR>
n  >           * v>
n  AA          * :ZAg <C-R><C-W><CR><Space>
n  BB          * ggVG
n  C           * <SNR>173_yank_with_key("C")
n  D           * <SNR>173_yank_with_key("D")
n  EE          * :source $MYVIMRC<CR>
n  FF          * :FFRg <C-R><C-W><CR><Space>
n  GG          * :ZGit <C-R><C-W><CR><Space>
n  H           * mzJ`z
n  K           * :call <SNR>87_dict(0)<CR>
n  N           * N:call BlingHighight()<CR>
n  OO          * :call CscopeFindInteractive(expand('<cword>'))<CR>
n  P           * :<C-U>call <SNR>173_paste_with_key("P", "n", v:register, v:count1)<CR>
n  PP          * :Pydoc <C-R><C-W><CR><Space>
n  Q           * @q
n  S           * <SNR>173_yank_with_key("S")
n  SS          * :SideSearch <C-R><C-W><CR><Space>
n  TT          * :TagbarToggle<CR>
n  VV          * :execute "vsplit" bufname('#')<CR>
n  W           * gwip
n  X           * <SNR>173_yank_with_key("X")
n  Y           * <SNR>173_yank_with_key("Y")
n  ZZ          * mzzt1<C-U>`z
n  [%          * :<C-U>call <SNR>123_MultiMatch("bW", "n") <CR>
n  [=          * :<C-U>call signature#marker#Goto("prev", "any",  v:count)<CR>
n  [-          * :<C-U>call signature#marker#Goto("prev", "same", v:count)<CR>
n  [`          * :<C-U>call signature#mark#Goto("prev", "spot", "pos")<CR>
n  ['          * :<C-U>call signature#mark#Goto("prev", "line", "pos")<CR>
n  [c            <Plug>(GitGutterPrevHunk)
n  ]%          * :<C-U>call <SNR>123_MultiMatch("W",  "n") <CR>
n  ]=          * :<C-U>call signature#marker#Goto("next", "any",  v:count)<CR>
n  ]-          * :<C-U>call signature#marker#Goto("next", "same", v:count)<CR>
n  ]`          * :<C-U>call signature#mark#Goto("next", "spot", "pos")<CR>
n  ]'          * :<C-U>call signature#mark#Goto("next", "line", "pos")<CR>
n  ]s            <Plug>(GitGutterStageHunk)
n  ]u            <Plug>(GitGutterUndoHunk)
n  ]h            <Plug>(GitGutterPreviewHunk)
n  ]c            <Plug>(GitGutterNextHunk)
n  `?          & <SNR>283_:.FocusDispatch<CR>
n  `!          & <SNR>283_:.Dispatch!
n  `<Space>    & <SNR>283_:.Dispatch<Space>
n  `<CR>       & <SNR>283_:.Dispatch<CR>
n  `[          * :<C-U>call signature#mark#Goto("prev", "spot", "alpha")<CR>
n  `]          * :<C-U>call signature#mark#Goto("next", "spot", "alpha")<CR>
n  cr            <Plug>(abolish-coerce-word)
n  csnf          <Plug>DsfNextChange
n  csf           <Plug>DsfChange
n  c           * <SNR>173_yank_with_key("c")
n  cc            gcl
n  dsnf          <Plug>DsfNextDelete
n  dsf           <Plug>DsfDelete
n  d           * <SNR>173_yank_with_key("d")
n  dm          * :<C-U>call signature#utils#Remove(v:count)<CR>
n  do          * :diffoff!<CR>
n  ee          * :w<CR>:e #<CR>
n  fu          * :syntax sync fromstart<CR>:redraw!<CR>
n  ff          * :NV <C-R><C-W><CR><Space>
n  g`?         & :<C-U>echo ":Spawn" dispatch#spawn_focus(v:count > 1 ? 0 : v:count ? line(".") : -1)<CR>
n  g`!         & <SNR>283_:.Spawn!
n  g`<Space>   & <SNR>283_:.Spawn<Space>
n  g`<CR>      & <SNR>283_:.Spawn<CR>
n  g'?         & :<C-U>echo ":Spawn" dispatch#spawn_focus(v:count > 1 ? 0 : v:count ? line(".") : -1)<CR>
n  g'!         & <SNR>283_:.Spawn!
n  g'<Space>   & <SNR>283_:.Spawn<Space>
n  g'<CR>      & <SNR>283_:.Spawn<CR>
n  g!!           <Plug>ScripteaseFilter<SNR>281__
n  g!            <Plug>ScripteaseFilter
n  g==           <Plug>ScripteaseFilter<SNR>281__
n  g=            <Plug>ScripteaseFilter
n  gcu           <Plug>Commentary<Plug>Commentary
n  gcc           <Plug>CommentaryLine
n  gc            <Plug>Commentary
n  gP          * :<C-U>call <SNR>173_paste_with_key("gP", "n", v:register, v:count1)<CR>
n  gp          * :<C-U>call <SNR>173_paste_with_key("gp", "n", v:register, v:count1)<CR>
n  gZzZz       * gs
n  gS            <Plug>(scratch-insert-clear)
n  gs            <Plug>(scratch-insert-reuse)
n  g%          * :<C-U>call <SNR>123_Match_wrapper('',0,'n') <CR>
n  gag           <Plug>AgAction
n  g#            g#zz
n  g*            g*zz
n  gv          * `[v`]
   gk          * k
   gj          * j
n  ga            <Plug>(EasyAlign)
nx h           & <SNR>284_repmo('h','l')<CR>
n  hh          * <C-W>w
n  j           & <SNR>284_repmo('j','k')<CR>
n  k           & <SNR>284_repmo('k','j')<CR>
nx l           & <SNR>284_repmo('l','h')<CR>
n  ll          * :execute "leftabove vsplit" bufname('#')<CR>
n  mjj           :BookmarkMoveDown
n  mkk           :BookmarkMoveUp
n  mx            :BookmarkClearAll<CR>
n  mc            :BookmarkClear<CR>
n  mp            :BookmarkPrev<CR>
n  mn            :BookmarkNext<CR>
n  mi            :BookmarkAnnotate<CR>
n  ma            :BookmarkShowAll<CR>
n  mm            :BookmarkToggle<CR>
n  m!          & <SNR>283_:.Make!
n  m<CR>       & <SNR>283_:.Make<CR>
n  m?          & :<C-U>echo ":Dispatch" dispatch#make_focus(v:count > 1 ? 0 : v:count ? line(".") : -1)<CR>
n  m/          * :<C-U>call signature#mark#List(0, 0)<CR>
n  m<BS>       * :<C-U>call signature#marker#Purge()<CR>
n  m<Space>    & <SNR>283_:.Make<Space>
n  m-          * :<C-U>call signature#mark#Purge("line")<CR>
n  m.          * :<C-U>call signature#mark#ToggleAtLine()<CR>
n  m,          * :<C-U>call signature#mark#Toggle("next")<CR>
n  m           * :<C-U>call signature#utils#Input()<CR>
n  n           * n:call BlingHighight()<CR>
n  p           * :<C-U>call <SNR>173_paste_with_key("p", "n", v:register, v:count1)<CR>
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
n  sx          * :xa<CR>
n  ss          * :wa<CR>
n  s           * <SNR>173_yank_with_key("s")
n  vv          * <C-W>v<C-W>l<CR><C-W>w<CR>
n  ww          * <C-W>o<CR>
n  wq          * <C-W>q<CR>
n  x           * <SNR>173_yank_with_key("x")
n  y<C-G>      & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
n  y           * <SNR>173_yank_with_key("y")
nx zl          & <SNR>284_repmo('zl','zh')<CR>
nx zh          & <SNR>284_repmo('zh','zl')<CR>
n  zS            <Plug>ScripteaseSynnames
n  zn            <Plug>yankstack_substitute_newer_paste
n  zp            <Plug>yankstack_substitute_older_paste
n  zf          * :call FocusLine()<CR>
n  zu          * :<C-U>update<CR>
n  z8          * :call <SNR>1_SynStack()<CR>
n  zx          * mzzt35<C-U>`z
n  zs          * mzzt2<C-U>`z
   }           * }^
n  <Plug>(-fzf-:) * :
n  <Plug>(-fzf-/) * /
n  <Plug>(-fzf-vim-do) * :execute g:__fzf_command<CR>
n  <Plug>(vital-coaster_buffer_region) * :<C-U>set operatorfunc=<SNR>360__buffer_region_operator<CR>g@
n  <SNR>321_:  * :<C-U><C-R>=v:count ? v:count : ''<CR>
   <SNR>284_cnt<Space> * <SNR>284_Count("get")
n  <SNR>284_lastkey * :<C-U>call<SNR>284_MapRepMo(0)<CR>
n  <SNR>284_repmo( * :<C-U>call<SNR>284_MapRepeatMotion(0,
n  <SNR>283_:. & :<C-R>=getcmdline() =~ ',' ? "\0250" : ""<CR>
n  <Plug>ScripteaseSynnames * :<C-U>exe scriptease#synnames_map(v:count)<CR>
n  <Plug>ScripteaseFilter * scriptease#filterop()
n  <Plug>(abolish-coerce-word) * <SNR>278_coerce(nr2char(getchar())).'iw'
n  <Plug>(abolish-coerce) * <SNR>278_coerce(nr2char(getchar()))
n  <Plug>CommentaryUndo   :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"<CR>
n  <Plug>ChangeCommentary * c:<C-U>call <SNR>275_textobject(1)<CR>
n  <Plug>CommentaryLine * <SNR>275_go() . '_'
n  <Plug>Commentary * <SNR>275_go()
n  <Plug>(JavaComplete-Imports-SortImports) * :call javacomplete#imports#SortImports()<CR>
n  <Plug>(JavaComplete-Generate-ClassInFile) * :call javacomplete#newclass#CreateInFile()<CR>
n  <Plug>(JavaComplete-Generate-NewClass) * :call javacomplete#newclass#CreateClass()<CR>
n  <Plug>(JavaComplete-Generate-DefaultConstructor) * :call javacomplete#generators#GenerateConstructor(1)<CR>
n  <Plug>(JavaComplete-Generate-Constructor) * :call javacomplete#generators#GenerateConstructor(0)<CR>
n  <Plug>(JavaComplete-Generate-EqualsAndHashCode) * :call javacomplete#generators#GenerateEqualsAndHashCode()<CR>
n  <Plug>(JavaComplete-Generate-ToString) * :call javacomplete#generators#GenerateToString()<CR>
n  <Plug>(JavaComplete-Generate-AccessorSetterGetter) * :call javacomplete#generators#Accessor('sg')<CR>
n  <Plug>(JavaComplete-Generate-AccessorGetter) * :call javacomplete#generators#Accessor('g')<CR>
n  <Plug>(JavaComplete-Generate-AccessorSetter) * :call javacomplete#generators#Accessor('s')<CR>
n  <Plug>(JavaComplete-Generate-Accessors) * :call javacomplete#generators#Accessors()<CR>
n  <Plug>(JavaComplete-Generate-AbstractMethods) * :call javacomplete#generators#AbstractDeclaration()<CR>
n  <Plug>(JavaComplete-Imports-AddSmart) * :call javacomplete#imports#Add(1)<CR>
n  <Plug>(JavaComplete-Imports-Add) * :call javacomplete#imports#Add()<CR>
n  <Plug>(JavaComplete-Imports-RemoveUnused) * :call javacomplete#imports#RemoveUnused()<CR>
n  <Plug>(JavaComplete-Imports-AddMissing) * :call javacomplete#imports#AddMissing()<CR>
n  <Plug>(lsp-signature-help) * :<C-U>call lsp#ui#vim#signature_help#get_signature_help_under_cursor()<CR>
n  <Plug>(lsp-previous-reference) * :<C-U>call lsp#ui#vim#references#jump(-1)<CR>
n  <Plug>(lsp-next-reference) * :<C-U>call lsp#ui#vim#references#jump(+1)<CR>
n  <Plug>(lsp-status) * :<C-U>echo lsp#get_server_status()<CR>
n  <Plug>(lsp-peek-implementation) * :<C-U>call lsp#ui#vim#implementation(1)<CR>
n  <Plug>(lsp-implementation) * :<C-U>call lsp#ui#vim#implementation(0)<CR>
n  <Plug>(lsp-document-format) * :<C-U>call lsp#ui#vim#document_format()<CR>
n  <Plug>(lsp-workspace-symbol) * :<C-U>call lsp#ui#vim#workspace_symbol()<CR>
n  <Plug>(lsp-peek-type-definition) * :<C-U>call lsp#ui#vim#type_definition(1)<CR>
n  <Plug>(lsp-type-definition) * :<C-U>call lsp#ui#vim#type_definition(0)<CR>
n  <Plug>(lsp-rename) * :<C-U>call lsp#ui#vim#rename()<CR>
n  <Plug>(lsp-references) * :<C-U>call lsp#ui#vim#references()<CR>
n  <Plug>(lsp-previous-error) * :<C-U>call lsp#ui#vim#diagnostics#previous_error()<CR>
n  <Plug>(lsp-next-error) * :<C-U>call lsp#ui#vim#diagnostics#next_error()<CR>
n  <Plug>(lsp-preview-focus) * :<C-U>call lsp#ui#vim#output#focuspreview()<CR>
n  <Plug>(lsp-preview-close) * :<C-U>call lsp#ui#vim#output#closepreview()<CR>
n  <Plug>(lsp-hover) * :<C-U>call lsp#ui#vim#hover#get_hover_under_cursor()<CR>
n  <Plug>(lsp-document-diagnostics) * :<C-U>call lsp#ui#vim#diagnostics#document_diagnostics()<CR>
n  <Plug>(lsp-document-symbol) * :<C-U>call lsp#ui#vim#document_symbol()<CR>
n  <Plug>(lsp-peek-definition) * :<C-U>call lsp#ui#vim#definition(1)<CR>
n  <Plug>(lsp-definition) * :<C-U>call lsp#ui#vim#definition(0)<CR>
n  <Plug>(lsp-peek-declaration) * :<C-U>call lsp#ui#vim#declaration(1)<CR>
n  <Plug>(lsp-declaration) * :<C-U>call lsp#ui#vim#declaration(0)<CR>
n  <Plug>(lsp-code-action) * :<C-U>call lsp#ui#vim#code_action()<CR>
n  <Plug>QFRestore * :call QFGrep#restore_QuickFix()<CR>
n  <Plug>QFGrepV * :call QFGrep#grep_QuickFix(1)<CR>
n  <Plug>QFGrepG * :call QFGrep#grep_QuickFix(0)<CR>
n  <Plug>DsfNextChange * :call <SNR>252_ChangeNextSurroundingFunctionCall()<CR>
n  <Plug>DsfChange * :call <SNR>252_ChangeSurroundingFunctionCall()<CR>
n  <Plug>DsfNextDelete * :call <SNR>252_DeleteNextSurroundingFunctionCall()<CR>
n  <Plug>DsfDelete * :call <SNR>252_DeleteSurroundingFunctionCall()<CR>
n  <Plug>leaderguide-global * :<C-U>call leaderGuide#start_by_prefix('0', '  ')<CR>
n  <Plug>leaderguide-buffer * :<C-U>call leaderGuide#start_by_prefix('0', '<buffer>')<CR>
n  <Plug>Colorizer * :ColorToggle<CR>
n  <Plug>(QuickScopeToggle) * :call quick_scope#Toggle()<CR>
n  <Plug>(easyoperator-line-yank) * :call easyoperator#line#selectlinesyank()<CR>
n  <Plug>(easyoperator-line-delete) * :call easyoperator#line#selectlinesdelete()<CR>
n  <Plug>(easyoperator-line-select) * :call easyoperator#line#selectlines()<CR>
n  <Plug>MoveCharRight * :<C-U>call <SNR>234_MoveCharRight()<CR>
n  <Plug>MoveCharLeft * :<C-U>call <SNR>234_MoveCharLeft()<CR>
n  <Plug>MoveLineHalfPageUp * :call <SNR>234_MoveLineHalfPageUp()<CR>
n  <Plug>MoveLineHalfPageDown * :call <SNR>234_MoveLineHalfPageDown()<CR>
n  <Plug>MoveLineUp * :call <SNR>234_MoveLineUp(1)<CR>
n  <Plug>MoveLineDown * :call <SNR>234_MoveLineDown(1)<CR>
n  <Plug>(Limelight) * :set opfunc=limelight#operator<CR>g@
n  <Plug>DictRSearch   viw:<C-U>call dict#VSearch("replace")<CR>
n  <Plug>DictWSearch   :call dict#Search(expand("<cword>"), "complex")<CR>
n  <Plug>DictSearch   :call dict#Search(expand("<cword>"), "simple")<CR>
n  <Plug>TranslateR   viw:<C-U>call vtm#TranslateV("replace")<CR>
n  <Plug>TranslateW   :call vtm#Translate('-w ' . expand("<cword>"), "complex")<CR>
n  <Plug>Translate   :call vtm#Translate('-w ' . expand("<cword>"), "simple")<CR>
n  <Plug>(EasyAlignOperator) * :set opfunc=<SNR>227_easy_align_op<CR>g@
n  <Plug>(EasyAlignRepeat) * :call <SNR>227_easy_align_repeat()<CR>
n  <Plug>(LiveEasyAlign) * :set opfunc=<SNR>227_live_easy_align_op<CR>g@
n  <Plug>(EasyAlign) * :set opfunc=<SNR>227_easy_align_op<CR>g@
n  <Plug>ZVMotion   <Plug>ZVOperator
n  <Plug>ZVOperator & <Esc>:setlocal operatorfunc=zeavim#OperatorFun<CR>g@
n  <Plug>ZVKeyDocset & :call zeavim#SearchFor('!')<CR>
n  <Plug>Zeavim & :call zeavim#SearchFor('', expand('<cword>'))<CR>
n  <Plug>(emmet-anchorize-summary) * :call emmet#anchorizeURL(1)<CR>
n  <Plug>(emmet-anchorize-url) * :call emmet#anchorizeURL(0)<CR>
n  <Plug>(emmet-remove-tag) * :call emmet#removeTag()<CR>
n  <Plug>(emmet-split-join-tag) * :call emmet#splitJoinTag()<CR>
n  <Plug>(emmet-toggle-comment) * :call emmet#toggleComment()<CR>
n  <Plug>(emmet-image-size) * :call emmet#imageSize()<CR>
n  <Plug>(emmet-move-prev-item) * :call emmet#moveNextPrevItem(1)<CR>
n  <Plug>(emmet-move-next-item) * :call emmet#moveNextPrevItem(0)<CR>
n  <Plug>(emmet-move-prev) * :call emmet#moveNextPrev(1)<CR>
n  <Plug>(emmet-move-next) * :call emmet#moveNextPrev(0)<CR>
n  <Plug>(emmet-balance-tag-outword) * :call emmet#balanceTag(-1)<CR>
n  <Plug>(emmet-balance-tag-inward) * :call emmet#balanceTag(1)<CR>
n  <Plug>(emmet-update-tag) * :call emmet#updateTag()<CR>
n  <Plug>(emmet-expand-word) * :call emmet#expandAbbr(1,"")<CR>
n  <Plug>(emmet-expand-abbr) * :call emmet#expandAbbr(3,"")<CR>
n  <Plug>(startify-open-buffers) * :<C-U>call startify#open_buffers()<CR>
n  <Plug>BookmarkMoveToLine * :<C-U>BookmarkMoveToLine v:count<CR>
n  <Plug>BookmarkMoveDown * :<C-U>BookmarkMoveDown v:count<CR>
n  <Plug>BookmarkMoveUp * :<C-U>BookmarkMoveUp v:count<CR>
n  <Plug>BookmarkClearAll * :BookmarkClearAll<CR>
n  <Plug>BookmarkClear * :BookmarkClear<CR>
n  <Plug>BookmarkPrev * :BookmarkPrev<CR>
n  <Plug>BookmarkNext * :BookmarkNext<CR>
n  <Plug>BookmarkAnnotate * :BookmarkAnnotate<CR>
n  <Plug>BookmarkToggle * :BookmarkToggle<CR>
n  <Plug>BookmarkShowAll * :BookmarkShowAll<CR>
n  <Plug>(table-mode-sort) * :call tablemode#spreadsheet#Sort('')<CR>
n  <Plug>(table-mode-echo-cell) * :call <SNR>214_TableEchoCell()<CR>
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
n  <Plug>(Visual-Split-SplitBelow) * :<C-U>set operatorfunc=<SNR>175_opgsb<CR>g@
n  <Plug>(Visual-Split-SplitAbove) * :<C-U>set operatorfunc=<SNR>175_opgsa<CR>g@
n  <Plug>(Visual-Split-Split) * :<C-U>set operatorfunc=<SNR>175_opgss<CR>g@
n  <Plug>(Visual-Split-Resize) * :<C-U>set operatorfunc=<SNR>175_opgr<CR>g@
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
n  <Plug>yankstack_after_paste * :call <SNR>173_after_paste()<CR>
n  <Plug>yankstack_substitute_newer_paste * :<C-U>call <SNR>173_substitute_paste(-v:count1, 'n')<CR>
n  <Plug>yankstack_substitute_older_paste * :<C-U>call <SNR>173_substitute_paste(v:count1, 'n')<CR>
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
n  <Plug>AgActionWord * :set hlsearch<CR>:<C-U>set opfunc=<SNR>110_Ag<CR>g@iw
n  <Plug>AgAction * :set hlsearch<CR>:<C-U>set opfunc=<SNR>110_Ag<CR>g@
n  <Plug>CtrlSFQuickfixPwordExec * <SNR>106_SearchPwordCmd('CtrlSFQuickfix', 1)
n  <Plug>CtrlSFQuickfixPwordPath * <SNR>106_SearchPwordCmd('CtrlSFQuickfix', 0)
n  <Plug>CtrlSFQuickfixCCwordExec * <SNR>106_SearchCwordCmd('CtrlSFQuickfix', 1, 1)
n  <Plug>CtrlSFQuickfixCCwordPath * <SNR>106_SearchCwordCmd('CtrlSFQuickfix', 1, 0)
n  <Plug>CtrlSFQuickfixCwordExec * <SNR>106_SearchCwordCmd('CtrlSFQuickfix', 0, 1)
n  <Plug>CtrlSFQuickfixCwordPath * <SNR>106_SearchCwordCmd('CtrlSFQuickfix', 0, 0)
n  <Plug>CtrlSFQuickfixPrompt * :CtrlSFQuickfix<Space>
n  <Plug>CtrlSFPwordExec * <SNR>106_SearchPwordCmd('CtrlSF', 1)
n  <Plug>CtrlSFPwordPath * <SNR>106_SearchPwordCmd('CtrlSF', 0)
n  <Plug>CtrlSFCCwordExec * <SNR>106_SearchCwordCmd('CtrlSF', 1, 1)
n  <Plug>CtrlSFCCwordPath * <SNR>106_SearchCwordCmd('CtrlSF', 1, 0)
n  <Plug>CtrlSFCwordExec * <SNR>106_SearchCwordCmd('CtrlSF', 0, 1)
n  <Plug>CtrlSFCwordPath * <SNR>106_SearchCwordCmd('CtrlSF', 0, 0)
n  <Plug>CtrlSFPrompt * :CtrlSF<Space>
n  <Plug>IndentGuidesDisable & :IndentGuidesDisable<CR>
n  <Plug>IndentGuidesEnable & :IndentGuidesEnable<CR>
n  <Plug>IndentGuidesToggle & :IndentGuidesToggle<CR>
n  <Plug>(wintabs_refresh) * :<C-U>WintabsRefresh<CR>
n  <Plug>(wintabs_maximize) * :<C-U>WintabsMaximize<CR>
n  <Plug>(wintabs_move_to_window_next) * :<C-U>WintabsMoveToWindow w<CR>
n  <Plug>(wintabs_move_to_window_below) * :<C-U>WintabsMoveToWindow j<CR>
n  <Plug>(wintabs_move_to_window_above) * :<C-U>WintabsMoveToWindow k<CR>
n  <Plug>(wintabs_move_to_window_right) * :<C-U>WintabsMoveToWindow l<CR>
n  <Plug>(wintabs_move_to_window_left) * :<C-U>WintabsMoveToWindow h<CR>
n  <Plug>(wintabs_move_right) * :<C-U>WintabsMove 1<CR>
n  <Plug>(wintabs_move_left) * :<C-U>WintabsMove -1<CR>
n  <Plug>(wintabs_last) * :<C-U>WintabsLast<CR>
n  <Plug>(wintabs_first) * :<C-U>WintabsFirst<CR>
n  <Plug>(wintabs_tab_9) * :<C-U>WintabsGo 9<CR>
n  <Plug>(wintabs_tab_8) * :<C-U>WintabsGo 8<CR>
n  <Plug>(wintabs_tab_7) * :<C-U>WintabsGo 7<CR>
n  <Plug>(wintabs_tab_6) * :<C-U>WintabsGo 6<CR>
n  <Plug>(wintabs_tab_5) * :<C-U>WintabsGo 5<CR>
n  <Plug>(wintabs_tab_4) * :<C-U>WintabsGo 4<CR>
n  <Plug>(wintabs_tab_3) * :<C-U>WintabsGo 3<CR>
n  <Plug>(wintabs_tab_2) * :<C-U>WintabsGo 2<CR>
n  <Plug>(wintabs_tab_1) * :<C-U>WintabsGo 1<CR>
n  <Plug>(wintabs_only_vimtab) * :<C-U>WintabsOnlyVimtab<CR>
n  <Plug>(wintabs_close_vimtab) * :<C-U>WintabsCloseVimtab<CR>
n  <Plug>(wintabs_only_window) * :<C-U>WintabsOnlyWindow<CR>
n  <Plug>(wintabs_close_window) * :<C-U>WintabsCloseWindow<CR>
n  <Plug>(wintabs_all) * :<C-U>WintabsAll<CR>
n  <Plug>(wintabs_only) * :<C-U>WintabsOnly<CR>
n  <Plug>(wintabs_undo) * :<C-U>WintabsUndo<CR>
n  <Plug>(wintabs_close) * :<C-U>WintabsClose<CR>
n  <Plug>(wintabs_previous) * :<C-U>WintabsPrevious<CR>
n  <Plug>(wintabs_next) * :<C-U>WintabsNext<CR>
n  <Plug>(quickrun) * :<C-U>QuickRun -mode n<CR>
n  <Plug>(quickrun-op) * :<C-U>set operatorfunc=quickrun#operator<CR>g@
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
n  <Plug>(textobj-diff-hunk-n) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-n","hunk","n")<CR>
n  <Plug>(textobj-diff-hunk-P) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-P","hunk","n")<CR>
n  <Plug>(textobj-diff-hunk-N) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-N","hunk","n")<CR>
n  <Plug>(textobj-diff-hunk-p) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-p","hunk","n")<CR>
n  <Plug>(textobj-diff-file-n) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-n","file","n")<CR>
n  <Plug>(textobj-diff-file-P) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-P","file","n")<CR>
n  <Plug>(textobj-diff-file-N) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-N","file","n")<CR>
n  <Plug>(textobj-diff-file-p) & <SNR>62_(save-cursor-pos):<C-U>call g:__textobj_diff.do_by_pattern("move-p","file","n")<CR>
n  <SNR>62_    * <SNR>62_
   <SNR>62_(save-cursor-pos) * <SNR>62_save_cursor_pos()
n  <Plug>GitGutterPreviewHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')<CR>
n  <Plug>(GitGutterPreviewHunk) * :GitGutterPreviewHunk<CR>
n  <Plug>GitGutterUndoHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')<CR>
n  <Plug>(GitGutterUndoHunk) * :GitGutterUndoHunk<CR>
n  <Plug>GitGutterStageHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')<CR>
n  <Plug>(GitGutterStageHunk) * :GitGutterStageHunk<CR>
n  <Plug>GitGutterPrevHunk * &diff ? '[c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\<CR>"
n  <Plug>(GitGutterPrevHunk) * &diff ? '[c' : ":\<C-U>execute v:count1 . 'GitGutterPrevHunk'\<CR>"
n  <Plug>GitGutterNextHunk * &diff ? ']c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\<CR>"
n  <Plug>(GitGutterNextHunk) * &diff ? ']c' : ":\<C-U>execute v:count1 . 'GitGutterNextHunk'\<CR>"
n  <M-z>         zM
n  <M-a>         za
   <F12>       * :call quickmenu#toggle(0)<CR>
n  <F9>        * :call ToggleQuickFix()<CR>
n  <F8>        * :LocationToggle<CR>
n  <F7>        * :FFBLines <C-R><C-W><CR><Space>
n  <F6>        * :FFLines <C-R><C-W><CR><Space>
n  <F5>        * :call <SNR>1_compile_and_run()<CR>
n  <F4>        * <Esc>:Startify<CR>
n  <F3>        * :call NERDTreeToggleInCurDir()<CR>
n  <M-t>       * :CommandTJump<CR>
n  <F2>          <Esc>:help <C-R><C-W><CR>
n  <M-C-H>       "zyw:exe  "h ".@z.""<CR>
n  <M-h>         <Esc>:helpgrep <C-R><C-W><CR>
n  <F1>        * <Esc>
n  <M-]>       * <Esc>:exe "ptjump " . expand("<cword>")<Esc>
n  <M-w>       * :write!<CR>
n  <M-x>       * :exe getline(".")<CR>
n  <C-Up>        :call ScrollOtherWindow("up")<CR>
n  <C-Down>      :call ScrollOtherWindow("down")<CR>
   <M-0>       * :PreviewScroll +1<CR>
   <M-9>       * :PreviewScroll -1<CR>
   <S-Down>    * :call smooth_scroll#down(&scroll, 0, 2)<CR>
   <S-Up>      * :call smooth_scroll#up(&scroll, 0, 2)<CR>
n  <M-Down>    * :resize -3<CR>
n  <M-Up>      * :resize +3<CR>
n  <M-Left>    * :vertical resize -3<CR>
n  <M-Right>   * :vertical resize +3<CR>
   <M-C-K>       <C-W>k<C-W>_
   <M-NL>        <C-W>j<C-W>_
n  <S-Tab>       :bp<CR>
n  <BS>        * X
