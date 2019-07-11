let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>_ deoplete#mapping#_dummy_complete()
imap <S-Tab> <Plug>snipMateBack
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateTrigger =snipMate#TriggerSnippet(1)
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
inoremap <silent> <expr> <Plug>(neosnippet_start_unite_snippet) unite#sources#neosnippet#start_complete()
inoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
inoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_s :TCommentAs =&ft_
inoremap <Plug>TComment_n :TCommentAs =&ft 
inoremap <Plug>TComment_a :TCommentAs 
inoremap <Plug>TComment_b :TCommentBlock mode=#
inoremap <Plug>TComment_i v:TCommentInline mode=#
inoremap <Plug>TComment_r :TCommentRight
inoremap <Plug>TComment_  :TComment 
inoremap <Plug>TComment_p :norm! m`vip:TComment``
inoremap <Plug>TComment_ :TComment
imap <C-F4> <C-F4>
imap <S-F4> <S-F4>
imap <F4> <F4>
cnoremap <C-Tab>         :tabnext
inoremap <C-Tab> 	
imap <C-F9> <S-F9>
imap <S-F9> <C-F9>
imap <C-F8> <S-F7>
imap <S-F8> <C-F8>
cnoremap <Down> 
cnoremap <Up> 
xmap  <Plug>(neosnippet_expand_target)
smap  <Plug>(neosnippet_expand_or_jump)
nnoremap  :e#
nnoremap  :silent! call JumpToTagInSplit()
snoremap  a<BS>
nmap  h
xmap  h
omap  h
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippetOrJump()
map <NL> j_
map  k_
map  l
snoremap  a<BS>
nnoremap  o
nnoremap <silent>  :CtrlPMRU
snoremap  "_c
snoremap <silent> 	 :call UltiSnips#ListSnippets()
nnoremap  :tabnew 
nmap  :Unite file buffer file_mru 
nnoremap u :call undoquit#UndoQuitWindow()
nmap m <Plug>(zoom-toggle)
nnoremap <silent>  :set nopaste:nohlsearch
nnoremap  :Unite line
nnoremap  :silent! call JumpToTag()
vmap 9 <Plug>TComment_9
nmap 9 <Plug>TComment_9
omap 9 <Plug>TComment_9
vmap 8 <Plug>TComment_8
nmap 8 <Plug>TComment_8
omap 8 <Plug>TComment_8
vmap 7 <Plug>TComment_7
nmap 7 <Plug>TComment_7
omap 7 <Plug>TComment_7
vmap 6 <Plug>TComment_6
nmap 6 <Plug>TComment_6
omap 6 <Plug>TComment_6
vmap 5 <Plug>TComment_5
nmap 5 <Plug>TComment_5
omap 5 <Plug>TComment_5
vmap 4 <Plug>TComment_4
nmap 4 <Plug>TComment_4
omap 4 <Plug>TComment_4
vmap 3 <Plug>TComment_3
nmap 3 <Plug>TComment_3
omap 3 <Plug>TComment_3
vmap 2 <Plug>TComment_2
nmap 2 <Plug>TComment_2
omap 2 <Plug>TComment_2
vmap 1 <Plug>TComment_1
nmap 1 <Plug>TComment_1
omap 1 <Plug>TComment_1
map ca <Plug>TComment_ca
map cc <Plug>TComment_cc
map s <Plug>TComment_s
map n <Plug>TComment_n
map a <Plug>TComment_a
map b <Plug>TComment_b
map i <Plug>TComment_i
map r <Plug>TComment_r
map   <Plug>TComment_ 
map p <Plug>TComment_p
vmap  <Plug>TComment_
nmap  <Plug>TComment_
omap  <Plug>TComment_
nnoremap  k :call g:CursorHistBack()
nnoremap <silent>  gw :GitGrepWord
nnoremap  gb :GitBlame
nnoremap  gp :GitPullRebase
nnoremap  gc :GitCommit
nnoremap  gA :GitAdd <cfile>
nnoremap  ga :GitAdd
nnoremap  gl :GitLog
nnoremap  gs :GitStatus
nnoremap  gD :GitDiff --cached
nnoremap  gd :GitDiff
nnoremap  j :call g:CursorHistForward()
map  _s <Plug>TComment_ _s
map  _n <Plug>TComment_ _n
map  _a <Plug>TComment_ _a
map  _b <Plug>TComment_ _b
map  _r <Plug>TComment_ _r
xmap  _i <Plug>TComment_ _i
map  _  <Plug>TComment_ _ 
map  _p <Plug>TComment_ _p
xmap  __ <Plug>TComment_ __
nmap  __ <Plug>TComment_ __
smap  __ <Plug>TComment_ __
omap  __ <Plug>TComment_ __
map  r <Plug>(quickrun)
vnoremap <silent>  cs "ky:ThesaurusQueryReplace k
nnoremap <silent>  cs :ThesaurusQueryReplaceCurrentWord
vmap <silent>  tb :cal trans#v_between()
vmap <silent>  to :cal trans#v_to()
nmap <silent>  tb :cal trans#between(expand("<cword>"))
nmap <silent>  to :cal trans#to(expand("<cword>"))
vmap <silent>  tt :cal trans#v()
nmap <silent>  tt :cal trans#smart(expand("<cword>"))
map  2 :call SignLines()
map  1 :call SignFixme()
nnoremap  Gu :Start! git push upstream
nnoremap  Go :Start! git push origin
nnoremap  v :UniteWithCursorWord -silent -no-split -auto-preview line
nnoremap  t :Unite -silent -vertical -winwidth=40 -direction=topleft -toggle outline
nnoremap  f :Unite -silent -no-split -start-insert -auto-preview line
nnoremap  h :UniteWithCursorWord -silent help
nnoremap  i :Unite -silent history/yank
nnoremap  \ :Unite grep
nnoremap  m :Unite file buffer file_mru 
nnoremap    :Ag <cword> .
nnoremap  g :grep -R <cword> .
nnoremap  l :%s#\<=getline(".")\>#
nnoremap  w :%s#\<=expand("<cword>")\>#
nnoremap  n :cnextzvzz
nnoremap  b :cprevzvzz
nnoremap <silent>  c /\v^[<|=>]{7}([^=].+)?$
nmap  hu <Plug>GitGutterUndoHunk
nmap  hs <Plug>GitGutterStageHunk
nnoremap  s :ScratchToggle
nnoremap <silent> # #:call BlingHighight()
xnoremap <silent> # :call VisualSelection('', '')?=@/
nmap $$ $<i}``
nmap %% $>i}``
nnoremap <silent> '[ :call signature#mark#Goto("prev", "line", "alpha")
nnoremap <silent> '] :call signature#mark#Goto("next", "line", "alpha")
nnoremap <silent> * *:call BlingHighight()
xnoremap <silent> * :call VisualSelection('', '')/=@/
xnoremap <silent> ,cs "ky:ThesaurusQueryReplace k
nnoremap <silent> ,cs :ThesaurusQueryReplaceCurrentWord
nnoremap ,n :lnextzvzz
nnoremap ,b :lprevzvzz
xnoremap . :normal .
nnoremap / :call SearchCompleteStart()/
xnoremap / :call SearchCompleteStart()/
onoremap / :call SearchCompleteStart()/
xnoremap < <gv
nnoremap =op <Nop>
xnoremap > >gv
imap Ó <Plug>(fzf-complete-line)
imap ï <Plug>(fzf-complete-word)
nnoremap H mzJ`z
nnoremap J :bn
nnoremap K :bp
nnoremap <silent> N N:call BlingHighight()
xmap S <Plug>VSurround
nnoremap S i^mwgk:silent! s/\v +$//:noh`w
nnoremap U :syntax sync fromstart:redraw!
nnoremap W gqip
xnoremap W gq
nnoremap Y y$
xmap [% [%m'gv``
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nmap [P <Plug>unimpairedPutAbove
nmap [p <Plug>unimpairedPutAbove
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap [ <Plug>unimpairedTPPrevious
nmap [T <Plug>unimpairedTFirst
nmap [t <Plug>unimpairedTPrevious
nmap [ <Plug>unimpairedQPFile
nmap [Q <Plug>unimpairedQFirst
nmap [q <Plug>unimpairedQPrevious
nmap [ <Plug>unimpairedLPFile
nmap [L <Plug>unimpairedLFirst
nmap [l <Plug>unimpairedLPrevious
nmap [B <Plug>unimpairedBFirst
nmap [b <Plug>unimpairedBPrevious
nmap [A <Plug>unimpairedAFirst
nmap [a <Plug>unimpairedAPrevious
nnoremap <silent> [= :call signature#marker#Goto("prev", "any",  v:count)
nnoremap <silent> [- :call signature#marker#Goto("prev", "same", v:count)
nnoremap <silent> [` :call signature#mark#Goto("prev", "spot", "pos")
nnoremap <silent> [' :call signature#mark#Goto("prev", "line", "pos")
nmap [c <Plug>GitGutterPrevHunk
nnoremap \m :ShowMaps            " Map keys to call the function
xmap ]% ]%m'gv``
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nmap ]P <Plug>unimpairedPutBelow
nmap ]p <Plug>unimpairedPutBelow
xmap ]e <Plug>unimpairedMoveSelectionDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]f <Plug>unimpairedDirectoryNext
nmap ] <Plug>unimpairedTPNext
nmap ]T <Plug>unimpairedTLast
nmap ]t <Plug>unimpairedTNext
nmap ] <Plug>unimpairedQNFile
nmap ]Q <Plug>unimpairedQLast
nmap ]q <Plug>unimpairedQNext
nmap ] <Plug>unimpairedLNFile
nmap ]L <Plug>unimpairedLLast
nmap ]l <Plug>unimpairedLNext
nmap ]B <Plug>unimpairedBLast
nmap ]b <Plug>unimpairedBNext
nmap ]A <Plug>unimpairedALast
nmap ]a <Plug>unimpairedANext
nnoremap <silent> ]= :call signature#marker#Goto("next", "any",  v:count)
nnoremap <silent> ]- :call signature#marker#Goto("next", "same", v:count)
nnoremap <silent> ]` :call signature#mark#Goto("next", "spot", "pos")
nnoremap <silent> ]' :call signature#mark#Goto("next", "line", "pos")
nmap ]c <Plug>GitGutterNextHunk
nnoremap <silent> `[ :call signature#mark#Goto("prev", "spot", "alpha")
nnoremap <silent> `] :call signature#mark#Goto("next", "spot", "alpha")
xmap a% [%v]%
nmap cell :call AddCell("")
xmap cell :call AddCell("")
omap cell :call AddCell("")
nnoremap cop <Nop>
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap cr <Plug>Coerce
nmap cd :cd %:p:h
xmap cd :cd %:p:h
omap cd :cd %:p:h
nmap ds <Plug>Dsurround
nnoremap <silent> dm :call signature#utils#Remove(v:count)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap g> <Plug>TComment_Comment
nmap <silent> g>b <Plug>TComment_Commentb
nmap <silent> g>c <Plug>TComment_Commentc
nmap <silent> g> <Plug>TComment_Comment
xmap g< <Plug>TComment_Uncomment
nmap <silent> g<b <Plug>TComment_Uncommentb
nmap <silent> g<c <Plug>TComment_Uncommentc
nmap <silent> g< <Plug>TComment_Uncomment
nmap <silent> gcb <Plug>TComment_gcb
nmap <silent> gc9c <Plug>TComment_gc9c
nmap <silent> gc9 <Plug>TComment_gc9
nmap <silent> gc8c <Plug>TComment_gc8c
nmap <silent> gc8 <Plug>TComment_gc8
nmap <silent> gc7c <Plug>TComment_gc7c
nmap <silent> gc7 <Plug>TComment_gc7
nmap <silent> gc6c <Plug>TComment_gc6c
nmap <silent> gc6 <Plug>TComment_gc6
nmap <silent> gc5c <Plug>TComment_gc5c
nmap <silent> gc5 <Plug>TComment_gc5
nmap <silent> gc4c <Plug>TComment_gc4c
nmap <silent> gc4 <Plug>TComment_gc4
nmap <silent> gc3c <Plug>TComment_gc3c
nmap <silent> gc3 <Plug>TComment_gc3
nmap <silent> gc2c <Plug>TComment_gc2c
nmap <silent> gc2 <Plug>TComment_gc2
nmap <silent> gc1c <Plug>TComment_gc1c
nmap <silent> gc1 <Plug>TComment_gc1
nmap gcu <Plug>Commentary<Plug>Commentary
nmap <silent> gcc <Plug>TComment_gcc
omap gc <Plug>Commentary
nmap <silent> gc <Plug>TComment_gc
xmap gc <Plug>TComment_gc
xmap gr <Plug>ReplaceWithRegisterVisual
nmap grr <Plug>ReplaceWithRegisterLine
nmap gr <Plug>ReplaceWithRegisterOperator
nmap gag <Plug>AgAction
xmap gag <Plug>AgActionVisual
nnoremap gZzZz gs
xmap gS <Plug>VgSurround
xmap gs <Plug>(scratch-selection-reuse)
nmap gS <Plug>(scratch-insert-clear)
nnoremap <silent> gs :Switch
nmap <silent> g# <Plug>(LoupeGOctothorpe)
nmap <silent> g* <Plug>(LoupeGStar)
nnoremap <expr> gp '`['.strpart(getregtype(), 0, 1).'`]'
nnoremap gk k
xnoremap gk k
onoremap gk k
nnoremap gj j
xnoremap gj j
onoremap gj j
omap ic <Plug>TComment_ic
xmap ic <Plug>TComment_ic
nnoremap j gj
xnoremap j gj
onoremap j gj
nnoremap k gk
xnoremap k gk
onoremap k gk
nmap mg <Plug>BookmarkMoveToLine
nmap mjj <Plug>BookmarkMoveDown
nmap mkk <Plug>BookmarkMoveUp
nmap mx <Plug>BookmarkClearAll
nmap mc <Plug>BookmarkClear
nmap mp <Plug>BookmarkPrev
nmap mn <Plug>BookmarkNext
nmap mi <Plug>BookmarkAnnotate
nmap mm <Plug>BookmarkToggle
nmap ma <Plug>BookmarkShowAll
nnoremap <silent> m/ :call signature#mark#List(0, 0)
nnoremap <silent> m<BS> :call signature#marker#Purge()
nnoremap <silent> m- :call signature#mark#Purge("line")
nnoremap <silent> m. :call signature#mark#ToggleAtLine()
nnoremap <silent> m, :call signature#mark#Toggle("next")
nnoremap <silent> m :call signature#utils#Input()
nnoremap <silent> n n:call BlingHighight()
nnoremap qq :q
xnoremap qq :q
onoremap qq :q
nnoremap sq :wa :qa
xnoremap sq :wa :qa
onoremap sq :wa :qa
nnoremap ss :w
xnoremap ss :w
onoremap ss :w
nnoremap <silent> vv v
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap z5 :set foldlevel=5
nnoremap z4 :set foldlevel=4
nnoremap z3 :set foldlevel=3
nnoremap z2 :set foldlevel=2
nnoremap z1 :set foldlevel=1
nnoremap z0 :set foldlevel=0
nnoremap } }^
xnoremap } }^
onoremap } }^
nnoremap <SNR>217_: :=v:count ? v:count : ''
smap <S-Tab> <Plug>snipMateBack
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vnoremap <silent> <Plug>(calendar) :Calendar
nnoremap <silent> <Plug>(calendar) :Calendar
nnoremap <silent> <Plug>BookmarkMoveToLine :BookmarkMoveToLine v:count
nnoremap <silent> <Plug>BookmarkMoveDown :BookmarkMoveDown v:count
nnoremap <silent> <Plug>BookmarkMoveUp :BookmarkMoveUp v:count
nnoremap <silent> <Plug>BookmarkClearAll :BookmarkClearAll
nnoremap <silent> <Plug>BookmarkClear :BookmarkClear
nnoremap <silent> <Plug>BookmarkPrev :BookmarkPrev
nnoremap <silent> <Plug>BookmarkNext :BookmarkNext
nnoremap <silent> <Plug>BookmarkAnnotate :BookmarkAnnotate
nnoremap <silent> <Plug>BookmarkToggle :BookmarkToggle
nnoremap <silent> <Plug>BookmarkShowAll :BookmarkShowAll
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
snoremap <Del> a<BS>
snoremap <BS> a<BS>
xnoremap <silent> <Plug>(neosnippet_register_oneshot_snippet) :call neosnippet#mappings#_register_oneshot_snippet()
xnoremap <silent> <Plug>(neosnippet_expand_target) :call neosnippet#mappings#_expand_target()
xnoremap <silent> <Plug>(neosnippet_get_selected_text) :call neosnippet#helpers#get_selected_text(visualmode(), 1)
snoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
nnoremap <silent> <Plug>(vimshell_create) :VimShellCreate
nnoremap <silent> <Plug>(vimshell_switch) :VimShell
nnoremap <silent> <Plug>(vimfiler_simple) :VimFilerSimple
nnoremap <silent> <Plug>(vimfiler_create) :VimFilerCreate
nnoremap <silent> <Plug>(vimfiler_switch) :VimFiler
nnoremap <silent> <Plug>(vimfiler_split_create) :VimFilerSplit
nnoremap <silent> <Plug>(CommandTTag) :CommandTTag
nnoremap <silent> <Plug>(CommandTSearch) :CommandTSearch
nnoremap <silent> <Plug>(CommandTMRU) :CommandTMRU
nnoremap <silent> <Plug>(CommandTLine) :CommandTLine
nnoremap <silent> <Plug>(CommandTCommand) :CommandTCommand
nnoremap <silent> <Plug>(CommandTJump) :CommandTJump
nnoremap <silent> <Plug>(CommandTHistory) :CommandTHistory
nnoremap <silent> <Plug>(CommandTHelp) :CommandTHelp
nnoremap <silent> <Plug>(CommandTBuffer) :CommandTBuffer
nnoremap <silent> <Plug>(CommandT) :CommandT
nnoremap <silent> <Plug>TComment_gc9c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc9cg@
nnoremap <silent> <Plug>TComment_gc8c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc8cg@
nnoremap <silent> <Plug>TComment_gc7c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc7cg@
nnoremap <silent> <Plug>TComment_gc6c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc6cg@
nnoremap <silent> <Plug>TComment_gc5c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc5cg@
nnoremap <silent> <Plug>TComment_gc4c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc4cg@
nnoremap <silent> <Plug>TComment_gc3c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc3cg@
nnoremap <silent> <Plug>TComment_gc2c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc2cg@
nnoremap <silent> <Plug>TComment_gc1c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc1cg@
vnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <silent> <Plug>TComment_gC :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gCg@
nnoremap <silent> <Plug>TComment_gc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcg@
xnoremap <Plug>TComment_gc :TCommentMaybeInline
nnoremap <silent> <Plug>TComment_gcb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcbg@
nnoremap <silent> <Plug>TComment_gcc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gccg@$
noremap <Plug>TComment_ic :call tcomment#textobject#InlineComment()
xnoremap <silent> <Plug>TComment_Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <silent> <Plug>TComment_Commentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentbg@
nnoremap <silent> <Plug>TComment_Commentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentcg@$
nnoremap <silent> <Plug>TComment_Commentl :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentlg@$
nnoremap <silent> <Plug>TComment_Comment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentg@
xnoremap <silent> <Plug>TComment_Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <silent> <Plug>TComment_Uncommentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentbg@
nnoremap <silent> <Plug>TComment_Uncommentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentcg@$
nnoremap <silent> <Plug>TComment_Uncomment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentg@
noremap <Plug>TComment_ _s :TCommentAs =&ft_
noremap <Plug>TComment_ _n :TCommentAs =&ft 
noremap <Plug>TComment_ _a :TCommentAs 
noremap <Plug>TComment_ _b :TCommentBlock
noremap <Plug>TComment_ _r :TCommentRight
xnoremap <Plug>TComment_ _i :TCommentInline
noremap <Plug>TComment_ _  :TComment 
noremap <Plug>TComment_ _p vip:TComment
xnoremap <Plug>TComment_ __ :TCommentMaybeInline
nnoremap <Plug>TComment_ __ :TComment
snoremap <Plug>TComment_ __ :TComment
onoremap <Plug>TComment_ __ :TComment
noremap <Plug>TComment_ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#complete#Complete"))
noremap <Plug>TComment_cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_s :TCommentAs =&ft_
noremap <Plug>TComment_n :TCommentAs =&ft 
noremap <Plug>TComment_a :TCommentAs 
noremap <Plug>TComment_b :TCommentBlock
noremap <Plug>TComment_i v:TCommentInline mode=I#
noremap <Plug>TComment_r :TCommentRight
noremap <Plug>TComment_  :TComment 
noremap <Plug>TComment_p m`vip:TComment``
vnoremap <Plug>TComment_ :TCommentMaybeInline
nnoremap <Plug>TComment_ :TComment
onoremap <Plug>TComment_ :TComment
nnoremap <silent> <Plug>unimpairedTPNext :exe "p".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPPrevious :exe "p".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <silent> <Plug>(Loupen) nzvzz:call loupe#hlmatch()
nnoremap <silent> <Plug>(LoupeGStar) g*zvzz:call loupe#hlmatch()
nnoremap <silent> <Plug>(LoupeGOctothorpe) g#zvzz:call loupe#hlmatch()
nnoremap <silent> <Plug>(LoupeN) Nzvzz:call loupe#hlmatch()
nnoremap <silent> <Plug>(LoupeStar) *zvzz:call loupe#hlmatch()
nnoremap <silent> <Plug>(LoupeOctothorpe) #zvzz:call loupe#hlmatch()
nnoremap <silent> <Plug>(LoupeClearHighlight) :nohlsearch| call loupe#private#clear_highlight()
nnoremap <silent> <Plug>ReplaceWithRegisterVisual :call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|execute 'normal!' ReplaceWithRegister#VisualMode()|call ReplaceWithRegister#Operator('visual', "\<Plug>ReplaceWithRegisterVisual")
vnoremap <silent> <Plug>ReplaceWithRegisterVisual :call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|call ReplaceWithRegister#Operator('visual', "\<Plug>ReplaceWithRegisterVisual")
nnoremap <silent> <Plug>ReplaceWithRegisterLine :call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<Plug>ReplaceWithRegisterLine", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|execute 'normal! V' . v:count1 . "_\<Esc>"|call ReplaceWithRegister#Operator('visual', "\<Plug>ReplaceWithRegisterLine")
nnoremap <silent> <Plug>ReplaceWithRegisterExpressionSpecial :let g:ReplaceWithRegister_expr = getreg('=')|execute 'normal!' v:count1 . '.'
nnoremap <expr> <Plug>ReplaceWithRegisterOperator ReplaceWithRegister#OperatorExpression()
nnoremap <silent> <Plug>(zoom-toggle) :call zoom#toggle()
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
xnoremap <silent> <Plug>(scratch-selection-clear) :call scratch#selection(1)
xnoremap <silent> <Plug>(scratch-selection-reuse) :call scratch#selection(0)
nnoremap <silent> <Plug>(scratch-insert-clear) :call scratch#insert(1)
nnoremap <silent> <Plug>(scratch-insert-reuse) :call scratch#insert(0)
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=quickrun#operatorg@
vnoremap <F2> :norm@q
nnoremap <F2> :call Marvim_search()
vnoremap <F3> y:call Marvim_template_store()
nnoremap <F3> :call Marvim_macro_store()
map <S-F2> :ScratchPreview
map <C-F2> :Scratch
map <C-=> =
map <C-F3> :execute "vimgrep /" . expand("<cword>") . "/j **" | cw
map <C-F10> :call OnlineDoc8()
map <C-F4> :CurInList
map <S-F4> :PrevInList
map <F4> :FirstOrNextInList
noremap <C-Tab> :tabnext
map <C-F9> :lclose
map <S-F9> :lopen
map <C-F8> :cclose
map <S-F8> :copen
nnoremap <C-Up> :m .-2==
nnoremap <C-Down> :m .+1==
nnoremap <C-S-]> :silent! call JumpToTagInSplit()
nnoremap <M-Down> :resize -3
nnoremap <M-Up> :resize +3
nnoremap <M-Left> :vertical resize -3
nnoremap <M-Right> :vertical resize +3
map <S-F12> :ScratchPreview
map <C-F12> :Scratch
omap <F2> "zyiw:exe "vertical h ".@z.""
nnoremap <F12> :TagbarToggle
cnoremap  <Home>
imap  <Plug>(neosnippet_expand_or_jump)
inoremap  
inoremap <silent>  
cnoremap  <End>
inoremap <silent>  
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =UltiSnips#ExpandSnippetOrJump()
inoremap <silent>  
inoremap <silent>  
cnoremap <silent> <expr>  BlingExpressionHighlight()
inoremap <silent> <expr>  (pumvisible() && bufname('%') !=# '[Command Line]' ? "\\" : "\u\")
cnoremap  <Down>
imap  <Plug>(fzf-complete-word)
cnoremap  <Up>
inoremap <silent> 	 =UltiSnips#ListSnippets()
imap  <Plug>(fzf-complete-line)
inoremap            :tabnew 
imap 9 <Plug>TComment_9
imap 8 <Plug>TComment_8
imap 7 <Plug>TComment_7
imap 6 <Plug>TComment_6
imap 5 <Plug>TComment_5
imap 4 <Plug>TComment_4
imap 3 <Plug>TComment_3
imap 2 <Plug>TComment_2
imap 1 <Plug>TComment_1
imap s <Plug>TComment_s
imap n <Plug>TComment_n
imap a <Plug>TComment_a
imap b <Plug>TComment_b
imap i <Plug>TComment_i
imap r <Plug>TComment_r
imap   <Plug>TComment_ 
imap p <Plug>TComment_p
imap  <Plug>TComment_
inoremap   <BS>:call InsertCloseTag()a
cnoremap <expr> ! loupe#private#very_magic_slash('!')
cnoremap <expr> # loupe#private#very_magic_slash('#')
cnoremap <expr> $ loupe#private#very_magic_slash('$')
cnoremap <expr> % loupe#private#very_magic_slash('%')
cnoremap <expr> & loupe#private#very_magic_slash('&')
cnoremap <expr> ' loupe#private#very_magic_slash("'")
cnoremap <expr> ( loupe#private#very_magic_slash('(')
cnoremap <expr> ) loupe#private#very_magic_slash(')')
cnoremap <expr> * loupe#private#very_magic_slash('*')
cnoremap <expr> + loupe#private#very_magic_slash('+')
cnoremap <expr> , loupe#private#very_magic_slash(',')
cnoremap <expr> - loupe#private#very_magic_slash('-')
cnoremap <expr> . loupe#private#very_magic_slash('.')
cnoremap <expr> / loupe#private#very_magic_slash('/')
cnoremap <expr> : loupe#private#very_magic_slash(':')
cnoremap <expr> ; loupe#private#very_magic_slash(';')
cnoremap <expr> < loupe#private#very_magic_slash('<')
cnoremap <expr> = loupe#private#very_magic_slash('=')
cnoremap <expr> > loupe#private#very_magic_slash('>')
cnoremap <expr> ? loupe#private#very_magic_slash('?')
cnoremap <expr> @ loupe#private#very_magic_slash('@')
nnoremap ë :bp
nnoremap ê :bn
cnoremap <expr> [ loupe#private#very_magic_slash('[')
cnoremap <expr> ] loupe#private#very_magic_slash(']')
cnoremap <expr> ^ loupe#private#very_magic_slash('^')
cnoremap <expr> _ loupe#private#very_magic_slash('_')
cnoremap <expr> ` loupe#private#very_magic_slash('`')
imap jj 
cmap w!! w !sudo tee % >/dev/null
cnoremap <expr> { loupe#private#very_magic_slash('{')
cnoremap <expr> } loupe#private#very_magic_slash('}')
cnoremap <expr> ~ loupe#private#very_magic_slash('~')
iabbr ydate =strftime("%Y %b %d")
iabbr xdate =strftime("%d/%m/%y %H:%M:%S")
iabbr ccopy Copyright 2013 Alf , no rights reserved.
iabbr @@ alf@nomail.com
iabbr cmnt /**/<Up>
iabbr #d #define
iabbr #i #include
iabbr que question
iabbr supe superuser
iabbr str start
iabbr === "------------------------------------------------------------------------
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autoindent
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/backup/
set cinoptions=N-s,g0,+2s,l-s,i2s
set clipboard=unnamed,unnamedplus
set cmdwinheight=10
set commentstring=#\ %s
set complete=.,w,b,t,i,u,k
set completefunc=thesaurus_query#auto_complete_integrate
set completeopt=longest,menuone
set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-
set dictionary=~/git/aTest/dotFiles/DICT/english-words.txt
set directory=~/.vim/swap/
set expandtab
set fileencodings=utf-8,sjis
set fillchars=vert:|,fold:\ 
set foldclose=all
set formatoptions=mMjcrql
set grepprg=ag\ --nogroup\ --nocolor
set helplang=en
set hidden
set history=4024
set hlsearch
set ignorecase
set imsearch=0
set incsearch
set infercase
set nojoinspaces
set laststatus=2
set lazyredraw
set listchars=tab:>\ ,nbsp:_
set modelines=0
set mouse=a
set nrformats=hex
set omnifunc=syntaxcomplete#Complete
set path=.,/usr/include,,,.,/usr/include,/usr/local/include
set previewheight=15
set printoptions=paper:a4
set pumheight=10
set report=0
set ruler
set rulerformat=%30(%=:b%n%y%m%r%w\ %l,%c%V\ %P%)
set runtimepath=~/.vim,~/.vim/plugged/marvim/,~/.vim/plugged/keystroke/,~/.vim/plugged/vim-signature/,~/.vim/plugged/vim-colorschemes/,~/.vim/plugged/vimproc.vim/,~/.vim/plugged/neocomplete.vim/,~/.vim/plugged/trans.vim/,~/.vim/plugged/thesaurus_query.vim/,~/.vim/plugged/vim-quickrun/,~/.vim/plugged/scratch.vim/,~/.vim/plugged/syntastic/,~/.vim/plugged/vim-action-ag/,~/.vim/plugged/ag.vim/,~/.vim/plugged/vim-gitgutter/,~/.vim/plugged/vim-zoom/,~/.vim/plugged/ReplaceWithRegister/,~/.vim/plugged/tagbar/,~/.vim/plugged/vim-gutentags/,~/.vim/plugged/nerdtree/,~/.vim/plugged/loupe/,~/.vim/plugged/vim-commentary/,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/vim-abolish/,~/.vim/plugged/vim-repeat/,~/.vim/plugged/vim-surround/,~/.vim/plugged/vim-unimpaired/,~/.vim/plugged/vim-sleuth/,~/.vim/plugged/vim-ripgrep/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/tcomment_vim/,~/.vim/plugged/vim-eunuch/,~/.vim/plugged/command-t/,~/.vim/plugged/vim-angular/,~/.vim/plugged/vim-go/,~/.vim/plugged/ack.vim/,~/.vim/plugged/git-vim/,~/.vim/plugged/vim-flake8/,~/.vim/plugged/Nvim-R/,~/.vim/plugged/undotree/,~/.vim/plugged/vimfiler.vim/,~/.vim/plugged/SearchComplete/,~/.vim/plugged/vimshell.vim/,~/.vim/plugged/vim-dispatch/,~/.vim/plugged/deoplete.nvim/,~/.vim/plugged/cpsm/,~/.vim/plugged/nvim-yarp/,~/.vim/plugged/vim-hug-neovim-rpc/,~/.vim/plugged/deoplete-clang/,~/.vim/plugged/neosnippet.vim/,~/.vim/plugged/neosnippet-snippets/,~/.vim/plugged/ultisnips/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/vim-addon-mw-utils/,~/.vim/plugged/vim-snipmate/,~/.vim/plugged/vim-bling/,~/.vim/plugged/far.vim/,~/.vim/plugged/vim-unite-giti/,~/.vim/plugged/unite-fzf/,~/.vim/plugged/unite-tag/,~/.vim/plugged/unite-ctags/,~/.vim/plugged/unite-outline/,~/.vim/plugged/unite-help/,~/.vim/plugged/vim-vebugger/,~/.vim/plugged/jedi-vim/,~/.vim/plugged/neoyank.vim/,~/.vim/plugged/neomru.vim/,~/.vim/plugged/unite.vim/,~/.vim/plugged/echodoc.vim/,~/.vim/plugged/vim-test/,~/.vim/plugged/neomake/,~/.vim/plugged/fzf/,~/.vim/plugged/fzf.vim/,~/.vim/plugged/undoquit.vim/,~/.vim/plugged/vim-bookmarks/,~/.vim/plugged/awesome-vim-colorschemes/,~/.vim/plugged/gruvbox/,~/.vim/plugged/vim-airline/,~/.vim/plugged/onehalf/,~/.vim/plugged/TagHighlight/,~/.vim/plugged/vim-gitgrep/,~/.vim/plugged/vim-plugin-dirsettings/,~/.vim/plugged/supertab/,~/.vim/plugged/ex-matchit/,~/.vim/plugged/switch.vim/,~/.vim/plugged/calendar.vim/,~/.vim/plugged/xterm-color-table.vim/,~/.vim/plugged/i3-vim-nav/,~/.vim/plugged/spreadsheet.vim/,~/.vim/plugged/vim-crosshairs/,~/.vim/plugged/vim-cursor-hist/,~/.vim/plugged/cscope.vim/,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/plugged/vim-signature/after,~/.vim/plugged/ultisnips/after,~/.vim/plugged/vim-snipmate/after,~/.vim/plugged/jedi-vim/after,~/.vim/plugged/awesome-vim-colorschemes/after,~/.vim/plugged/vimproc/
set sessionoptions=blank,buffers,curdir,folds,options,tabpages,winsize,resize,winpos
set shiftround
set shortmess=filnxtToOIcs
set showcmd
set showtabline=2
set smartcase
set smartindent
set smarttab
set softtabstop=8
set splitbelow
set splitright
set statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c%<%f\\
set suffixes=*.pdf
set noswapfile
set switchbuf=useopen
set tabline=%!airline#extensions#tabline#get()
set tabpagemax=15
set tags=~/git/aTest/dotFiles/inkVim/tags
set thesaurus=mthesaur.txt
set timeoutlen=500
set title
set titlelen=100
set titlestring=%f
set ttimeout
set ttimeoutlen=50
set undodir=~/.vim/undoDir/
set undofile
set undolevels=2000
set undoreload=20000
set updatecount=10
set updatetime=300
set viewoptions=options,cursor
set viminfo=h,'500,<10000,s1000,/1000,:1000
set visualbell
set wildignore=*.~,*.?~,*.o,*.sw?,*.bak,*.hi,*.pyc,*.out,*.lock,.hg,.git,.svn,*.aux,*.out,*.toc,*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.o,*.obj,*.exe,*.dll,*.manifest,*.spl,*.DS_Store,*.luac,migrations,*.orig,*.fasl,*.dx64fsl,classes,lib
set wildmenu
set wildmode=list:longest
set winminheight=0
set winminwidth=3
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/aTest/dotFiles/inkVim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +201 vim-inkItchyMashine.vim
badd +42 ../inkWim/demian-wimrc.vim
badd +132 ~/wimrc-3000.vim
badd +275 ~/wimrc-ohMyVim.vim
badd +5 ~/wimrc-mappings-helmut.vim
badd +0 ~/wimrc-mappings-shougu.vim
argglobal
silent! argdel *
$argadd vim-inkItchyMashine.vim
set lines=40 columns=146
edit ~/wimrc-mappings-shougu.vim
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
noremap! <buffer> <F2> :help 
nmap <buffer>  hp <Plug>GitGutterPreviewHunk
xnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
xnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
noremap <buffer> <F2> :help 
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=N-s,g0,+2s,l-s,i2s
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=1,8,16,24,100,120
setlocal colorcolumn=1,8,16,24,100,120
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,t,i,u,k
set concealcursor=nvc
setlocal concealcursor=nvc
setlocal conceallevel=0
setlocal completefunc=thesaurus_query#auto_complete_integrate
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
set foldcolumn=1
setlocal foldcolumn=1
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=mMjcrql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal infercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=hex
set number
setlocal number
set numberwidth=5
setlocal numberwidth=5
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=8
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOIcs
set winminheight=0 winminwidth=3
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
