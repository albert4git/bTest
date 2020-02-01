

--- Autocommands ---
pb_fzf_mru  BufAdd
    *         cal s:record(expand('<abuf>', 1))
CtrlPMRUF  BufAdd
    *         cal s:record(expand('<abuf>', 1))
BufKill  BufAdd
    *         call <SID>UpdateList('BufAdd')
fzf_buffers  BufDelete
    *         silent! call remove(g:fzf#vim#buffers, expand('<abuf>'))
ClapBuffers  BufDelete
    *         silent! call remove(g:__clap_buffers, expand('<abuf>'))
languageClient  BufDelete
    *         call LanguageClient#handleBufDelete()
fugitive_status  BufDelete
    *         if getbufvar(+expand('<abuf>'), 'buftype') ==# 'terminal' |   if !empty(FugitiveGitDir(+expand('<abuf>'))) |     call fugitive#ReloadStatus(+expand('<abuf>'), 1) |   else |     call fugitive#ReloadStatus(-2, 0) |  endif | endif
fugitive_merge  BufDelete
    git-rebase-todo
              if getbufvar(+expand('<abuf>'), '&bufhidden') ==# 'wipe' |   call s:RebaseClean(expand('<afile>')) |   if getfsize(FugitiveFind('.git/rebase-merge/done', +expand('<abuf>'))) == 0 |     let s:rebase_continue = [FugitiveGitDir(+expand('<abuf>')), 1] |   endif | endif
fugitive_commit  BufDelete
    COMMIT_EDITMSG
              execute substitute(s:FinishCommit(), '\C^echoerr \(''[^'']*''\)*', 'redraw|echohl ErrorMsg|echo \1|echohl NONE', '')
filetypedetect  BufEnter
    *.xpm     if getline(1) =~ "XPM2" |   setf xpm2 | else |   setf xpm | endif
    *.xpm2    setf xpm2
agsResultsWindowEdit  BufEnter
    *.agse    set filetype=agse
agsResultsWindowView  BufEnter
    *.agsv    set filetype=agsv
              call ags#navigateResultsOnLine()
filetypedetect  BufEnter
    *.scss    :syntax sync fromstart
BufEnter
    *         :call BookmarkMapKeys()
UnderlineTag  BufEnter
    *.py      UnderlineTagOn
peekaboo_init  BufEnter
    *         if !exists('*getcmdwintype') || empty(getcmdwintype()) | call peekaboo#on() | endif
gitgutter  BufEnter
    *         call s:on_bufenter()
BufEnter
    *         :call AutoPairsTryInit()
lightline  BufEnter
    *         call lightline#update()
sig_autocmds  BufEnter
    *         call signature#sign#Refresh()
indent_guides  BufEnter
    *         call indent_guides#process_autocmds()
pb_fzf_mru  BufEnter
    *         cal s:record(expand('<abuf>', 1))
CtrlPMRUF  BufEnter
    *         cal s:record(expand('<abuf>', 1))
NERDTree  BufEnter
    NERD_tree_*
              stopinsert
quick_scope  BufEnter
    *         call quick_scope#UnhighlightLine() | call quick_scope#HighlightLine(2, g:qs_accepted_chars)
neovimvifm  BufEnter
    *         silent call s:VifmAuto(expand('<amatch>'))
nvim-typescript  BufEnter
    *.ts      call nvim_typescript#DefaultKeyMap()
    *.tsx     call nvim_typescript#DefaultKeyMap()
    *.ts      call TSOnBufEnter()
    *.tsx     call TSOnBufEnter()
dirvish_ftdetect  BufEnter
    *         if !exists('b:dirvish') && <SID>isdir(expand('%')) | exe 'Dirvish %' | elseif exists('b:dirvish') && &buflisted && bufnr('$') > 1 | setlocal nobuflisted | endif
BufKill  BufEnter
    *         call <SID>UpdateList('BufEnter')
fugitive_status  BufEnter
    index     call s:ReloadWinStatus()
    index.lock
              call s:ReloadWinStatus()
fugitive_merge  BufEnter
    *         if exists('s:rebase_continue') |   if has('timers') |      call timer_start(0, function('s:RebaseContinue', [remove(s:, 'rebase_continue')])) |   else |      call s:RebaseContinue(remove(s:, 'rebase_continue')) |   endif | endif
bm_vim_enter  BufEnter
    *         call s:set_up_auto_save(expand('<afile>:p'))
DimInactive  BufEnter
    *         call s:Debug('EVENT: BufEnter', {'b': bufnr('%')}) | call s:Enter()
neosnippet  BufEnter
    *         call neosnippet#mappings#_clear_select_mode_mappings()
Colorizer  BufEnter
    *         silent call colorizer#ColorHighlight(1)
gitgutter  BufFilePost
    *         GitGutterBufferEnable
projectionist  BufFilePost
    *         call ProjectionistDetect(expand('<afile>:p'))
gitgutter  BufFilePre
    *         GitGutterBufferDisable
startify  BufFilePre
    *         call s:update_oldfiles(expand('<afile>:p'))
agsResultsWindowView  BufLeave
    *.agsv    call ags#cleanYankedText()
gitgutter  BufLeave
    term://*  call gitgutter#all(1)
pb_fzf_mru  BufLeave
    *         cal s:record(expand('<abuf>', 1))
CtrlPMRUF  BufLeave
    *         cal s:record(expand('<abuf>', 1))
NERDTree  BufLeave
    NERD_tree_*
              if g:NERDTree.IsOpen() | call b:NERDTree.ui.saveScreenState() | endif
quick_scope  BufLeave
    *         call quick_scope#UnhighlightLine()
BufKill  BufLeave
    *         call <SID>UpdateLastColumn('BufLeave')
bm_refresh  BufLeave
    *         call s:refresh_line_numbers()
bm_auto_save  BufLeave
    *         call s:auto_save()
filetypedetect  BufNew
    *.nqp     setf perl6
BufNew
    *         if ShouldMatchWhitespace() | match ExtraWhitespace /\\\@<![\u3000[:space:]]\+$/ | else | match ExtraWhitespace /^^/ | endif
filetypedetect  BufNewFile
    ?\+.orig  exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.bak   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.old   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.new   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-dist
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-old
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-new
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-bak
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.rpmsave
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.rpmnew
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.pacsave
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.pacnew
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    *~        let s:name = expand("<afile>") | let s:short = substitute(s:name, '\~$', '', '') | if s:name != s:short && s:short != "" |   exe "doau filetypedetect BufRead " . fnameescape(s:short) | endif | unlet! s:name s:short
    ?\+.in    if expand("<afile>:t") != "configure.in" |   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r")) | endif
    /tmp/.mount_402nv.o1I7Ga/usr/share/nvim/runtime/doc/*.txt
              setf help
    *.inp     call dist#ft#Check_inp()
    *.8th     setf 8th
    *.aap     setf aap
    */etc/a2ps.cfg
              setf a2ps
    */etc/a2ps/*.cfg
              setf a2ps
    a2psrc    setf a2ps
    .a2psrc   setf a2ps
    *.abap    setf abap
    *.abc     setf abc
    *.abl     setf abel
    *.wrm     setf acedb
    *.adb     setf ada
    *.ads     setf ada
    *.ada     setf ada
    *.gpr     setf ada
    *.tdf     setf ahdl
    *.run     setf ampl
    build.xml setf ant
    *.ino     setf arduino
    *.pde     setf arduino
    .htaccess setf apache
    */etc/httpd/*.conf
              setf apache
    */etc/apache2/sites-*/*.com
              setf apache
    *.a65     setf a65
    *.scpt    setf applescript
    *.am      if expand("<afile>") !~? 'Makefile.am\>' | setf elf | endif
    .asoundrc setf alsaconf
    */usr/share/alsa/alsa.conf
              setf alsaconf
    */etc/asound.conf
              setf alsaconf
    *.aml     setf aml
    apt.conf  setf aptconf
    */.aptitude/config
              setf aptconf
    */etc/apt/apt.conf.d/{[-_[:alnum:]]\+,[-_.[:alnum:]]\+.conf}
              setf aptconf
    .arch-inventory
              setf arch
    =tagging-method
              setf arch
    *.art     setf art
    *.asciidoc
              setf asciidoc
    *.adoc    setf asciidoc
    *.asn     setf asn
    *.asn1    setf asn
    *.asa     if exists("g:filetype_asa") |   exe "setf " . g:filetype_asa | else |   setf aspvbs | endif
    *.asp     if exists("g:filetype_asp") |   exe "setf " . g:filetype_asp | elseif getline(1) . getline(2) . getline(3) =~? "perlscript" |   setf aspperl | else |   setf aspvbs | endif
    */boot/grub/menu.lst
              setf grub
    */boot/grub/grub.conf
              setf grub
    */etc/grub.conf
              setf grub
    *.asm     call dist#ft#FTasm()
    *.[sS]    call dist#ft#FTasm()
    *.[aA]    call dist#ft#FTasm()
    *.mac     call dist#ft#FTasm()
    *.lst     call dist#ft#FTasm()
    *.mar     setf vmasm
    *.atl     setf atlas
    *.as      setf atlas
    *.au3     setf autoit
    *.ahk     setf autohotkey
    [mM]akefile.am
              setf automake
    GNUmakefile.am
              setf automake
    *.at      setf m4
    *.ave     setf ave
    *.awk     setf awk
    *.mch     setf b
    *.ref     setf b
    *.imp     setf b
    *.bas     call dist#ft#FTVB("basic")
    *.vb      setf vb
    *.vbs     setf vb
    *.dsm     setf vb
    *.ctl     setf vb
    *.iba     setf ibasic
    *.ibi     setf ibasic
    *.fb      setf freebasic
    *.bi      setf freebasic
    *.bat     setf dosbatch
    *.sys     setf dosbatch
    *.cmd     if getline(1) =~ '^/\*' | setf rexx | else | setf dosbatch | endif
    *.btm     call dist#ft#FTbtm()
    *.bc      setf bc
    *.bdf     setf bdf
    *.bib     setf bib
    *.bst     setf bst
    named*.conf
              setf named
    rndc*.conf
              setf named
    rndc*.key setf named
    named.root
              setf bindzone
    *.db      call dist#ft#BindzoneCheck('')
    *.bl      setf blank
    */etc/blkid.tab
              setf xml
    */etc/blkid.tab.old
              setf xml
    *.bzl     setf bzl
    WORKSPACE setf bzl
    BUILD.bazel
              setf bzl
    BUILD     setf bzl
    *.c       call dist#ft#FTlpc()
    *.lpc     setf lpc
    *.ulpc    setf lpc
    calendar  setf calendar
    *.cs      setf cs
    *.csdl    setf csdl
    *.cabal   setf cabal
    *.toc     setf cdrtoc
    */etc/cdrdao.conf
              setf cdrdaoconf
    */etc/defaults/cdrdao
              setf cdrdaoconf
    */etc/default/cdrdao
              setf cdrdaoconf
    .cdrdao   setf cdrdaoconf
    cfengine.conf
              setf cfengine
    *.chai    setf chaiscript
    *.cdl     setf cdl
    *.recipe  setf conaryrecipe
    *.crm     setf crm
    *.cyn     setf cynpp
    *.cc      if exists("cynlib_syntax_for_cc")|setf cynlib|else|setf cpp|endif
    *.cpp     if exists("cynlib_syntax_for_cpp")|setf cynlib|else|setf cpp|endif
    *.cxx     setf cpp
    *.c++     setf cpp
    *.hh      setf cpp
    *.hxx     setf cpp
    *.hpp     setf cpp
    *.ipp     setf cpp
    *.moc     setf cpp
    *.tcc     setf cpp
    *.inl     setf cpp
    *.C       setf cpp
    *.H       setf cpp
    *.h       call dist#ft#FTheader()
    *.chf     setf ch
    *.tlh     setf cpp
    *.css     setf css
    *.con     setf cterm
    changelog.Debian
              setf debchangelog
    changelog.dch
              setf debchangelog
    NEWS.Debian
              setf debchangelog
    NEWS.dch  setf debchangelog
    [cC]hange[lL]og
              if getline(1) =~ '; urgency='|   setf debchangelog| else|   setf changelog| endif
    NEWS      if getline(1) =~ '; urgency='|   setf debchangelog| endif
    *..ch     setf chill
    *.ch      call dist#ft#FTchange()
    *.chopro  setf chordpro
    *.crd     setf chordpro
    *.cho     setf chordpro
    *.crdpro  setf chordpro
    *.chordpro
              setf chordpro
    *.dcl     setf clean
    *.icl     setf clean
    *.eni     setf cl
    *.ent     call dist#ft#FTent()
    *.prg     if exists("g:filetype_prg") |   exe "setf " . g:filetype_prg | else |   setf clipper | endif
    *.clj     setf clojure
    *.cljs    setf clojure
    *.cljx    setf clojure
    *.cljc    setf clojure
    CMakeLists.txt
              setf cmake
    *.cmake   setf cmake
    *.cmake.in
              setf cmake
    */.cmus/{autosave,rc,command-history,*.theme}
              setf cmusrc
    */cmus/{rc,*.theme}
              setf cmusrc
    *.cbl     setf cobol
    *.cob     setf cobol
    *.lib     setf cobol
    *.cpy     if getline(1) =~ '^##' |   setf python | else |   setf cobol | endif
    *.atg     setf coco
    *.cfm     setf cf
    *.cfi     setf cf
    *.cfc     setf cf
    configure.in
              setf config
    configure.ac
              setf config
    *.cu      setf cuda
    *.cuh     setf cuda
    Dockerfile
              setf dockerfile
    *.Dockerfile
              setf dockerfile
    *.dcd     setf dcd
    *enlightenment/*.cfg
              setf c
    *Eterm/*.cfg
              setf eterm
    *.eu      call dist#ft#EuphoriaCheck()
    *.ew      call dist#ft#EuphoriaCheck()
    *.ex      call dist#ft#EuphoriaCheck()
    *.exu     call dist#ft#EuphoriaCheck()
    *.exw     call dist#ft#EuphoriaCheck()
    *.EU      call dist#ft#EuphoriaCheck()
    *.EW      call dist#ft#EuphoriaCheck()
    *.EX      call dist#ft#EuphoriaCheck()
    *.EXU     call dist#ft#EuphoriaCheck()
    *.EXW     call dist#ft#EuphoriaCheck()
    lynx.cfg  setf lynx
    *baseq[2-3]/*.cfg
              setf quake
    *id1/*.cfg
              setf quake
    *quake[1-3]/*.cfg
              setf quake
    *.qc      setf c
    *.cfg     setf cfg
    *.feature setf cucumber
    *.csp     setf csp
    *.fdr     setf csp
    *.pld     setf cupl
    *.si      setf cuplsim
    */debian/control
              setf debcontrol
    control   if getline(1) =~ '^Source:'|   setf debcontrol| endif
    */debian/copyright
              setf debcopyright
    copyright if getline(1) =~ '^Format:'|   setf debcopyright| endif
    */etc/apt/sources.list
              setf debsources
    */etc/apt/sources.list.d/*.list
              setf debsources
    denyhosts.conf
              setf denyhosts
    */etc/dnsmasq.conf
              setf dnsmasq
    *.desc    setf desc
    *.d       call dist#ft#DtraceCheck()
    *.desktop setf desktop
    .directory
              setf desktop
    dict.conf setf dictconf
    .dictrc   setf dictconf
    dictd.conf
              setf dictdconf
    *.diff    setf diff
    *.rej     setf diff
    *.patch   if getline(1) =~ '^From [0-9a-f]\{40\} Mon Sep 17 00:00:00 2001$' |   setf gitsendemail | else |   setf diff | endif
    .dir_colors
              setf dircolors
    .dircolors
              setf dircolors
    */etc/DIR_COLORS
              setf dircolors
    *.rul     if getline(1).getline(2).getline(3).getline(4).getline(5).getline(6) =~? 'InstallShield' |   setf ishd | else |   setf diva | endif
    *.com     call dist#ft#BindzoneCheck('dcl')
    *.dot     setf dot
    *.lid     setf dylanlid
    *.intr    setf dylanintr
    *.dylan   setf dylan
    *.def     setf def
    *.drac    setf dracula
    *.drc     setf dracula
    *lvs      setf dracula
    *lpe      setf dracula
    *.ds      setf datascript
    *.dsl     setf dsl
    *.dtd     setf dtd
    *.dts     setf dts
    *.dtsi    setf dts
    *.ed\(f\|if\|o\)
              setf edif
    *.edn     if getline(1) =~ '^\s*(\s*edif\>' |   setf edif | else |   setf clojure | endif
    .editorconfig
              setf dosini
    *.ecd     setf ecd
    *.e       call dist#ft#FTe()
    *.E       call dist#ft#FTe()
    */etc/elinks.conf
              setf elinks
    */.elinks/elinks.conf
              setf elinks
    *.erl     setf erlang
    *.hrl     setf erlang
    *.yaws    setf erlang
    filter-rules
              setf elmfilt
    *esmtprc  setf esmtprc
    *.ec      setf esqlc
    *.EC      setf esqlc
    *.strl    setf esterel
    *.csc     setf csc
    exim.conf setf exim
    *.exp     setf expect
    exports   setf exports
    *.fal     setf falcon
    *.fan     setf fan
    *.fwt     setf fan
    *.factor  setf factor
    .fetchmailrc
              setf fetchmail
    *.fex     setf focexec
    *.focexec setf focexec
    auto.master
              setf conf
    *.mas     setf master
    *.master  setf master
    *.fs      setf forth
    *.ft      setf forth
    *.fth     setf forth
    *.frt     setf reva
    *.F       setf fortran
    *.FOR     setf fortran
    *.FPP     setf fortran
    *.FTN     setf fortran
    *.F77     setf fortran
    *.F90     setf fortran
    *.F95     setf fortran
    *.F03     setf fortran
    *.F08     setf fortran
    *.f       setf fortran
    *.for     setf fortran
    *.fortran setf fortran
    *.fpp     setf fortran
    *.ftn     setf fortran
    *.f77     setf fortran
    *.f90     setf fortran
    *.f95     setf fortran
    *.f03     setf fortran
    *.f08     setf fortran
    *.fsl     setf framescript
    fstab     setf fstab
    mtab      setf fstab
    .gdbinit  setf gdb
    *.mo      setf gdmo
    *.gdmo    setf gdmo
    *.ged     setf gedcom
    lltxxxxx.txt
              setf gedcom
    COMMIT_EDITMSG
              setf gitcommit
    MERGE_MSG setf gitcommit
    TAG_EDITMSG
              setf gitcommit
    *.git/config
              setf gitconfig
    .gitconfig
              setf gitconfig
    /etc/gitconfig
              setf gitconfig
    */.config/git/config
              setf gitconfig
    .gitmodules
              setf gitconfig
    *.git/modules/*/config
              setf gitconfig
    git-rebase-todo
              setf gitrebase
    .gitsendemail.msg.??????
              setf gitsendemail
    .msg.[0-9]*
              if getline(1) =~ '^From.*# This line is ignored.$' |   setf gitsendemail | endif
    *.git/*   if getline(1) =~ '^\x\{40\}\>\|^ref: ' |   setf git | endif
    gkrellmrc setf gkrellmrc
    gkrellmrc_?
              setf gkrellmrc
    *.gp      setf gp
    .gprc     setf gp
    */.gnupg/options
              setf gpg
    */.gnupg/gpg.conf
              setf gpg
    */usr/*/gnupg/options.skel
              setf gpg
    gnashrc   setf gnash
    .gnashrc  setf gnash
    gnashpluginrc
              setf gnash
    .gnashpluginrc
              setf gnash
    gitolite.conf
              setf gitolite
    {,.}gitolite.rc
              setf perl
    example.gitolite.rc
              setf perl
    *.gpi     setf gnuplot
    *.go      setf go
    *.gs      setf grads
    *.gretl   setf gretl
    *.gradle  setf groovy
    *.groovy  setf groovy
    *.gsp     setf gsp
    */etc/group
              setf group
    */etc/group-
              setf group
    */etc/group.edit
              setf group
    */etc/gshadow
              setf group
    */etc/gshadow-
              setf group
    */etc/gshadow.edit
              setf group
    */var/backups/group.bak
              setf group
    */var/backups/gshadow.bak
              setf group
    .gtkrc    setf gtkrc
    gtkrc     setf gtkrc
    *.haml    setf haml
    *.hsc     setf hamster
    *.hsm     setf hamster
    *.hs      setf haskell
    *.hs-boot setf haskell
    *.lhs     setf lhaskell
    *.chs     setf chaskell
    *.ht      setf haste
    *.htpp    setf hastepreproc
    *.vc      setf hercules
    *.ev      setf hercules
    *.sum     setf hercules
    *.errsum  setf hercules
    *.hex     setf hex
    *.h32     setf hex
    *.hws     setf hollywood
    *.t.html  setf tilde
    *.html    call dist#ft#FThtml()
    *.htm     call dist#ft#FThtml()
    *.shtml   call dist#ft#FThtml()
    *.stm     call dist#ft#FThtml()
    *.erb     setf eruby
    *.rhtml   setf eruby
    *.html.m4 setf htmlm4
    *.tmpl    setf template
    */etc/host.conf
              setf hostconf
    */etc/hosts.allow
              setf hostsaccess
    */etc/hosts.deny
              setf hostsaccess
    *.hb      setf hb
    *.htt     setf httest
    *.htb     setf httest
    *.icn     setf icon
    *.idl     call dist#ft#FTidl()
    *.odl     setf msidl
    *.mof     setf msidl
    */.icewm/menu
              setf icemenu
    .indent.pro
              setf indent
    indent.pro
              call dist#ft#ProtoCheck('indent')
    *.pro     call dist#ft#ProtoCheck('idlang')
    indentrc  setf indent
    *.inf     setf inform
    *.INF     setf inform
    */etc/initng/*/*.i
              setf initng
    *.ii      setf initng
    upstream.dat\c
              setf upstreamdat
    upstream.*.dat\c
              setf upstreamdat
    *.upstream.dat\c
              setf upstreamdat
    fdrupstream.log
              setf upstreamlog
    upstream.log\c
              setf upstreamlog
    upstream.*.log\c
              setf upstreamlog
    *.upstream.log\c
              setf upstreamlog
    UPSTREAM-*.log\c
              setf upstreamlog
    upstreaminstall.log\c
              setf upstreaminstalllog
    upstreaminstall.*.log\c
              setf upstreaminstalllog
    *.upstreaminstall.log\c
              setf upstreaminstalllog
    usserver.log\c
              setf usserverlog
    usserver.*.log\c
              setf usserverlog
    *.usserver.log\c
              setf usserverlog
    usw2kagt.log\c
              setf usw2kagtlog
    usw2kagt.*.log\c
              setf usw2kagtlog
    *.usw2kagt.log\c
              setf usw2kagtlog
    ipf.conf  setf ipfilter
    ipf6.conf setf ipfilter
    ipf.rules setf ipfilter
    *.4gl     setf fgl
    *.4gh     setf fgl
    *.m4gl    setf fgl
    *.ini     setf dosini
    inittab   setf inittab
    *.iss     setf iss
    *.ijs     setf j
    *.jal     setf jal
    *.JAL     setf jal
    *.jpl     setf jam
    *.jpr     setf jam
    *.java    setf java
    *.jav     setf java
    *.jj      setf javacc
    *.jjt     setf javacc
    *.js      setf javascript
    *.javascript
              setf javascript
    *.es      setf javascript
    *.mjs     setf javascript
    *.jsx     setf javascriptreact
    *.jsp     setf jsp
    *.properties
              setf jproperties
    *.properties_??
              setf jproperties
    *.properties_??_??
              setf jproperties
    *.clp     setf jess
    *.jgr     setf jgraph
    *.jov     setf jovial
    *.j73     setf jovial
    *.jovial  setf jovial
    *.json    setf json
    *.jsonp   setf json
    *.webmanifest
              setf json
    *.kix     setf kix
    *.k       setf kwt
    *.kv      setf kivy
    *.ks      setf kscript
    Kconfig   setf kconfig
    Kconfig.debug
              setf kconfig
    *.ace     setf lace
    *.ACE     setf lace
    *.latte   setf latte
    *.lte     setf latte
    */etc/limits
              setf limits
    */etc/*limits.conf
              setf limits
    */etc/*limits.d/*.conf
              setf limits
    *.sig     setf lprolog
    *.ldif    setf ldif
    *.ld      setf ld
    *.less    setf less
    *.lex     setf lex
    *.l       setf lex
    *.lxx     setf lex
    *.l++     setf lex
    */etc/libao.conf
              setf libao
    */.libao  setf libao
    */etc/sensors.conf
              setf sensors
    */etc/sensors3.conf
              setf sensors
    lftp.conf setf lftp
    .lftprc   setf lftp
    *lftp/rc  setf lftp
    *.ll      setf lifelines
    lilo.conf setf lilo
    *.lsp     setf lisp
    *.lisp    setf lisp
    *.el      setf lisp
    *.jl      setf lisp
    *.L       setf lisp
    .emacs    setf lisp
    .sawfishrc
              setf lisp
    sbclrc    setf lisp
    .sbclrc   setf lisp
    *.liquid  setf liquid
    *.lite    setf lite
    *.lt      setf lite
    */LiteStep/*/*.rc
              setf litestep
    */etc/login.access
              setf loginaccess
    */etc/login.defs
              setf logindefs
    *.lgt     setf logtalk
    *.lot     setf lotos
    *.lotos   setf lotos
    *.lou     setf lout
    *.lout    setf lout
    *.lua     setf lua
    *.rockspec
              setf lua
    *.lsl     setf lsl
    *.lss     setf lss
    *.m4      if expand("<afile>") !~? 'html.m4$\|fvwm2rc' | setf m4 | endif
    *.mgp     setf mgp
    snd.\d\+  setf mail
    .letter   setf mail
    .letter.\d\+
              setf mail
    .followup setf mail
    .article  setf mail
    .article.\d\+
              setf mail
    pico.\d\+ setf mail
    mutt{ng,}-*-\w\+
              setf mail
    mutt[[:alnum:]_-]\\\{6\}
              setf mail
    neomutt-*-\w\+
              setf mail
    neomutt[[:alnum:]_-]\\\{6\}
              setf mail
    ae\d\+.txt
              setf mail
    /tmp/SLRN[0-9A-Z.]\+
              setf mail
    *.eml     setf mail
    */etc/mail/aliases
              setf mailaliases
    */etc/aliases
              setf mailaliases
    .mailcap  setf mailcap
    mailcap   setf mailcap
    *[mM]akefile
              setf make
    *.mk      setf make
    *.mak     setf make
    *.dsp     setf make
    *.ist     setf ist
    *.mst     setf ist
    *.page    setf mallard
    *.man     setf nroff
    */etc/man.conf
              setf manconf
    man.config
              setf manconf
    *.mv      setf maple
    *.mpl     setf maple
    *.mws     setf maple
    *.map     setf map
    *.markdown
              setf markdown
    *.mdown   setf markdown
    *.mkd     setf markdown
    *.mkdn    setf markdown
    *.mdwn    setf markdown
    *.md      setf markdown
    *.mason   setf mason
    *.mhtml   setf mason
    *.m       call dist#ft#FTm()
    *.nb      setf mma
    *.mel     setf mel
    hg-editor-*.txt
              setf hgcommit
    *.hgrc    setf cfg
    *hgrc     setf cfg
    */log/{auth,cron,daemon,debug,kern,lpr,mail,messages,news/news,syslog,user}{,.log,.err,.info,.warn,.crit,.notice}{,.[0-9]*,-[0-9]*}
              setf messages
    *.mf      setf mf
    *.mp      setf mp
    *.mgl     setf mgl
    *.mix     setf mix
    *.mixal   setf mix
    *.mms     call dist#ft#FTmms()
    *.mmp     setf mmp
    *.m2      setf modula2
    *.DEF     setf modula2
    *.mi      setf modula2
    *.[mi][3g]
              setf modula3
    *.isc     setf monk
    *.monk    setf monk
    *.ssc     setf monk
    *.tsc     setf monk
    *.moo     setf moo
    */etc/modules.conf
              setf modconf
    */etc/modules
              setf modconf
    */etc/conf.modules
              setf modconf
    mplayer.conf
              setf mplayerconf
    */.mplayer/config
              setf mplayerconf
    *.s19     setf srec
    *.s28     setf srec
    *.s37     setf srec
    *.mot     setf srec
    *.srec    setf srec
    mrxvtrc   setf mrxvtrc
    .mrxvtrc  setf mrxvtrc
    *.msql    setf msql
    *.mysql   setf mysql
    */etc/Muttrc.d/*
              call s:StarSetf('muttrc')
    *.rc      setf rc
    *.rch     setf rc
    *.mu      setf mupad
    *.mush    setf mush
    Mutt{ng,}rc
              setf muttrc
    *.n1ql    setf n1ql
    *.nql     setf n1ql
    */etc/nanorc
              setf nanorc
    *.nanorc  setf nanorc
    *.NS[ACGLMNPS]
              setf natural
    Neomuttrc setf neomuttrc
    .netrc    setf netrc
    *.ninja   setf ninja
    *.ncf     setf ncf
    *.me      if expand("<afile>") != "read.me" && expand("<afile>") != "click.me" |   setf nroff | endif
    *.tr      setf nroff
    *.nr      setf nroff
    *.roff    setf nroff
    *.tmac    setf nroff
    *.mom     setf nroff
    *.[1-9]   call dist#ft#FTnroff()
    *.mm      call dist#ft#FTmm()
    *.nqc     setf nqc
    *.nse     setf lua
    *.nsi     setf nsis
    *.nsh     setf nsis
    *.ml      setf ocaml
    *.mli     setf ocaml
    *.mll     setf ocaml
    *.mly     setf ocaml
    .ocamlinit
              setf ocaml
    *.occ     setf occam
    *.xom     setf omnimark
    *.xin     setf omnimark
    *.or      setf openroad
    *.[Oo][Pp][Ll]
              setf opl
    *.ora     setf ora
    pf.conf   setf pf
    */etc/pam.conf
              setf pamconf
    *.papp    setf papp
    *.pxml    setf papp
    *.pxsl    setf papp
    */etc/passwd
              setf passwd
    */etc/passwd-
              setf passwd
    */etc/passwd.edit
              setf passwd
    */etc/shadow
              setf passwd
    */etc/shadow-
              setf passwd
    */etc/shadow.edit
              setf passwd
    */var/backups/passwd.bak
              setf passwd
    */var/backups/shadow.bak
              setf passwd
    *.pas     setf pascal
    *.dpr     setf pascal
    *.pdf     setf pdf
    *.pcmk    setf pcmk
    *.pl      call dist#ft#FTpl()
    *.PL      call dist#ft#FTpl()
    *.plx     setf perl
    *.al      setf perl
    *.psgi    setf perl
    *.p6      setf perl6
    *.pm6     setf perl6
    *.pl6     setf perl6
    *.pm      if getline(1) =~ "XPM2" |   setf xpm2 | elseif getline(1) =~ "XPM" |   setf xpm | else |   setf perl | endif
    *.pod     setf pod
    *.pod6    setf pod6
    *.php     setf php
    *.php\d   setf php
    *.phtml   setf php
    *.ctp     setf php
    *.pike    setf pike
    *.pmod    setf pike
    *.cmod    setf cmod
    */etc/pinforc
              setf pinfo
    */.pinforc
              setf pinfo
    *.rcp     setf pilrc
    .pinerc   setf pine
    pinerc    setf pine
    .pinercex setf pine
    pinercex  setf pine
    Pipfile   setf config
    Pipfile.lock
              setf json
    *.pli     setf pli
    *.pl1     setf pli
    *.plm     setf plm
    *.p36     setf plm
    *.pac     setf plm
    *.pls     setf plsql
    *.plsql   setf plsql
    *.plp     setf plp
    *.po      setf po
    *.pot     setf po
    main.cf   setf pfmain
    *.ps      setf postscr
    *.pfa     setf postscr
    *.afm     setf postscr
    *.eps     setf postscr
    *.epsf    setf postscr
    *.epsi    setf postscr
    *.ai      setf postscr
    *.ppd     setf ppd
    *.pov     setf pov
    .povrayrc setf povini
    *.inc     call dist#ft#FTinc()
    *printcap let b:ptcap_type = "print" | setf ptcap
    *termcap  let b:ptcap_type = "term" | setf ptcap
    *.g       setf pccts
    *.it      setf ppwiz
    *.ih      setf ppwiz
    *.obj     setf obj
    *.pc      setf proc
    *.action  setf privoxy
    .procmail setf procmail
    .procmailrc
              setf procmail
    *.w       call dist#ft#FTprogress_cweb()
    *.i       call dist#ft#FTprogress_asm()
    *.p       call dist#ft#FTprogress_pascal()
    *.psf     setf psf
    INDEX     if getline(1) =~ '^\s*\(distribution\|installed_software\|root\|bundle\|product\)\s*$' |   setf psf | endif
    INFO      if getline(1) =~ '^\s*\(distribution\|installed_software\|root\|bundle\|product\)\s*$' |   setf psf | endif
    *.pdb     setf prolog
    *.pml     setf promela
    *.proto   setf proto
    */etc/protocols
              setf protocols
    *.pyx     setf pyrex
    *.pxd     setf pyrex
    *.py      setf python
    *.pyw     setf python
    .pythonstartup
              setf python
    .pythonrc setf python
    *.ptl     setf python
    *.pyi     setf python
    *.rad     setf radiance
    *.mat     setf radiance
    .ratpoisonrc
              setf ratpoison
    ratpoisonrc
              setf ratpoison
    *\,v      setf rcs
    .inputrc  setf readline
    inputrc   setf readline
    *.reg     if getline(1) =~? '^REGEDIT[0-9]*\s*$\|^Windows Registry Editor Version \d*\.\d*\s*$' | setf registry | endif
    *.rib     setf rib
    *.rex     setf rexx
    *.orx     setf rexx
    *.rxo     setf rexx
    *.rxj     setf rexx
    *.jrexx   setf rexx
    *.rexxj   setf rexx
    *.rexx    setf rexx
    *.testGroup
              setf rexx
    *.testUnit
              setf rexx
    *.s       setf r
    *.S       setf r
    *.rd      setf rhelp
    *.Rd      setf rhelp
    *.Rnw     setf rnoweb
    *.rnw     setf rnoweb
    *.Snw     setf rnoweb
    *.snw     setf rnoweb
    *.Rmd     setf rmd
    *.rmd     setf rmd
    *.Smd     setf rmd
    *.smd     setf rmd
    *.Rrst    setf rrst
    *.rrst    setf rrst
    *.Srst    setf rrst
    *.srst    setf rrst
    *.r       call dist#ft#FTr()
    *.R       call dist#ft#FTr()
    .reminders
              setf remind
    *.remind  setf remind
    *.rem     setf remind
    resolv.conf
              setf resolv
    *.rnc     setf rnc
    *.rng     setf rng
    *.rpl     setf rpl
    robots.txt
              setf robots
    *.x       setf rpcgen
    *.rst     setf rst
    *.rtf     setf rtf
    .irbrc    setf ruby
    irbrc     setf ruby
    *.rb      setf ruby
    *.rbw     setf ruby
    *.gemspec setf ruby
    *.rs      setf rust
    *.ru      setf ruby
    Gemfile   setf ruby
    *.builder setf ruby
    *.rxml    setf ruby
    *.rjs     setf ruby
    [rR]antfile
              setf ruby
    *.rant    setf ruby
    [rR]akefile
              setf ruby
    *.rake    setf ruby
    *.sl      setf slang
    smb.conf  setf samba
    *.sas     setf sas
    *.sass    setf sass
    *.sa      setf sather
    *.scala   setf scala
    *.sbt     setf sbt
    *.sci     setf scilab
    *.sce     setf scilab
    *.scss    setf scss
    *.sd      setf sd
    *.sdl     setf sdl
    *.pr      setf sdl
    *.sed     setf sed
    *.siv     setf sieve
    *.sieve   setf sieve
    sendmail.cf
              setf sm
    *.mc      call dist#ft#McSetf()
    */etc/services
              setf services
    */etc/slp.conf
              setf slpconf
    */etc/slp.reg
              setf slpreg
    */etc/slp.spi
              setf slpspi
    */etc/serial.conf
              setf setserial
    *.sgm     if getline(1).getline(2).getline(3).getline(4).getline(5) =~? 'linuxdoc' |   setf sgmllnx | elseif getline(1) =~ '<!DOCTYPE.*DocBook' || getline(2) =~ '<!DOCTYPE.*DocBook' |   let b:docbk_type = "sgml" |   let b:docbk_ver = 4 |   setf docbk | else |   setf sgml | endif
    *.sgml    if getline(1).getline(2).getline(3).getline(4).getline(5) =~? 'linuxdoc' |   setf sgmllnx | elseif getline(1) =~ '<!DOCTYPE.*DocBook' || getline(2) =~ '<!DOCTYPE.*DocBook' |   let b:docbk_type = "sgml" |   let b:docbk_ver = 4 |   setf docbk | else |   setf sgml | endif
    *.decl    if getline(1).getline(2).getline(3) =~? '^<!SGML' |    setf sgmldecl | endif
    *.dcl     if getline(1).getline(2).getline(3) =~? '^<!SGML' |    setf sgmldecl | endif
    *.dec     if getline(1).getline(2).getline(3) =~? '^<!SGML' |    setf sgmldecl | endif
    catalog   setf catalog
    .bashrc   call dist#ft#SetFileTypeSH("bash")
    bashrc    call dist#ft#SetFileTypeSH("bash")
    bash.bashrc
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]profile
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]logout
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]aliases
              call dist#ft#SetFileTypeSH("bash")
    bash-fc[-.]
              call dist#ft#SetFileTypeSH("bash")
    *.bash    call dist#ft#SetFileTypeSH("bash")
    */{,.}bash[_-]completion{,.d,.sh}{,/*}
              call dist#ft#SetFileTypeSH("bash")
    *.ebuild  call dist#ft#SetFileTypeSH("bash")
    *.eclass  call dist#ft#SetFileTypeSH("bash")
    PKGBUILD  call dist#ft#SetFileTypeSH("bash")
    .kshrc    call dist#ft#SetFileTypeSH("ksh")
    *.ksh     call dist#ft#SetFileTypeSH("ksh")
    */etc/profile
              call dist#ft#SetFileTypeSH(getline(1))
    .profile  call dist#ft#SetFileTypeSH(getline(1))
    *.sh      call dist#ft#SetFileTypeSH(getline(1))
    *.env     call dist#ft#SetFileTypeSH(getline(1))
    *.install if getline(1) =~ '<?php' |   setf php | else |   call dist#ft#SetFileTypeSH("bash") | endif
    .tcshrc   call dist#ft#SetFileTypeShell("tcsh")
    *.tcsh    call dist#ft#SetFileTypeShell("tcsh")
    tcsh.tcshrc
              call dist#ft#SetFileTypeShell("tcsh")
    tcsh.login
              call dist#ft#SetFileTypeShell("tcsh")
    .login    call dist#ft#CSH()
    .cshrc    call dist#ft#CSH()
    csh.cshrc call dist#ft#CSH()
    csh.login call dist#ft#CSH()
    csh.logout
              call dist#ft#CSH()
    *.csh     call dist#ft#CSH()
    .alias    call dist#ft#CSH()
    .zprofile setf zsh
    */etc/zprofile
              setf zsh
    .zfbfmarks
              setf zsh
    .zshrc    setf zsh
    .zshenv   setf zsh
    .zlogin   setf zsh
    .zlogout  setf zsh
    .zcompdump
              setf zsh
    *.zsh     setf zsh
    *.scm     setf scheme
    *.ss      setf scheme
    *.rkt     setf scheme
    .screenrc setf screen
    screenrc  setf screen
    *.sim     setf simula
    *.sin     setf sinda
    *.s85     setf sinda
    *.sst     setf sisu
    *.ssm     setf sisu
    *.ssi     setf sisu
    *.-sst    setf sisu
    *._sst    setf sisu
    *.sst.meta
              setf sisu
    *.-sst.meta
              setf sisu
    *._sst.meta
              setf sisu
    *.il      setf skill
    *.ils     setf skill
    *.cdf     setf skill
    .slrnrc   setf slrnrc
    *.score   setf slrnsc
    *.st      setf st
    *.cls     if getline(1) =~ '^%' |  setf tex | elseif getline(1)[0] == '#' && getline(1) =~ 'rexx' |  setf rexx | else |  setf st | endif
    *.tpl     setf smarty
    *.smil    if getline(1) =~ '<?\s*xml.*?>' |   setf xml | else |   setf smil | endif
    *.smi     if getline(1) =~ '\<smil\>' |   setf smil | else |   setf mib | endif
    *.smt     setf smith
    *.smith   setf smith
    *.sno     setf snobol4
    *.spt     setf snobol4
    *.mib     setf mib
    *.my      setf mib
    *.hog     setf hog
    snort.conf
              setf hog
    vision.conf
              setf hog
    *.rules   call dist#ft#FTRules()
    *.spec    setf spec
    *.speedup setf spup
    *.spdata  setf spup
    *.spd     setf spup
    *.ice     setf slice
    *.sp      setf spice
    *.spice   setf spice
    *.spy     setf spyce
    *.spi     setf spyce
    squid.conf
              setf squid
    *.tyb     setf sql
    *.typ     setf sql
    *.tyc     setf sql
    *.pkb     setf sql
    *.pks     setf sql
    *.sql     call dist#ft#SQL()
    *.sqlj    setf sqlj
    *.sqr     setf sqr
    *.sqi     setf sqr
    ssh_config
              setf sshconfig
    */.ssh/config
              setf sshconfig
    sshd_config
              setf sshdconfig
    *.ado     setf stata
    *.do      setf stata
    *.imata   setf stata
    *.mata    setf stata
    *.class   if getline(1) !~ "^\xca\xfe\xba\xbe" | setf stata | endif
    *.hlp     setf smcl
    *.ihlp    setf smcl
    *.smcl    setf smcl
    *.stp     setf stp
    *.sml     setf sml
    *.cm      setf voscm
    */etc/sysctl.conf
              setf sysctl
    */etc/sysctl.d/*.conf
              setf sysctl
    */systemd/*.{automount,mount,path,service,socket,swap,target,timer}
              setf systemd
    /etc/systemd/system/*.d/*.conf
              setf systemd
    /etc/systemd/system/*.d/.#*
              setf systemd
    *.sdc     setf sdc
    */etc/sudoers
              setf sudoers
    sudoers.tmp
              setf sudoers
    *.svg     setf svg
    *.t       if !dist#ft#FTnroff() && !dist#ft#FTperl() | setf tads | endif
    tags      setf tags
    *.tak     setf tak
    {pending,completed,undo}.data
              setf taskdata
    *.task    setf taskedit
    *.tcl     setf tcl
    *.tk      setf tcl
    *.itcl    setf tcl
    *.itk     setf tcl
    *.jacl    setf tcl
    *.tli     setf tli
    *.slt     setf tsalt
    *.ttl     setf teraterm
    *.ti      setf terminfo
    *.latex   setf tex
    *.sty     setf tex
    *.dtx     setf tex
    *.ltx     setf tex
    *.bbl     setf tex
    *.tex     call dist#ft#FTtex()
    *.mkii    setf context
    *.mkiv    setf context
    *.mkvi    setf context
    *.texinfo setf texinfo
    *.texi    setf texinfo
    *.txi     setf texinfo
    texmf.cnf setf texmf
    .tidyrc   setf tidy
    tidyrc    setf tidy
    .tfrc     setf tf
    tfrc      setf tf
    {.,}tmux*.conf
              setf tmux
    *.tpp     setf tpp
    *.treetop setf treetop
    trustees.conf
              setf trustees
    *.tssgm   setf tssgm
    *.tssop   setf tssop
    *.tsscl   setf tsscl
    *.tutor   setf tutor
    *.twig    setf twig
    *.ts      setf typescript
    *.tsx     setf typescriptreact
    *.uit     setf uil
    *.uil     setf uil
    */etc/udev/udev.conf
              setf udevconf
    */etc/udev/permissions.d/*.permissions
              setf udevperm
    */etc/udev/cdsymlinks.conf
              setf sh
    *.uc      setf uc
    */etc/updatedb.conf
              setf updatedb
    */usr/share/upstart/*.conf
              setf upstart
    */usr/share/upstart/*.override
              setf upstart
    */etc/init/*.conf
              setf upstart
    */etc/init/*.override
              setf upstart
    */.init/*.conf
              setf upstart
    */.init/*.override
              setf upstart
    */.config/upstart/*.conf
              setf upstart
    */.config/upstart/*.override
              setf upstart
    *.vr      setf vera
    *.vri     setf vera
    *.vrh     setf vera
    *.v       setf verilog
    *.va      setf verilogams
    *.vams    setf verilogams
    *.sv      setf systemverilog
    *.svh     setf systemverilog
    *.hdl     setf vhdl
    *.vhd     setf vhdl
    *.vhdl    setf vhdl
    *.vbe     setf vhdl
    *.vst     setf vhdl
    *.vim     setf vim
    *.vba     setf vim
    .exrc     setf vim
    _exrc     setf vim
    .viminfo  setf viminfo
    _viminfo  setf viminfo
    *.hw      if getline(1) =~ '<?php' |   setf php | else |   setf virata | endif
    *.module  if getline(1) =~ '<?php' |   setf php | else |   setf virata | endif
    *.pkg     if getline(1) =~ '<?php' |   setf php | else |   setf virata | endif
    *.frm     call dist#ft#FTVB("form")
    *.sba     setf vb
    vgrindefs setf vgrindefs
    *.wrl     setf vrml
    *.vroom   setf vroom
    *.vue     setf vue
    *.wast    setf wast
    *.wat     setf wast
    *.wm      setf webmacro
    .wgetrc   setf wget
    wgetrc    setf wget
    *.wml     setf wml
    *.wbt     setf winbatch
    *.wsml    setf wsml
    *.wpl     setf xml
    wvdial.conf
              setf wvdial
    .wvdialrc setf wvdial
    .cvsrc    setf cvsrc
    cvs\d\+   setf cvs
    *.web     if getline(1)[0].getline(2)[0].getline(3)[0].getline(4)[0].getline(5)[0] =~ "%" |   setf web | else |   setf winbatch | endif
    *.ws[fc]  setf wsh
    *.xhtml   setf xhtml
    *.xht     setf xhtml
    XF86Config
              if getline(1) =~ '\<XConfigurator\>' |   let b:xf86conf_xfree86_version = 3 | endif | setf xf86conf
    */xorg.conf.d/*.conf
              let b:xf86conf_xfree86_version = 4 | setf xf86conf
    xorg.conf let b:xf86conf_xfree86_version = 4 | setf xf86conf
    xorg.conf-4
              let b:xf86conf_xfree86_version = 4 | setf xf86conf
    */etc/xinetd.conf
              setf xinetd
    *.xs      setf xs
    .Xdefaults
              setf xdefaults
    .Xpdefaults
              setf xdefaults
    .Xresources
              setf xdefaults
    xdm-config
              setf xdefaults
    *.ad      setf xdefaults
    *.msc     setf xmath
    *.msf     setf xmath
    *.ms      if !dist#ft#FTnroff() | setf xmath | endif
    *.xml     call dist#ft#FTxml()
    *.xmi     setf xml
    *.csproj  setf xml
    *.csproj.user
              setf xml
    *.ui      setf xml
    *.tpm     setf xml
    */etc/xdg/menus/*.menu
              setf xml
    fglrxrc   setf xml
    *.wsdl    setf xml
    *.xlf     setf xml
    *.xliff   setf xml
    *.xul     setf xml
    *Xmodmap  setf xmodmap
    *.xq      setf xquery
    *.xql     setf xquery
    *.xqm     setf xquery
    *.xquery  setf xquery
    *.xqy     setf xquery
    *.xsd     setf xsd
    *.xsl     setf xslt
    *.xslt    setf xslt
    *.yy      setf yacc
    *.yxx     setf yacc
    *.y++     setf yacc
    *.y       call dist#ft#FTy()
    *.yaml    setf yaml
    *.yml     setf yaml
    *.raml    setf raml
    */etc/yum.conf
              setf dosini
    *.zu      setf zimbu
    *.zut     setf zimbutempl
    *.dtml    call dist#ft#FThtml()
    *.pt      call dist#ft#FThtml()
    *.cpt     call dist#ft#FThtml()
    *.zsql    call dist#ft#SQL()
    *.z8a     setf z8a
    *         if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat | runtime! scripts.vim | endif
    */etc/proftpd/*.conf*
              call s:StarSetf('apachestyle')
    */etc/proftpd/conf.*/*
              call s:StarSetf('apachestyle')
    proftpd.conf*
              call s:StarSetf('apachestyle')
    access.conf*
              call s:StarSetf('apache')
    apache.conf*
              call s:StarSetf('apache')
    apache2.conf*
              call s:StarSetf('apache')
    httpd.conf*
              call s:StarSetf('apache')
    srm.conf* call s:StarSetf('apache')
    */etc/apache2/*.conf*
              call s:StarSetf('apache')
    */etc/apache2/conf.*/*
              call s:StarSetf('apache')
    */etc/apache2/mods-*/*
              call s:StarSetf('apache')
    */etc/apache2/sites-*/*
              call s:StarSetf('apache')
    */etc/httpd/conf.d/*.conf*
              call s:StarSetf('apache')
    *asterisk/*.conf*
              call s:StarSetf('asterisk')
    *asterisk*/*voicemail.conf*
              call s:StarSetf('asteriskvm')
    bzr_log.* setf bzr
    */named/db.*
              call s:StarSetf('bindzone')
    */bind/db.*
              call s:StarSetf('bindzone')
    */.calendar/*
              call s:StarSetf('calendar')
    */share/calendar/*/calendar.*
              call s:StarSetf('calendar')
    */share/calendar/calendar.*
              call s:StarSetf('calendar')
    [cC]hange[lL]og*
              if getline(1) =~ '; urgency='|  call s:StarSetf('debchangelog')|else|  call s:StarSetf('changelog')|endif
    crontab   call s:StarSetf('crontab')
    crontab.* call s:StarSetf('crontab')
    */etc/cron.d/*
              call s:StarSetf('crontab')
    */etc/dnsmasq.d/*
              call s:StarSetf('dnsmasq')
    drac.*    call s:StarSetf('dracula')
    */.fvwm/* call s:StarSetf('fvwm')
    *fvwmrc*  let b:fvwm_version = 1 | call s:StarSetf('fvwm')
    *fvwm95*.hook
              let b:fvwm_version = 1 | call s:StarSetf('fvwm')
    *fvwm2rc* if expand("<afile>:e") == "m4"|  call s:StarSetf('fvwm2m4')|else|  let b:fvwm_version = 2 | call s:StarSetf('fvwm')|endif
    */tmp/lltmp*
              call s:StarSetf('gedcom')
    */.gitconfig.d/*
              call s:StarSetf('gitconfig')
    /etc/gitconfig.d/*
              call s:StarSetf('gitconfig')
    */gitolite-admin/conf/*
              call s:StarSetf('gitolite')
    .gtkrc*   call s:StarSetf('gtkrc')
    gtkrc*    call s:StarSetf('gtkrc')
    Prl*.*    call s:StarSetf('jam')
    JAM*.*    call s:StarSetf('jam')
    *jarg*    if getline(1).getline(2).getline(3).getline(4).getline(5) =~? 'THIS IS THE JARGON FILE'|  call s:StarSetf('jargon')|endif
    *.properties_??_??_*
              call s:StarSetf('jproperties')
    Kconfig.* call s:StarSetf('kconfig')
    lilo.conf*
              call s:StarSetf('lilo')
    */etc/logcheck/*.d*/*
              call s:StarSetf('logcheck')
    [mM]akefile*
              call s:StarSetf('make')
    [rR]akefile*
              call s:StarSetf('ruby')
    {neo,}mutt[[:alnum:]._-]\\\{6\}
              setf mail
    reportbug-*
              call s:StarSetf('mail')
    */etc/modutils/*
              if executable(expand("<afile>")) != 1|  call s:StarSetf('modconf')|endif
    */etc/modprobe.*
              call s:StarSetf('modconf')
    .mutt{ng,}rc*
              call s:StarSetf('muttrc')
    */.mutt{ng,}/mutt{ng,}rc*
              call s:StarSetf('muttrc')
    mutt{ng,}rc*
              call s:StarSetf('muttrc')
    Mutt{ng,}rc*
              call s:StarSetf('muttrc')
    .neomuttrc*
              call s:StarSetf('neomuttrc')
    */.neomutt/neomuttrc*
              call s:StarSetf('neomuttrc')
    neomuttrc*
              call s:StarSetf('neomuttrc')
    Neomuttrc*
              call s:StarSetf('neomuttrc')
    tmac.*    call s:StarSetf('nroff')
    /etc/hostname.*
              call s:StarSetf('config')
    */etc/pam.d/*
              call s:StarSetf('pamconf')
    *printcap*
              if !did_filetype()|  let b:ptcap_type = "print" | call s:StarSetf('ptcap')|endif
    *termcap* if !did_filetype()|  let b:ptcap_type = "term" | call s:StarSetf('ptcap')|endif
    *.rdf     call dist#ft#Redif()
    .reminders*
              call s:StarSetf('remind')
    sgml.catalog*
              call s:StarSetf('catalog')
    .bashrc*  call dist#ft#SetFileTypeSH("bash")
    .bash[_-]profile*
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]logout*
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]aliases*
              call dist#ft#SetFileTypeSH("bash")
    bash-fc[-.]*
              call dist#ft#SetFileTypeSH("bash")
    PKGBUILD* call dist#ft#SetFileTypeSH("bash")
    .kshrc*   call dist#ft#SetFileTypeSH("ksh")
    .profile* call dist#ft#SetFileTypeSH(getline(1))
    .tcshrc*  call dist#ft#SetFileTypeShell("tcsh")
    .login*   call dist#ft#CSH()
    .cshrc*   call dist#ft#CSH()
    *.vhdl_[0-9]*
              call s:StarSetf('vhdl')
    *vimrc*   call s:StarSetf('vim')
    svn-commit*.tmp
              setf svn
    Xresources*
              call s:StarSetf('xdefaults')
    */app-defaults/*
              call s:StarSetf('xdefaults')
    */Xresources/*
              call s:StarSetf('xdefaults')
    XF86Config-4*
              let b:xf86conf_xfree86_version = 4 | call s:StarSetf('xf86conf')
    XF86Config*
              if getline(1) =~ '\<XConfigurator\>'|  let b:xf86conf_xfree86_version = 3|endif|call s:StarSetf('xf86conf')
    *xmodmap* call s:StarSetf('xmodmap')
    */etc/xinetd.d/*
              call s:StarSetf('xinetd')
    */etc/yum.repos.d/*
              call s:StarSetf('dosini')
    .zsh*     call s:StarSetf('zsh')
    .zlog*    call s:StarSetf('zsh')
    .zcompdump*
              call s:StarSetf('zsh')
    zsh*      call s:StarSetf('zsh')
    zlog*     call s:StarSetf('zsh')
    *.text    setf text
    README    setf text
    *.txt     if getline('$') !~ 'vim:.*ft=help'|   setf text| endif
agsResultsWindowEdit  BufNewFile
    *.agse    set filetype=agse
agsResultsWindowView  BufNewFile
    *.agsv    set filetype=agsv
BufNewFile
    *.ag      set filetype=ag
    *.snippets
              setf snippets
    *.snip    set filetype=neosnippet
    *.snippets
              set filetype=neosnippet
    {.,}tmux*.conf
              set ft=tmux | compiler tmux
    *.ino     set filetype=spark
filetypedetect  BufNewFile
    *.vb      setlocal filetype=vbnet
    *.jl      set filetype=julia
    *.coffee  set filetype=coffee
    *Cakefile set filetype=coffee
    *.coffeekup
              set filetype=coffee
    *.ck      set filetype=coffee
    *._coffee set filetype=coffee
    *.litcoffee
              set filetype=litcoffee
    *.coffee.md
              set filetype=litcoffee
    *.ex      set filetype=elixir
    *.exs     set filetype=elixir
    *.eex     set filetype=eelixir
    *.leex    set filetype=eelixir
    mix.lock  set filetype=elixir
    *.fish    setfiletype fish
    /home/red/.config/fish/fish_{read_,}history
              setfiletype yaml
    /home/red/.config/fish/fishd.*
              setlocal readonly
    /home/red/.config/fish/functions/*.fish
              call append(0, ['function '.expand('%:t:r'),'','end']) | 2
    *.git/{,modules/**/,worktrees/*/}{COMMIT_EDIT,TAG_EDIT,MERGE_,}MSG
              set ft=gitcommit
    *.git/config
              set ft=gitconfig
    .gitconfig
              set ft=gitconfig
    gitconfig set ft=gitconfig
    .gitmodules
              set ft=gitconfig
    */.config/git/config
              set ft=gitconfig
    *.git/modules/**/config
              set ft=gitconfig
    git-rebase-todo
              set ft=gitrebase
    .gitsendemail.*
              set ft=gitsendemail
    *.pu      setfiletype plantuml | set filetype=plantuml
    *.uml     setfiletype plantuml | set filetype=plantuml
    *.plantuml
              setfiletype plantuml | set filetype=plantuml
    *.puml    setfiletype plantuml | set filetype=plantuml
    *.scala   set filetype=scala
    *.sc      set filetype=scala
    *.sbt     setfiletype sbt.scala
    *.swift   set filetype=swift
    *.jinja2  set ft=jinja
    *.j2      set ft=jinja
    *.jinja   set ft=jinja
    *.nunjucks
              set ft=jinja
    *.nunjs   set ft=jinja
    *.njk     set ft=jinja
    *.asl     set filetype=asl
    *.dsl     set filetype=asl
ansible_vim_ftyaml_ansible  BufNewFile
    *         if s:isAnsible() | set ft=yaml.ansible | en
ansible_vim_ftjinja2  BufNewFile
    *.j2      call s:setupTemplate()
ansible_vim_fthosts  BufNewFile
    hosts     set ft=ansible_hosts
filetypedetect  BufNewFile
    *.apib    set filetype=apiblueprint
    *.scpt    setf applescript
    *.applescript
              setf applescript
    *.ino     set filetype=arduino
    *.pde     set filetype=arduino
    *.asciidoc
              set ft=asciidoc
    *.adoc    set ft=asciidoc
    *.blade.php
              set filetype=blade
    Caddyfile set ft=caddyfile
    *.carp    set filetype=carp
CJSX  BufNewFile
    *.csx     set filetype=coffee
    *.cjsx    set filetype=coffee
filetypedetect  BufNewFile
    *.clj     setlocal filetype=clojure
    *.cljs    setlocal filetype=clojure
    *.edn     setlocal filetype=clojure
    *.cljx    setlocal filetype=clojure
    *.cljc    setlocal filetype=clojure
    {build,profile}.boot
              setlocal filetype=clojure
    *.cql     set filetype=cql
    *.cry     set filetype=cryptol
    *.cyl     set filetype=cryptol
    *.lcry    set filetype=cryptol
    *.lcyl    set filetype=cryptol
    *.cr      setlocal filetype=crystal
    Projectfile
              setlocal filetype=crystal
    *.ecr     setlocal filetype=eruby
    *.csv     set filetype=csv
    *.dat     set filetype=csv
    *.tsv     set filetype=csv
    *.tab     set filetype=csv
    *.feature set filetype=cucumber
    *.story   set filetype=cucumber
    *.cue     set filetype=cuesheet
    *.dart    set filetype=dart
dhall  BufNewFile
    *.dhall   set filetype=dhall
filetypedetect  BufNewFile
    *.d       setf d
    *.lst     set filetype=dcov
    *.dd      set filetype=dd
    *.ddoc    set filetype=ddoc
    *.sdl     set filetype=dsdl
    [Dd]ockerfile
              set ft=Dockerfile
    Dockerfile*
              set ft=Dockerfile
    [Dd]ockerfile.vim
              set ft=vim
    *.dock    set ft=Dockerfile
    *.[Dd]ockerfile
              set ft=Dockerfile
    docker-compose*.{yaml,yml}*
              set ft=yaml.docker-compose
    *.elm     set filetype=elm
    *.em      set filetype=ember-script
    *.emblem  set filetype=emblem
    *.erl     set ft=erlang
    *.hrl     set ft=erlang
    rebar.config
              set ft=erlang
    *.app     set ft=erlang
    *.app.src set ft=erlang
    *.yaws    set ft=erlang
    *.xrl     set ft=erlang
    *.escript set ft=erlang
    ferm.conf setf ferm
    *.ferm    setf ferm
    *.fbs     setfiletype fbs
    *.fs      set filetype=fsharp
    *.fsi     set filetype=fsharp
    *.fsx     set filetype=fsharp
    *.vert    set filetype=glsl
    *.tesc    set filetype=glsl
    *.tese    set filetype=glsl
    *.glsl    set filetype=glsl
    *.geom    set filetype=glsl
    *.frag    set filetype=glsl
    *.comp    set filetype=glsl
    *.go      setfiletype go
    *.s       setfiletype asm
    *.tmpl    setfiletype gohtmltmpl
    go.mod    call s:gomod()
    *.graphql setfiletype graphql
    *.graphqls
              setfiletype graphql
    *.gql     setfiletype graphql
    *.gradle  set filetype=groovy
    *.sass    setf sass
    *.scss    setf scss
    *.mustache
              set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hogan   set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hulk    set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hjs     set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.handlebars
              set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hdbs    set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hbs     set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hb      set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    haproxy*.c*
              set ft=haproxy
    *.hsc     set filetype=haskell
    *.bpk     set filetype=haskell
    *.hsig    set filetype=haskell
    *.hx      setf haxe
    *.hcl     set filetype=hcl
    *.nomad   set filetype=hcl
    Appfile   set filetype=hcl
    */templates/*.yaml
              set ft=helm
    */templates/*.tpl
              set ft=helm
    *.hql     set filetype=hive
    *.ql      set filetype=hive
    *.q       set filetype=hive
i3config#ft_detect  BufNewFile
    .i3.config
              set filetype=i3config
    i3.config set filetype=i3config
    *.i3config
              set filetype=i3config
    *.i3.config
              set filetype=i3config
filetypedetect  BufNewFile
    *.idr     setf idris
    idris-response
              setf idris
    *.lidr    setf lidris
    /home/red/.config/ion/initrc
              set filetype=ion
    *.ion     set filetype=ion
    *         if getline(1) =~ '^#!.*\Wion\s*$' |   set ft=ion | endif
    *Spec.js  set filetype=jasmine.javascript syntax=jasmine
    *_spec.js set filetype=jasmine.javascript syntax=jasmine
    *.flow    setfiletype flow
    *.{js,mjs,jsm,es,es6}
              setfiletype javascript
    Jakefile  setfiletype javascript
    *         call s:SelectJavascript()
JenkinsAUGroup  BufNewFile
    *Jenkins* set ft=Jenkinsfile
    *jenkins* set ft=Jenkinsfile
filetypedetect  BufNewFile
    *.json5   setfiletype json5
    *.json    setlocal filetype=json
    *.jsonl   setlocal filetype=json
    *.jsonp   setlocal filetype=json
    *.geojson setlocal filetype=json
    *.template
              setlocal filetype=json
    *.ejs     set filetype=jst
    *.jst     set filetype=jst
    *.djs     set filetype=jst
    *.hamljs  set filetype=jst
    *.ect     set filetype=jst
    *.kt      setfiletype kotlin
    *.kts     setfiletype kotlin
    *.less    setf less
    *.ly      set ft=lilypond
    *.ily     set ft=lilypond
    *.ls      set filetype=ls
    *Slakefile
              set filetype=ls
    lit.*cfg  set filetype=python
    *.ll      set filetype=llvm
    *.td      set filetype=tablegen
    *.log     set filetype=log
    *_log     set filetype=log
    *.*.mako  execute "do BufNewFile filetypedetect " . expand("<afile>:r") | let b:mako_outer_lang = &filetype
    *.mako    set filetype=mako
    *.{md,mdown,mkd,mkdn,markdown,mdwn}
              set filetype=markdown
    *.wl      set filetype=mma
    *.wls     set filetype=mma
    *.mdx     set filetype=markdown.mdx
    meson.build
              set filetype=meson
    meson_options.txt
              set filetype=meson
    *.moon    set filetype=moon
    *         call s:DetectMoon()
    *.nginx   set ft=nginx
    nginx*.conf
              set ft=nginx
    *nginx.conf
              set ft=nginx
    */etc/nginx/*
              set ft=nginx
    */usr/local/nginx/conf/*
              set ft=nginx
    */nginx/*.conf
              set ft=nginx
    *.nim     set filetype=nim
    *.nims    set filetype=nim
    *.nimble  set filetype=nim
    *.nix     set filetype=nix
    jbuild    set ft=dune
    dune      set ft=dune
    dune-project
              set ft=dune
    _oasis    set filetype=oasis
    *.ml      set ft=ocaml
    *.mli     set ft=ocaml
    *.mll     set ft=ocaml
    *.mly     set ft=ocaml
    .ocamlinit
              set ft=ocaml
    *.mlt     set ft=ocaml
    *.mlp     set ft=ocaml
    *.mlip    set ft=ocaml
    *.mli.cppo
              set ft=ocaml
    *.ml.cppo set ft=ocaml
    _tags     set filetype=ocamlbuild_tags
    OMakefile set ft=omake
    OMakeroot set ft=omake
    *.om      set ft=omake
    OMakeroot.in
              set ft=omake
    opam      set filetype=opam
    *.opam    set filetype=opam
    *.opam.template
              set filetype=opam
    *.sexp    set ft=sexplib
    *.cl      set filetype=opencl
    *.nqp     setf perl6
    *.pgsql   let b:sql_type_override='pgsql' | setfiletype sql
    *.pony    setf pony
    *.ps1     set ft=ps1
    *.psd1    set ft=ps1
    *.psm1    set ft=ps1
    *.pssc    set ft=ps1
    *.ps1xml  set ft=ps1xml
    *.cdxml   set ft=xml
    *.psc1    set ft=xml
    *.proto   setfiletype proto
    *.pug     set filetype=pug
    *.jade    set filetype=pug
    *.pp      setfiletype puppet
    *.epp     setfiletype embeddedpuppet
    Puppetfile
              setfiletype ruby
    *.purs    setf purescript
    *.pri     set filetype=qmake
    *.pro     set filetype=qmake
    *.qml     setfiletype qml
    *.rkt     call RacketDetectHashLang()
    *.rktl    call RacketDetectHashLang()
    *.raml    set ft=raml
    *.re      set filetype=reason
    *.rei     set filetype=reason
    .merlin   set ft=merlin
    *.erb     call s:setf('eruby')
    *.rhtml   call s:setf('eruby')
    .irbrc    call s:setf('ruby')
    irbrc     call s:setf('ruby')
    *.rb      call s:setf('ruby')
    *.rbw     call s:setf('ruby')
    *.gemspec call s:setf('ruby')
    *.ru      call s:setf('ruby')
    Gemfile   call s:setf('ruby')
    *.builder call s:setf('ruby')
    *.rxml    call s:setf('ruby')
    *.rjs     call s:setf('ruby')
    *.ruby    call s:setf('ruby')
    [rR]akefile
              call s:setf('ruby')
    *.rake    call s:setf('ruby')
    [rR]akefile*
              call s:StarSetf('ruby')
    [rR]antfile
              call s:setf('ruby')
    *.rant    call s:setf('ruby')
    Appraisals
              call s:setf('ruby')
    .autotest call s:setf('ruby')
    *.axlsx   call s:setf('ruby')
    [Bb]uildfile
              call s:setf('ruby')
    Capfile   call s:setf('ruby')
    *.cap     call s:setf('ruby')
    Cheffile  call s:setf('ruby')
    Berksfile call s:setf('ruby')
    Podfile   call s:setf('ruby')
    *.podspec call s:setf('ruby')
    Guardfile call s:setf('ruby')
    .Guardfile
              call s:setf('ruby')
    *.jbuilder
              call s:setf('ruby')
    KitchenSink
              call s:setf('ruby')
    *.opal    call s:setf('ruby')
    .pryrc    call s:setf('ruby')
    Puppetfile
              call s:setf('ruby')
    *.rabl    call s:setf('ruby')
    [rR]outefile
              call s:setf('ruby')
    .simplecov
              call s:setf('ruby')
    [tT]horfile
              call s:setf('ruby')
    *.thor    call s:setf('ruby')
    [vV]agrantfile
              call s:setf('ruby')
    *.rs      call s:set_rust_filetype()
    Cargo.toml
              setf FALLBACK cfg
    *.sbt     set filetype=sbt.scala
    *.scss    setfiletype scss
    *.slim    setfiletype slim
    *.slime   set filetype=slime
    *.smt     set filetype=smt2
    *.smt2    set filetype=smt2
    *.sol     setf solidity
    *.styl    set filetype=stylus
    *.stylus  set filetype=stylus
    *.svelte  setfiletype svelte
    sxhkdrc   set ft=sxhkdrc
    *.sxhkdrc set ft=sxhkdrc
    *.automount
              set filetype=systemd
    *.mount   set filetype=systemd
    *.path    set filetype=systemd
    *.service set filetype=systemd
    *.socket  set filetype=systemd
    *.swap    set filetype=systemd
    *.target  set filetype=systemd
    *.timer   set filetype=systemd
    *.tf      set filetype=terraform
    *.tfvars  set filetype=terraform
    *.tfstate set filetype=json
    *.tfstate.backup
              set filetype=json
    *.textile set filetype=textile
    *.thrift  setlocal filetype=thrift
    {.,}tmux.conf
              setfiletype tmux
    *.toml    setf toml
    Gopkg.lock
              setf toml
    Cargo.lock
              setf toml
    */.cargo/config
              setf toml
    */.cargo/credentials
              setf toml
    Pipfile   setf toml
    *.p       set filetype=tptp
              set syntax=tptp
    *.tptp    set filetype=tptp
              set syntax=tptp
    *.ax      set filetype=tptp
              set syntax=tptp
    *.twig    set filetype=html.twig
    *.html.twig
              set filetype=html.twig
    *.xml.twig
              set filetype=xml.twig
    *.ts      setlocal filetype=typescript
    *.tsx     setlocal filetype=typescriptreact
    *.v       set filetype=vlang
              set syntax=vlang
    *.vala    setfiletype vala
    *.vapi    setfiletype vala
    *.valadoc setfiletype vala
    *.vcl     set filetype=vcl
    vifm.rename*
              :set filetype=vifm-rename
    vifmrc    :set filetype=vifm
    *vifm/colors/*
              :set filetype=vifm
    *.vifm    :set filetype=vifm
    *.vm      set ft=velocity syntax=velocity
    *.vue     setf vue
    *.wpy     setf vue
    *.xdc     setfiletype xdc
    *.zep     set filetype=zephir
    *.zig     set filetype=zig
BufNewFile
    *.mustache
              set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hogan   set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hulk    set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hjs     set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.handlebars
              set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hdbs    set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hbs     set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hb      set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.json    setlocal filetype=json
    *.jsonl   setlocal filetype=json
    *.jsonp   setlocal filetype=json
    *.geojson setlocal filetype=json
    *.template
              setlocal filetype=json
    .tern-project
              setf json
    .tern-config
              setf json
    *.toml    setf toml
    Gopkg.lock
              setf toml
    Cargo.lock
              setf toml
    */.cargo/config
              setf toml
    */.cargo/credentials
              setf toml
    Pipfile   setf toml
filetypedetect  BufNewFile
    *         if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat    && (getline(1) =~ '^#' || getline(2) =~ '^#' || getline(3) =~ '^#'^I|| getline(4) =~ '^#' || getline(5) =~ '^#') |   setf FALLBACK conf | endif
fugitive  BufNewFile
    *         call FugitiveDetect(expand('<amatch>:p'))
eunuch  BufNewFile
    *         let b:eunuch_new_file = 1
    /etc/init.d/*
              if filereadable("/etc/init.d/skeleton") |   keepalt read /etc/init.d/skeleton |   1delete_ | endif | set ft=sh
BufNewFile
    *.html    inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    *.xhtml   inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    *.phtml   inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    *.html    inoremap <silent> <buffer> <leader>> >
    *.xhtml   inoremap <silent> <buffer> <leader>> >
    *.phtml   inoremap <silent> <buffer> <leader>> >
    *.xhtml   call <SID>Declare('b:closetag_use_xhtml', 1)
Templating  BufNewFile
    *         call <SID>TLoad(2, '')
BufNewFile
    .vim-template:*
              let b:vim_template_subtype = &filetype | set ft=vim-template
    /home/red/.config/nvim/plugged/vim-template/templates/=template=*
              let b:vim_template_subtype = &filetype | set ft=vim-template
SnipMateDetect  BufNewFile
    *.snippet setlocal filetype=snippets
    *.snippets
              setlocal filetype=snippets
gutentags_detect  BufNewFile
    *         call gutentags#setup_gutentags()
XtermColorTable  BufNewFile
    __XtermColorTable__
              call <SID>ColorTable()
BufNewFile
    *         call TagHighlight#ReadTypes#ReadTypesByExtension()
languageClient  BufNewFile
    *         call LanguageClient#handleBufNewFile()
jedi_pyi  BufNewFile
    *.pyi     set filetype=python
projectionist  BufNewFile
    *         if empty(&filetype) |   call ProjectionistDetect(expand('<afile>:p')) | endif
              if !empty(get(b:, 'projectionist')) |   call projectionist#apply_template() |   setlocal nomodified | endif
BufNewFile
    *         call s:MRU_AddFile(expand('<abuf>'))
startify  BufNewFile
    *         call s:update_oldfiles(expand('<afile>:p'))
lsp  BufNewFile
    *         call s:on_text_document_did_open()
neosnippet  BufNewFile
    *         execute 'syntax match neosnippetExpandSnippets'  "'".neosnippet#get_placeholder_marker_pattern(). '\|' .neosnippet#get_sync_placeholder_marker_pattern().'\|' .neosnippet#get_mirror_placeholder_marker_pattern()."'" 'containedin=ALL oneline'
              syntax region neosnippetConcealExpandSnippets  matchgroup=neosnippetExpandSnippets  start='<`0\|<`\|<{\d\+:\=\%(#:\|TARGET:\?\)\?\|%\w\+(<|' end='\(:\w\+\|:#:\w\+\)\?`>\|}>\||>)\?' containedin=ALL  cchar=| concealends oneline
nvim_terminal  BufReadCmd
    term://*  :if !exists('b:term_title')|call termopen( matchstr(expand("<amatch>"), '\c\mterm://\%(.\{-}//\%(\d\+:\)\?\)\?\zs.*'), {'cwd': get(matchlist(expand("<amatch>"), '\c\mterm://\(.\{-}\)//'), 1, '')})|endif
fugitive  BufReadCmd
    index{,.lock}
              if FugitiveIsGitDir(expand('<amatch>:p:h')) |   let b:git_dir = s:Slash(expand('<amatch>:p:h')) |   exe fugitive#BufReadStatus() | elseif filereadable(expand('<amatch>')) |   silent doautocmd BufReadPre |   keepalt read <amatch> |   1delete_ |   silent doautocmd BufReadPost | else |   silent doautocmd BufNewFile | endif
    fugitive://*//*
              exe fugitive#BufReadCmd() | if &path =~# '^\.\%(,\|$\)' |   let &l:path = substitute(&path, '^\.,\=', '', '') | endif
man  BufReadCmd
    man://*   call man#read_page(matchstr(expand('<amatch>'), 'man://\zs.*'))
ShaDaCommands  BufReadCmd
    *.shada   :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call setline('.', shada#get_strings(readfile(expand('<afile>'),'b'))) |setlocal filetype=shada
    *.shada.tmp.[a-z]
              :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call setline('.', shada#get_strings(readfile(expand('<afile>'),'b'))) |setlocal filetype=shada
tar  BufReadCmd
    tarfile::*
              call tar#Read(expand("<amatch>"), 1)
    tarfile::*/*
              call tar#Read(expand("<amatch>"), 1)
    *.tar.gz  call tar#Browse(expand("<amatch>"))
    *.tar     call tar#Browse(expand("<amatch>"))
    *.lrp     call tar#Browse(expand("<amatch>"))
    *.tar.bz2 call tar#Browse(expand("<amatch>"))
    *.tar.Z   call tar#Browse(expand("<amatch>"))
    *.tgz     call tar#Browse(expand("<amatch>"))
    *.tbz     call tar#Browse(expand("<amatch>"))
    *.tar.lzma
              call tar#Browse(expand("<amatch>"))
    *.tar.xz  call tar#Browse(expand("<amatch>"))
    *.txz     call tar#Browse(expand("<amatch>"))
zip  BufReadCmd
    zipfile:* call zip#Read(expand("<amatch>"), 1)
    zipfile:*/*
              call zip#Read(expand("<amatch>"), 1)
    *.apk     call zip#Browse(expand("<amatch>"))
    *.celzip  call zip#Browse(expand("<amatch>"))
    *.crtx    call zip#Browse(expand("<amatch>"))
    *.docm    call zip#Browse(expand("<amatch>"))
    *.docx    call zip#Browse(expand("<amatch>"))
    *.dotm    call zip#Browse(expand("<amatch>"))
    *.dotx    call zip#Browse(expand("<amatch>"))
    *.ear     call zip#Browse(expand("<amatch>"))
    *.epub    call zip#Browse(expand("<amatch>"))
    *.gcsx    call zip#Browse(expand("<amatch>"))
    *.glox    call zip#Browse(expand("<amatch>"))
    *.gqsx    call zip#Browse(expand("<amatch>"))
    *.ja      call zip#Browse(expand("<amatch>"))
    *.jar     call zip#Browse(expand("<amatch>"))
    *.kmz     call zip#Browse(expand("<amatch>"))
    *.oxt     call zip#Browse(expand("<amatch>"))
    *.potm    call zip#Browse(expand("<amatch>"))
    *.potx    call zip#Browse(expand("<amatch>"))
    *.ppam    call zip#Browse(expand("<amatch>"))
    *.ppsm    call zip#Browse(expand("<amatch>"))
    *.ppsx    call zip#Browse(expand("<amatch>"))
    *.pptm    call zip#Browse(expand("<amatch>"))
    *.pptx    call zip#Browse(expand("<amatch>"))
    *.sldx    call zip#Browse(expand("<amatch>"))
    *.thmx    call zip#Browse(expand("<amatch>"))
    *.vdw     call zip#Browse(expand("<amatch>"))
    *.war     call zip#Browse(expand("<amatch>"))
    *.wsz     call zip#Browse(expand("<amatch>"))
    *.xap     call zip#Browse(expand("<amatch>"))
    *.xlam    call zip#Browse(expand("<amatch>"))
              call zip#Browse(expand("<amatch>"))
    *.xlsb    call zip#Browse(expand("<amatch>"))
    *.xlsm    call zip#Browse(expand("<amatch>"))
    *.xlsx    call zip#Browse(expand("<amatch>"))
    *.xltm    call zip#Browse(expand("<amatch>"))
    *.xltx    call zip#Browse(expand("<amatch>"))
    *.xpi     call zip#Browse(expand("<amatch>"))
    *.zip     call zip#Browse(expand("<amatch>"))
filetypedetect  BufReadPost
    ?\+.orig  exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.bak   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.old   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.new   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-dist
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-old
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-new
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.dpkg-bak
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.rpmsave
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.rpmnew
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.pacsave
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    ?\+.pacnew
              exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))
    *~        let s:name = expand("<afile>") | let s:short = substitute(s:name, '\~$', '', '') | if s:name != s:short && s:short != "" |   exe "doau filetypedetect BufRead " . fnameescape(s:short) | endif | unlet! s:name s:short
    ?\+.in    if expand("<afile>:t") != "configure.in" |   exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r")) | endif
    /tmp/.mount_402nv.o1I7Ga/usr/share/nvim/runtime/doc/*.txt
              setf help
    *.inp     call dist#ft#Check_inp()
    *.8th     setf 8th
    *.aap     setf aap
    */etc/a2ps.cfg
              setf a2ps
    */etc/a2ps/*.cfg
              setf a2ps
    a2psrc    setf a2ps
    .a2psrc   setf a2ps
    *.abap    setf abap
    *.abc     setf abc
    *.abl     setf abel
    *.wrm     setf acedb
    *.adb     setf ada
    *.ads     setf ada
    *.ada     setf ada
    *.gpr     setf ada
    *.tdf     setf ahdl
    *.run     setf ampl
    build.xml setf ant
    *.ino     setf arduino
    *.pde     setf arduino
    .htaccess setf apache
    */etc/httpd/*.conf
              setf apache
    */etc/apache2/sites-*/*.com
              setf apache
    *.a65     setf a65
    *.scpt    setf applescript
    *.am      if expand("<afile>") !~? 'Makefile.am\>' | setf elf | endif
    .asoundrc setf alsaconf
    */usr/share/alsa/alsa.conf
              setf alsaconf
    */etc/asound.conf
              setf alsaconf
    *.aml     setf aml
    apt.conf  setf aptconf
    */.aptitude/config
              setf aptconf
    */etc/apt/apt.conf.d/{[-_[:alnum:]]\+,[-_.[:alnum:]]\+.conf}
              setf aptconf
    .arch-inventory
              setf arch
    =tagging-method
              setf arch
    *.art     setf art
    *.asciidoc
              setf asciidoc
    *.adoc    setf asciidoc
    *.asn     setf asn
    *.asn1    setf asn
    *.asa     if exists("g:filetype_asa") |   exe "setf " . g:filetype_asa | else |   setf aspvbs | endif
    *.asp     if exists("g:filetype_asp") |   exe "setf " . g:filetype_asp | elseif getline(1) . getline(2) . getline(3) =~? "perlscript" |   setf aspperl | else |   setf aspvbs | endif
    */boot/grub/menu.lst
              setf grub
    */boot/grub/grub.conf
              setf grub
    */etc/grub.conf
              setf grub
    *.asm     call dist#ft#FTasm()
    *.[sS]    call dist#ft#FTasm()
    *.[aA]    call dist#ft#FTasm()
    *.mac     call dist#ft#FTasm()
    *.lst     call dist#ft#FTasm()
    *.mar     setf vmasm
    *.atl     setf atlas
    *.as      setf atlas
    *.au3     setf autoit
    *.ahk     setf autohotkey
    [mM]akefile.am
              setf automake
    GNUmakefile.am
              setf automake
    *.at      setf m4
    *.ave     setf ave
    *.awk     setf awk
    *.mch     setf b
    *.ref     setf b
    *.imp     setf b
    *.bas     call dist#ft#FTVB("basic")
    *.vb      setf vb
    *.vbs     setf vb
    *.dsm     setf vb
    *.ctl     setf vb
    *.iba     setf ibasic
    *.ibi     setf ibasic
    *.fb      setf freebasic
    *.bi      setf freebasic
    *.bat     setf dosbatch
    *.sys     setf dosbatch
    *.cmd     if getline(1) =~ '^/\*' | setf rexx | else | setf dosbatch | endif
    *.btm     call dist#ft#FTbtm()
    *.bc      setf bc
    *.bdf     setf bdf
    *.bib     setf bib
    *.bst     setf bst
    named*.conf
              setf named
    rndc*.conf
              setf named
    rndc*.key setf named
    named.root
              setf bindzone
    *.db      call dist#ft#BindzoneCheck('')
    *.bl      setf blank
    */etc/blkid.tab
              setf xml
    */etc/blkid.tab.old
              setf xml
    *.bzl     setf bzl
    WORKSPACE setf bzl
    BUILD.bazel
              setf bzl
    BUILD     setf bzl
    *.c       call dist#ft#FTlpc()
    *.lpc     setf lpc
    *.ulpc    setf lpc
    calendar  setf calendar
    *.cs      setf cs
    *.csdl    setf csdl
    *.cabal   setf cabal
    *.toc     setf cdrtoc
    */etc/cdrdao.conf
              setf cdrdaoconf
    */etc/defaults/cdrdao
              setf cdrdaoconf
    */etc/default/cdrdao
              setf cdrdaoconf
    .cdrdao   setf cdrdaoconf
    cfengine.conf
              setf cfengine
    *.chai    setf chaiscript
    *.cdl     setf cdl
    *.recipe  setf conaryrecipe
    *.crm     setf crm
    *.cyn     setf cynpp
    *.cc      if exists("cynlib_syntax_for_cc")|setf cynlib|else|setf cpp|endif
    *.cpp     if exists("cynlib_syntax_for_cpp")|setf cynlib|else|setf cpp|endif
    *.cxx     setf cpp
    *.c++     setf cpp
    *.hh      setf cpp
    *.hxx     setf cpp
    *.hpp     setf cpp
    *.ipp     setf cpp
    *.moc     setf cpp
    *.tcc     setf cpp
    *.inl     setf cpp
    *.C       setf cpp
    *.H       setf cpp
    *.h       call dist#ft#FTheader()
    *.chf     setf ch
    *.tlh     setf cpp
    *.css     setf css
    *.con     setf cterm
    changelog.Debian
              setf debchangelog
    changelog.dch
              setf debchangelog
    NEWS.Debian
              setf debchangelog
    NEWS.dch  setf debchangelog
    [cC]hange[lL]og
              if getline(1) =~ '; urgency='|   setf debchangelog| else|   setf changelog| endif
    NEWS      if getline(1) =~ '; urgency='|   setf debchangelog| endif
    *..ch     setf chill
    *.ch      call dist#ft#FTchange()
    *.chopro  setf chordpro
    *.crd     setf chordpro
    *.cho     setf chordpro
    *.crdpro  setf chordpro
    *.chordpro
              setf chordpro
    *.dcl     setf clean
    *.icl     setf clean
    *.eni     setf cl
    *.ent     call dist#ft#FTent()
    *.prg     if exists("g:filetype_prg") |   exe "setf " . g:filetype_prg | else |   setf clipper | endif
    *.clj     setf clojure
    *.cljs    setf clojure
    *.cljx    setf clojure
    *.cljc    setf clojure
    CMakeLists.txt
              setf cmake
    *.cmake   setf cmake
    *.cmake.in
              setf cmake
    */.cmus/{autosave,rc,command-history,*.theme}
              setf cmusrc
    */cmus/{rc,*.theme}
              setf cmusrc
    *.cbl     setf cobol
    *.cob     setf cobol
    *.lib     setf cobol
    *.cpy     if getline(1) =~ '^##' |   setf python | else |   setf cobol | endif
    *.atg     setf coco
    *.cfm     setf cf
    *.cfi     setf cf
    *.cfc     setf cf
    configure.in
              setf config
    configure.ac
              setf config
    *.cu      setf cuda
    *.cuh     setf cuda
    Dockerfile
              setf dockerfile
    *.Dockerfile
              setf dockerfile
    *.dcd     setf dcd
    *enlightenment/*.cfg
              setf c
    *Eterm/*.cfg
              setf eterm
    *.eu      call dist#ft#EuphoriaCheck()
    *.ew      call dist#ft#EuphoriaCheck()
    *.ex      call dist#ft#EuphoriaCheck()
    *.exu     call dist#ft#EuphoriaCheck()
    *.exw     call dist#ft#EuphoriaCheck()
    *.EU      call dist#ft#EuphoriaCheck()
    *.EW      call dist#ft#EuphoriaCheck()
    *.EX      call dist#ft#EuphoriaCheck()
    *.EXU     call dist#ft#EuphoriaCheck()
    *.EXW     call dist#ft#EuphoriaCheck()
    lynx.cfg  setf lynx
    *baseq[2-3]/*.cfg
              setf quake
    *id1/*.cfg
              setf quake
    *quake[1-3]/*.cfg
              setf quake
    *.qc      setf c
    *.cfg     setf cfg
    *.feature setf cucumber
    *.csp     setf csp
    *.fdr     setf csp
    *.pld     setf cupl
    *.si      setf cuplsim
    */debian/control
              setf debcontrol
    control   if getline(1) =~ '^Source:'|   setf debcontrol| endif
    */debian/copyright
              setf debcopyright
    copyright if getline(1) =~ '^Format:'|   setf debcopyright| endif
    */etc/apt/sources.list
              setf debsources
    */etc/apt/sources.list.d/*.list
              setf debsources
    denyhosts.conf
              setf denyhosts
    */etc/dnsmasq.conf
              setf dnsmasq
    *.desc    setf desc
    *.d       call dist#ft#DtraceCheck()
    *.desktop setf desktop
    .directory
              setf desktop
    dict.conf setf dictconf
    .dictrc   setf dictconf
    dictd.conf
              setf dictdconf
    *.diff    setf diff
    *.rej     setf diff
    *.patch   if getline(1) =~ '^From [0-9a-f]\{40\} Mon Sep 17 00:00:00 2001$' |   setf gitsendemail | else |   setf diff | endif
    .dir_colors
              setf dircolors
    .dircolors
              setf dircolors
    */etc/DIR_COLORS
              setf dircolors
    *.rul     if getline(1).getline(2).getline(3).getline(4).getline(5).getline(6) =~? 'InstallShield' |   setf ishd | else |   setf diva | endif
    *.com     call dist#ft#BindzoneCheck('dcl')
    *.dot     setf dot
    *.lid     setf dylanlid
    *.intr    setf dylanintr
    *.dylan   setf dylan
    *.def     setf def
    *.drac    setf dracula
    *.drc     setf dracula
    *lvs      setf dracula
    *lpe      setf dracula
    *.ds      setf datascript
    *.dsl     setf dsl
    *.dtd     setf dtd
    *.dts     setf dts
    *.dtsi    setf dts
    *.ed\(f\|if\|o\)
              setf edif
    *.edn     if getline(1) =~ '^\s*(\s*edif\>' |   setf edif | else |   setf clojure | endif
    .editorconfig
              setf dosini
    *.ecd     setf ecd
    *.e       call dist#ft#FTe()
    *.E       call dist#ft#FTe()
    */etc/elinks.conf
              setf elinks
    */.elinks/elinks.conf
              setf elinks
    *.erl     setf erlang
    *.hrl     setf erlang
    *.yaws    setf erlang
    filter-rules
              setf elmfilt
    *esmtprc  setf esmtprc
    *.ec      setf esqlc
    *.EC      setf esqlc
    *.strl    setf esterel
    *.csc     setf csc
    exim.conf setf exim
    *.exp     setf expect
    exports   setf exports
    *.fal     setf falcon
    *.fan     setf fan
    *.fwt     setf fan
    *.factor  setf factor
    .fetchmailrc
              setf fetchmail
    *.fex     setf focexec
    *.focexec setf focexec
    auto.master
              setf conf
    *.mas     setf master
    *.master  setf master
    *.fs      setf forth
    *.ft      setf forth
    *.fth     setf forth
    *.frt     setf reva
    *.F       setf fortran
    *.FOR     setf fortran
    *.FPP     setf fortran
    *.FTN     setf fortran
    *.F77     setf fortran
    *.F90     setf fortran
    *.F95     setf fortran
    *.F03     setf fortran
    *.F08     setf fortran
    *.f       setf fortran
    *.for     setf fortran
    *.fortran setf fortran
    *.fpp     setf fortran
    *.ftn     setf fortran
    *.f77     setf fortran
    *.f90     setf fortran
    *.f95     setf fortran
    *.f03     setf fortran
    *.f08     setf fortran
    *.fsl     setf framescript
    fstab     setf fstab
    mtab      setf fstab
    .gdbinit  setf gdb
    *.mo      setf gdmo
    *.gdmo    setf gdmo
    *.ged     setf gedcom
    lltxxxxx.txt
              setf gedcom
    COMMIT_EDITMSG
              setf gitcommit
    MERGE_MSG setf gitcommit
    TAG_EDITMSG
              setf gitcommit
    *.git/config
              setf gitconfig
    .gitconfig
              setf gitconfig
    /etc/gitconfig
              setf gitconfig
    */.config/git/config
              setf gitconfig
    .gitmodules
              setf gitconfig
    *.git/modules/*/config
              setf gitconfig
    git-rebase-todo
              setf gitrebase
    .gitsendemail.msg.??????
              setf gitsendemail
    .msg.[0-9]*
              if getline(1) =~ '^From.*# This line is ignored.$' |   setf gitsendemail | endif
    *.git/*   if getline(1) =~ '^\x\{40\}\>\|^ref: ' |   setf git | endif
    gkrellmrc setf gkrellmrc
    gkrellmrc_?
              setf gkrellmrc
    *.gp      setf gp
    .gprc     setf gp
    */.gnupg/options
              setf gpg
    */.gnupg/gpg.conf
              setf gpg
    */usr/*/gnupg/options.skel
              setf gpg
    gnashrc   setf gnash
    .gnashrc  setf gnash
    gnashpluginrc
              setf gnash
    .gnashpluginrc
              setf gnash
    gitolite.conf
              setf gitolite
    {,.}gitolite.rc
              setf perl
    example.gitolite.rc
              setf perl
    *.gpi     setf gnuplot
    *.go      setf go
    *.gs      setf grads
    *.gretl   setf gretl
    *.gradle  setf groovy
    *.groovy  setf groovy
    *.gsp     setf gsp
    */etc/group
              setf group
    */etc/group-
              setf group
    */etc/group.edit
              setf group
    */etc/gshadow
              setf group
    */etc/gshadow-
              setf group
    */etc/gshadow.edit
              setf group
    */var/backups/group.bak
              setf group
    */var/backups/gshadow.bak
              setf group
    .gtkrc    setf gtkrc
    gtkrc     setf gtkrc
    *.haml    setf haml
    *.hsc     setf hamster
    *.hsm     setf hamster
    *.hs      setf haskell
    *.hs-boot setf haskell
    *.lhs     setf lhaskell
    *.chs     setf chaskell
    *.ht      setf haste
    *.htpp    setf hastepreproc
    *.vc      setf hercules
    *.ev      setf hercules
    *.sum     setf hercules
    *.errsum  setf hercules
    *.hex     setf hex
    *.h32     setf hex
    *.hws     setf hollywood
    *.t.html  setf tilde
    *.html    call dist#ft#FThtml()
    *.htm     call dist#ft#FThtml()
    *.shtml   call dist#ft#FThtml()
    *.stm     call dist#ft#FThtml()
    *.erb     setf eruby
    *.rhtml   setf eruby
    *.html.m4 setf htmlm4
    *.tmpl    setf template
    */etc/host.conf
              setf hostconf
    */etc/hosts.allow
              setf hostsaccess
    */etc/hosts.deny
              setf hostsaccess
    *.hb      setf hb
    *.htt     setf httest
    *.htb     setf httest
    *.icn     setf icon
    *.idl     call dist#ft#FTidl()
    *.odl     setf msidl
    *.mof     setf msidl
    */.icewm/menu
              setf icemenu
    .indent.pro
              setf indent
    indent.pro
              call dist#ft#ProtoCheck('indent')
    *.pro     call dist#ft#ProtoCheck('idlang')
    indentrc  setf indent
    *.inf     setf inform
    *.INF     setf inform
    */etc/initng/*/*.i
              setf initng
    *.ii      setf initng
    upstream.dat\c
              setf upstreamdat
    upstream.*.dat\c
              setf upstreamdat
    *.upstream.dat\c
              setf upstreamdat
    fdrupstream.log
              setf upstreamlog
    upstream.log\c
              setf upstreamlog
    upstream.*.log\c
              setf upstreamlog
    *.upstream.log\c
              setf upstreamlog
    UPSTREAM-*.log\c
              setf upstreamlog
    upstreaminstall.log\c
              setf upstreaminstalllog
    upstreaminstall.*.log\c
              setf upstreaminstalllog
    *.upstreaminstall.log\c
              setf upstreaminstalllog
    usserver.log\c
              setf usserverlog
    usserver.*.log\c
              setf usserverlog
    *.usserver.log\c
              setf usserverlog
    usw2kagt.log\c
              setf usw2kagtlog
    usw2kagt.*.log\c
              setf usw2kagtlog
    *.usw2kagt.log\c
              setf usw2kagtlog
    ipf.conf  setf ipfilter
    ipf6.conf setf ipfilter
    ipf.rules setf ipfilter
    *.4gl     setf fgl
    *.4gh     setf fgl
    *.m4gl    setf fgl
    *.ini     setf dosini
    inittab   setf inittab
    *.iss     setf iss
    *.ijs     setf j
    *.jal     setf jal
    *.JAL     setf jal
    *.jpl     setf jam
    *.jpr     setf jam
    *.java    setf java
    *.jav     setf java
    *.jj      setf javacc
    *.jjt     setf javacc
    *.js      setf javascript
    *.javascript
              setf javascript
    *.es      setf javascript
    *.mjs     setf javascript
    *.jsx     setf javascriptreact
    *.jsp     setf jsp
    *.properties
              setf jproperties
    *.properties_??
              setf jproperties
    *.properties_??_??
              setf jproperties
    *.clp     setf jess
    *.jgr     setf jgraph
    *.jov     setf jovial
    *.j73     setf jovial
    *.jovial  setf jovial
    *.json    setf json
    *.jsonp   setf json
    *.webmanifest
              setf json
    *.kix     setf kix
    *.k       setf kwt
    *.kv      setf kivy
    *.ks      setf kscript
    Kconfig   setf kconfig
    Kconfig.debug
              setf kconfig
    *.ace     setf lace
    *.ACE     setf lace
    *.latte   setf latte
    *.lte     setf latte
    */etc/limits
              setf limits
    */etc/*limits.conf
              setf limits
    */etc/*limits.d/*.conf
              setf limits
    *.sig     setf lprolog
    *.ldif    setf ldif
    *.ld      setf ld
    *.less    setf less
    *.lex     setf lex
    *.l       setf lex
    *.lxx     setf lex
    *.l++     setf lex
    */etc/libao.conf
              setf libao
    */.libao  setf libao
    */etc/sensors.conf
              setf sensors
    */etc/sensors3.conf
              setf sensors
    lftp.conf setf lftp
    .lftprc   setf lftp
    *lftp/rc  setf lftp
    *.ll      setf lifelines
    lilo.conf setf lilo
    *.lsp     setf lisp
    *.lisp    setf lisp
    *.el      setf lisp
    *.jl      setf lisp
    *.L       setf lisp
    .emacs    setf lisp
    .sawfishrc
              setf lisp
    sbclrc    setf lisp
    .sbclrc   setf lisp
    *.liquid  setf liquid
    *.lite    setf lite
    *.lt      setf lite
    */LiteStep/*/*.rc
              setf litestep
    */etc/login.access
              setf loginaccess
    */etc/login.defs
              setf logindefs
    *.lgt     setf logtalk
    *.lot     setf lotos
    *.lotos   setf lotos
    *.lou     setf lout
    *.lout    setf lout
    *.lua     setf lua
    *.rockspec
              setf lua
    *.lsl     setf lsl
    *.lss     setf lss
    *.m4      if expand("<afile>") !~? 'html.m4$\|fvwm2rc' | setf m4 | endif
    *.mgp     setf mgp
    snd.\d\+  setf mail
    .letter   setf mail
    .letter.\d\+
              setf mail
    .followup setf mail
    .article  setf mail
    .article.\d\+
              setf mail
    pico.\d\+ setf mail
    mutt{ng,}-*-\w\+
              setf mail
    mutt[[:alnum:]_-]\\\{6\}
              setf mail
    neomutt-*-\w\+
              setf mail
    neomutt[[:alnum:]_-]\\\{6\}
              setf mail
    ae\d\+.txt
              setf mail
    /tmp/SLRN[0-9A-Z.]\+
              setf mail
    *.eml     setf mail
    */etc/mail/aliases
              setf mailaliases
    */etc/aliases
              setf mailaliases
    .mailcap  setf mailcap
    mailcap   setf mailcap
    *[mM]akefile
              setf make
    *.mk      setf make
    *.mak     setf make
    *.dsp     setf make
    *.ist     setf ist
    *.mst     setf ist
    *.page    setf mallard
    *.man     setf nroff
    */etc/man.conf
              setf manconf
    man.config
              setf manconf
    *.mv      setf maple
    *.mpl     setf maple
    *.mws     setf maple
    *.map     setf map
    *.markdown
              setf markdown
    *.mdown   setf markdown
    *.mkd     setf markdown
    *.mkdn    setf markdown
    *.mdwn    setf markdown
    *.md      setf markdown
    *.mason   setf mason
    *.mhtml   setf mason
    *.m       call dist#ft#FTm()
    *.nb      setf mma
    *.mel     setf mel
    hg-editor-*.txt
              setf hgcommit
    *.hgrc    setf cfg
    *hgrc     setf cfg
    */log/{auth,cron,daemon,debug,kern,lpr,mail,messages,news/news,syslog,user}{,.log,.err,.info,.warn,.crit,.notice}{,.[0-9]*,-[0-9]*}
              setf messages
    *.mf      setf mf
    *.mp      setf mp
    *.mgl     setf mgl
    *.mix     setf mix
    *.mixal   setf mix
    *.mms     call dist#ft#FTmms()
    *.mmp     setf mmp
    *.m2      setf modula2
    *.DEF     setf modula2
    *.mi      setf modula2
    *.[mi][3g]
              setf modula3
    *.isc     setf monk
    *.monk    setf monk
    *.ssc     setf monk
    *.tsc     setf monk
    *.moo     setf moo
    */etc/modules.conf
              setf modconf
    */etc/modules
              setf modconf
    */etc/conf.modules
              setf modconf
    mplayer.conf
              setf mplayerconf
    */.mplayer/config
              setf mplayerconf
    *.s19     setf srec
    *.s28     setf srec
    *.s37     setf srec
    *.mot     setf srec
    *.srec    setf srec
    mrxvtrc   setf mrxvtrc
    .mrxvtrc  setf mrxvtrc
    *.msql    setf msql
    *.mysql   setf mysql
    */etc/Muttrc.d/*
              call s:StarSetf('muttrc')
    *.rc      setf rc
    *.rch     setf rc
    *.mu      setf mupad
    *.mush    setf mush
    Mutt{ng,}rc
              setf muttrc
    *.n1ql    setf n1ql
    *.nql     setf n1ql
    */etc/nanorc
              setf nanorc
    *.nanorc  setf nanorc
    *.NS[ACGLMNPS]
              setf natural
    Neomuttrc setf neomuttrc
    .netrc    setf netrc
    *.ninja   setf ninja
    *.ncf     setf ncf
    *.me      if expand("<afile>") != "read.me" && expand("<afile>") != "click.me" |   setf nroff | endif
    *.tr      setf nroff
    *.nr      setf nroff
    *.roff    setf nroff
    *.tmac    setf nroff
    *.mom     setf nroff
    *.[1-9]   call dist#ft#FTnroff()
    *.mm      call dist#ft#FTmm()
    *.nqc     setf nqc
    *.nse     setf lua
    *.nsi     setf nsis
    *.nsh     setf nsis
    *.ml      setf ocaml
    *.mli     setf ocaml
    *.mll     setf ocaml
    *.mly     setf ocaml
    .ocamlinit
              setf ocaml
    *.occ     setf occam
    *.xom     setf omnimark
    *.xin     setf omnimark
    *.or      setf openroad
    *.[Oo][Pp][Ll]
              setf opl
    *.ora     setf ora
    pf.conf   setf pf
    */etc/pam.conf
              setf pamconf
    *.papp    setf papp
    *.pxml    setf papp
    *.pxsl    setf papp
    */etc/passwd
              setf passwd
    */etc/passwd-
              setf passwd
    */etc/passwd.edit
              setf passwd
    */etc/shadow
              setf passwd
    */etc/shadow-
              setf passwd
    */etc/shadow.edit
              setf passwd
    */var/backups/passwd.bak
              setf passwd
    */var/backups/shadow.bak
              setf passwd
    *.pas     setf pascal
    *.dpr     setf pascal
    *.pdf     setf pdf
    *.pcmk    setf pcmk
    *.pl      call dist#ft#FTpl()
    *.PL      call dist#ft#FTpl()
    *.plx     setf perl
    *.al      setf perl
    *.psgi    setf perl
    *.p6      setf perl6
    *.pm6     setf perl6
    *.pl6     setf perl6
    *.pm      if getline(1) =~ "XPM2" |   setf xpm2 | elseif getline(1) =~ "XPM" |   setf xpm | else |   setf perl | endif
    *.pod     setf pod
    *.pod6    setf pod6
    *.php     setf php
    *.php\d   setf php
    *.phtml   setf php
    *.ctp     setf php
    *.pike    setf pike
    *.pmod    setf pike
    *.cmod    setf cmod
    */etc/pinforc
              setf pinfo
    */.pinforc
              setf pinfo
    *.rcp     setf pilrc
    .pinerc   setf pine
    pinerc    setf pine
    .pinercex setf pine
    pinercex  setf pine
    Pipfile   setf config
    Pipfile.lock
              setf json
    *.pli     setf pli
    *.pl1     setf pli
    *.plm     setf plm
    *.p36     setf plm
    *.pac     setf plm
    *.pls     setf plsql
    *.plsql   setf plsql
    *.plp     setf plp
    *.po      setf po
    *.pot     setf po
    main.cf   setf pfmain
    *.ps      setf postscr
    *.pfa     setf postscr
    *.afm     setf postscr
    *.eps     setf postscr
    *.epsf    setf postscr
    *.epsi    setf postscr
    *.ai      setf postscr
    *.ppd     setf ppd
    *.pov     setf pov
    .povrayrc setf povini
    *.inc     call dist#ft#FTinc()
    *printcap let b:ptcap_type = "print" | setf ptcap
    *termcap  let b:ptcap_type = "term" | setf ptcap
    *.g       setf pccts
    *.it      setf ppwiz
    *.ih      setf ppwiz
    *.obj     setf obj
    *.pc      setf proc
    *.action  setf privoxy
    .procmail setf procmail
    .procmailrc
              setf procmail
    *.w       call dist#ft#FTprogress_cweb()
    *.i       call dist#ft#FTprogress_asm()
    *.p       call dist#ft#FTprogress_pascal()
    *.psf     setf psf
    INDEX     if getline(1) =~ '^\s*\(distribution\|installed_software\|root\|bundle\|product\)\s*$' |   setf psf | endif
    INFO      if getline(1) =~ '^\s*\(distribution\|installed_software\|root\|bundle\|product\)\s*$' |   setf psf | endif
    *.pdb     setf prolog
    *.pml     setf promela
    *.proto   setf proto
    */etc/protocols
              setf protocols
    *.pyx     setf pyrex
    *.pxd     setf pyrex
    *.py      setf python
    *.pyw     setf python
    .pythonstartup
              setf python
    .pythonrc setf python
    *.ptl     setf python
    *.pyi     setf python
    *.rad     setf radiance
    *.mat     setf radiance
    .ratpoisonrc
              setf ratpoison
    ratpoisonrc
              setf ratpoison
    *\,v      setf rcs
    .inputrc  setf readline
    inputrc   setf readline
    *.reg     if getline(1) =~? '^REGEDIT[0-9]*\s*$\|^Windows Registry Editor Version \d*\.\d*\s*$' | setf registry | endif
    *.rib     setf rib
    *.rex     setf rexx
    *.orx     setf rexx
    *.rxo     setf rexx
    *.rxj     setf rexx
    *.jrexx   setf rexx
    *.rexxj   setf rexx
    *.rexx    setf rexx
    *.testGroup
              setf rexx
    *.testUnit
              setf rexx
    *.s       setf r
    *.S       setf r
    *.rd      setf rhelp
    *.Rd      setf rhelp
    *.Rnw     setf rnoweb
    *.rnw     setf rnoweb
    *.Snw     setf rnoweb
    *.snw     setf rnoweb
    *.Rmd     setf rmd
    *.rmd     setf rmd
    *.Smd     setf rmd
    *.smd     setf rmd
    *.Rrst    setf rrst
    *.rrst    setf rrst
    *.Srst    setf rrst
    *.srst    setf rrst
    *.r       call dist#ft#FTr()
    *.R       call dist#ft#FTr()
    .reminders
              setf remind
    *.remind  setf remind
    *.rem     setf remind
    resolv.conf
              setf resolv
    *.rnc     setf rnc
    *.rng     setf rng
    *.rpl     setf rpl
    robots.txt
              setf robots
    *.x       setf rpcgen
    *.rst     setf rst
    *.rtf     setf rtf
    .irbrc    setf ruby
    irbrc     setf ruby
    *.rb      setf ruby
    *.rbw     setf ruby
    *.gemspec setf ruby
    *.rs      setf rust
    *.ru      setf ruby
    Gemfile   setf ruby
    *.builder setf ruby
    *.rxml    setf ruby
    *.rjs     setf ruby
    [rR]antfile
              setf ruby
    *.rant    setf ruby
    [rR]akefile
              setf ruby
    *.rake    setf ruby
    *.sl      setf slang
    smb.conf  setf samba
    *.sas     setf sas
    *.sass    setf sass
    *.sa      setf sather
    *.scala   setf scala
    *.sbt     setf sbt
    *.sci     setf scilab
    *.sce     setf scilab
    *.scss    setf scss
    *.sd      setf sd
    *.sdl     setf sdl
    *.pr      setf sdl
    *.sed     setf sed
    *.siv     setf sieve
    *.sieve   setf sieve
    sendmail.cf
              setf sm
    *.mc      call dist#ft#McSetf()
    */etc/services
              setf services
    */etc/slp.conf
              setf slpconf
    */etc/slp.reg
              setf slpreg
    */etc/slp.spi
              setf slpspi
    */etc/serial.conf
              setf setserial
    *.sgm     if getline(1).getline(2).getline(3).getline(4).getline(5) =~? 'linuxdoc' |   setf sgmllnx | elseif getline(1) =~ '<!DOCTYPE.*DocBook' || getline(2) =~ '<!DOCTYPE.*DocBook' |   let b:docbk_type = "sgml" |   let b:docbk_ver = 4 |   setf docbk | else |   setf sgml | endif
    *.sgml    if getline(1).getline(2).getline(3).getline(4).getline(5) =~? 'linuxdoc' |   setf sgmllnx | elseif getline(1) =~ '<!DOCTYPE.*DocBook' || getline(2) =~ '<!DOCTYPE.*DocBook' |   let b:docbk_type = "sgml" |   let b:docbk_ver = 4 |   setf docbk | else |   setf sgml | endif
    *.decl    if getline(1).getline(2).getline(3) =~? '^<!SGML' |    setf sgmldecl | endif
    *.dcl     if getline(1).getline(2).getline(3) =~? '^<!SGML' |    setf sgmldecl | endif
    *.dec     if getline(1).getline(2).getline(3) =~? '^<!SGML' |    setf sgmldecl | endif
    catalog   setf catalog
    .bashrc   call dist#ft#SetFileTypeSH("bash")
    bashrc    call dist#ft#SetFileTypeSH("bash")
    bash.bashrc
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]profile
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]logout
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]aliases
              call dist#ft#SetFileTypeSH("bash")
    bash-fc[-.]
              call dist#ft#SetFileTypeSH("bash")
    *.bash    call dist#ft#SetFileTypeSH("bash")
    */{,.}bash[_-]completion{,.d,.sh}{,/*}
              call dist#ft#SetFileTypeSH("bash")
    *.ebuild  call dist#ft#SetFileTypeSH("bash")
    *.eclass  call dist#ft#SetFileTypeSH("bash")
    PKGBUILD  call dist#ft#SetFileTypeSH("bash")
    .kshrc    call dist#ft#SetFileTypeSH("ksh")
    *.ksh     call dist#ft#SetFileTypeSH("ksh")
    */etc/profile
              call dist#ft#SetFileTypeSH(getline(1))
    .profile  call dist#ft#SetFileTypeSH(getline(1))
    *.sh      call dist#ft#SetFileTypeSH(getline(1))
    *.env     call dist#ft#SetFileTypeSH(getline(1))
    *.install if getline(1) =~ '<?php' |   setf php | else |   call dist#ft#SetFileTypeSH("bash") | endif
    .tcshrc   call dist#ft#SetFileTypeShell("tcsh")
    *.tcsh    call dist#ft#SetFileTypeShell("tcsh")
    tcsh.tcshrc
              call dist#ft#SetFileTypeShell("tcsh")
    tcsh.login
              call dist#ft#SetFileTypeShell("tcsh")
    .login    call dist#ft#CSH()
    .cshrc    call dist#ft#CSH()
    csh.cshrc call dist#ft#CSH()
    csh.login call dist#ft#CSH()
    csh.logout
              call dist#ft#CSH()
    *.csh     call dist#ft#CSH()
    .alias    call dist#ft#CSH()
    .zprofile setf zsh
    */etc/zprofile
              setf zsh
    .zfbfmarks
              setf zsh
    .zshrc    setf zsh
    .zshenv   setf zsh
    .zlogin   setf zsh
    .zlogout  setf zsh
    .zcompdump
              setf zsh
    *.zsh     setf zsh
    *.scm     setf scheme
    *.ss      setf scheme
    *.rkt     setf scheme
    .screenrc setf screen
    screenrc  setf screen
    *.sim     setf simula
    *.sin     setf sinda
    *.s85     setf sinda
    *.sst     setf sisu
    *.ssm     setf sisu
    *.ssi     setf sisu
    *.-sst    setf sisu
    *._sst    setf sisu
    *.sst.meta
              setf sisu
    *.-sst.meta
              setf sisu
    *._sst.meta
              setf sisu
    *.il      setf skill
    *.ils     setf skill
    *.cdf     setf skill
    .slrnrc   setf slrnrc
    *.score   setf slrnsc
    *.st      setf st
    *.cls     if getline(1) =~ '^%' |  setf tex | elseif getline(1)[0] == '#' && getline(1) =~ 'rexx' |  setf rexx | else |  setf st | endif
    *.tpl     setf smarty
    *.smil    if getline(1) =~ '<?\s*xml.*?>' |   setf xml | else |   setf smil | endif
    *.smi     if getline(1) =~ '\<smil\>' |   setf smil | else |   setf mib | endif
    *.smt     setf smith
    *.smith   setf smith
    *.sno     setf snobol4
    *.spt     setf snobol4
    *.mib     setf mib
    *.my      setf mib
    *.hog     setf hog
    snort.conf
              setf hog
    vision.conf
              setf hog
    *.rules   call dist#ft#FTRules()
    *.spec    setf spec
    *.speedup setf spup
    *.spdata  setf spup
    *.spd     setf spup
    *.ice     setf slice
    *.sp      setf spice
    *.spice   setf spice
    *.spy     setf spyce
    *.spi     setf spyce
    squid.conf
              setf squid
    *.tyb     setf sql
    *.typ     setf sql
    *.tyc     setf sql
    *.pkb     setf sql
    *.pks     setf sql
    *.sql     call dist#ft#SQL()
    *.sqlj    setf sqlj
    *.sqr     setf sqr
    *.sqi     setf sqr
    ssh_config
              setf sshconfig
    */.ssh/config
              setf sshconfig
    sshd_config
              setf sshdconfig
    *.ado     setf stata
    *.do      setf stata
    *.imata   setf stata
    *.mata    setf stata
    *.class   if getline(1) !~ "^\xca\xfe\xba\xbe" | setf stata | endif
    *.hlp     setf smcl
    *.ihlp    setf smcl
    *.smcl    setf smcl
    *.stp     setf stp
    *.sml     setf sml
    *.cm      setf voscm
    */etc/sysctl.conf
              setf sysctl
    */etc/sysctl.d/*.conf
              setf sysctl
    */systemd/*.{automount,mount,path,service,socket,swap,target,timer}
              setf systemd
    /etc/systemd/system/*.d/*.conf
              setf systemd
    /etc/systemd/system/*.d/.#*
              setf systemd
    *.sdc     setf sdc
    */etc/sudoers
              setf sudoers
    sudoers.tmp
              setf sudoers
    *.svg     setf svg
    *.t       if !dist#ft#FTnroff() && !dist#ft#FTperl() | setf tads | endif
    tags      setf tags
    *.tak     setf tak
    {pending,completed,undo}.data
              setf taskdata
    *.task    setf taskedit
    *.tcl     setf tcl
    *.tk      setf tcl
    *.itcl    setf tcl
    *.itk     setf tcl
    *.jacl    setf tcl
    *.tli     setf tli
    *.slt     setf tsalt
    *.ttl     setf teraterm
    *.ti      setf terminfo
    *.latex   setf tex
    *.sty     setf tex
    *.dtx     setf tex
    *.ltx     setf tex
    *.bbl     setf tex
    *.tex     call dist#ft#FTtex()
    *.mkii    setf context
    *.mkiv    setf context
    *.mkvi    setf context
    *.texinfo setf texinfo
    *.texi    setf texinfo
    *.txi     setf texinfo
    texmf.cnf setf texmf
    .tidyrc   setf tidy
    tidyrc    setf tidy
    .tfrc     setf tf
    tfrc      setf tf
    {.,}tmux*.conf
              setf tmux
    *.tpp     setf tpp
    *.treetop setf treetop
    trustees.conf
              setf trustees
    *.tssgm   setf tssgm
    *.tssop   setf tssop
    *.tsscl   setf tsscl
    *.tutor   setf tutor
    *.twig    setf twig
    *.ts      setf typescript
    *.tsx     setf typescriptreact
    *.uit     setf uil
    *.uil     setf uil
    */etc/udev/udev.conf
              setf udevconf
    */etc/udev/permissions.d/*.permissions
              setf udevperm
    */etc/udev/cdsymlinks.conf
              setf sh
    *.uc      setf uc
    */etc/updatedb.conf
              setf updatedb
    */usr/share/upstart/*.conf
              setf upstart
    */usr/share/upstart/*.override
              setf upstart
    */etc/init/*.conf
              setf upstart
    */etc/init/*.override
              setf upstart
    */.init/*.conf
              setf upstart
    */.init/*.override
              setf upstart
    */.config/upstart/*.conf
              setf upstart
    */.config/upstart/*.override
              setf upstart
    *.vr      setf vera
    *.vri     setf vera
    *.vrh     setf vera
    *.v       setf verilog
    *.va      setf verilogams
    *.vams    setf verilogams
    *.sv      setf systemverilog
    *.svh     setf systemverilog
    *.hdl     setf vhdl
    *.vhd     setf vhdl
    *.vhdl    setf vhdl
    *.vbe     setf vhdl
    *.vst     setf vhdl
    *.vim     setf vim
    *.vba     setf vim
    .exrc     setf vim
    _exrc     setf vim
    .viminfo  setf viminfo
    _viminfo  setf viminfo
    *.hw      if getline(1) =~ '<?php' |   setf php | else |   setf virata | endif
    *.module  if getline(1) =~ '<?php' |   setf php | else |   setf virata | endif
    *.pkg     if getline(1) =~ '<?php' |   setf php | else |   setf virata | endif
    *.frm     call dist#ft#FTVB("form")
    *.sba     setf vb
    vgrindefs setf vgrindefs
    *.wrl     setf vrml
    *.vroom   setf vroom
    *.vue     setf vue
    *.wast    setf wast
    *.wat     setf wast
    *.wm      setf webmacro
    .wgetrc   setf wget
    wgetrc    setf wget
    *.wml     setf wml
    *.wbt     setf winbatch
    *.wsml    setf wsml
    *.wpl     setf xml
    wvdial.conf
              setf wvdial
    .wvdialrc setf wvdial
    .cvsrc    setf cvsrc
    cvs\d\+   setf cvs
    *.web     if getline(1)[0].getline(2)[0].getline(3)[0].getline(4)[0].getline(5)[0] =~ "%" |   setf web | else |   setf winbatch | endif
    *.ws[fc]  setf wsh
    *.xhtml   setf xhtml
    *.xht     setf xhtml
    XF86Config
              if getline(1) =~ '\<XConfigurator\>' |   let b:xf86conf_xfree86_version = 3 | endif | setf xf86conf
    */xorg.conf.d/*.conf
              let b:xf86conf_xfree86_version = 4 | setf xf86conf
    xorg.conf let b:xf86conf_xfree86_version = 4 | setf xf86conf
    xorg.conf-4
              let b:xf86conf_xfree86_version = 4 | setf xf86conf
    */etc/xinetd.conf
              setf xinetd
    *.xs      setf xs
    .Xdefaults
              setf xdefaults
    .Xpdefaults
              setf xdefaults
    .Xresources
              setf xdefaults
    xdm-config
              setf xdefaults
    *.ad      setf xdefaults
    *.msc     setf xmath
    *.msf     setf xmath
    *.ms      if !dist#ft#FTnroff() | setf xmath | endif
    *.xml     call dist#ft#FTxml()
    *.xmi     setf xml
    *.csproj  setf xml
    *.csproj.user
              setf xml
    *.ui      setf xml
    *.tpm     setf xml
    */etc/xdg/menus/*.menu
              setf xml
    fglrxrc   setf xml
    *.wsdl    setf xml
    *.xlf     setf xml
    *.xliff   setf xml
    *.xul     setf xml
    *Xmodmap  setf xmodmap
    *.xq      setf xquery
    *.xql     setf xquery
    *.xqm     setf xquery
    *.xquery  setf xquery
    *.xqy     setf xquery
    *.xsd     setf xsd
    *.xsl     setf xslt
    *.xslt    setf xslt
    *.yy      setf yacc
    *.yxx     setf yacc
    *.y++     setf yacc
    *.y       call dist#ft#FTy()
    *.yaml    setf yaml
    *.yml     setf yaml
    *.raml    setf raml
    */etc/yum.conf
              setf dosini
    *.zu      setf zimbu
    *.zut     setf zimbutempl
    *.dtml    call dist#ft#FThtml()
    *.pt      call dist#ft#FThtml()
    *.cpt     call dist#ft#FThtml()
    *.zsql    call dist#ft#SQL()
    *.z8a     setf z8a
    *         if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat | runtime! scripts.vim | endif
    */etc/proftpd/*.conf*
              call s:StarSetf('apachestyle')
    */etc/proftpd/conf.*/*
              call s:StarSetf('apachestyle')
    proftpd.conf*
              call s:StarSetf('apachestyle')
    access.conf*
              call s:StarSetf('apache')
    apache.conf*
              call s:StarSetf('apache')
    apache2.conf*
              call s:StarSetf('apache')
    httpd.conf*
              call s:StarSetf('apache')
    srm.conf* call s:StarSetf('apache')
    */etc/apache2/*.conf*
              call s:StarSetf('apache')
    */etc/apache2/conf.*/*
              call s:StarSetf('apache')
    */etc/apache2/mods-*/*
              call s:StarSetf('apache')
    */etc/apache2/sites-*/*
              call s:StarSetf('apache')
    */etc/httpd/conf.d/*.conf*
              call s:StarSetf('apache')
    *asterisk/*.conf*
              call s:StarSetf('asterisk')
    *asterisk*/*voicemail.conf*
              call s:StarSetf('asteriskvm')
    bzr_log.* setf bzr
    */named/db.*
              call s:StarSetf('bindzone')
    */bind/db.*
              call s:StarSetf('bindzone')
    */.calendar/*
              call s:StarSetf('calendar')
    */share/calendar/*/calendar.*
              call s:StarSetf('calendar')
    */share/calendar/calendar.*
              call s:StarSetf('calendar')
    [cC]hange[lL]og*
              if getline(1) =~ '; urgency='|  call s:StarSetf('debchangelog')|else|  call s:StarSetf('changelog')|endif
    crontab   call s:StarSetf('crontab')
    crontab.* call s:StarSetf('crontab')
    */etc/cron.d/*
              call s:StarSetf('crontab')
    */etc/dnsmasq.d/*
              call s:StarSetf('dnsmasq')
    drac.*    call s:StarSetf('dracula')
    */.fvwm/* call s:StarSetf('fvwm')
    *fvwmrc*  let b:fvwm_version = 1 | call s:StarSetf('fvwm')
    *fvwm95*.hook
              let b:fvwm_version = 1 | call s:StarSetf('fvwm')
    *fvwm2rc* if expand("<afile>:e") == "m4"|  call s:StarSetf('fvwm2m4')|else|  let b:fvwm_version = 2 | call s:StarSetf('fvwm')|endif
    */tmp/lltmp*
              call s:StarSetf('gedcom')
    */.gitconfig.d/*
              call s:StarSetf('gitconfig')
    /etc/gitconfig.d/*
              call s:StarSetf('gitconfig')
    */gitolite-admin/conf/*
              call s:StarSetf('gitolite')
    .gtkrc*   call s:StarSetf('gtkrc')
    gtkrc*    call s:StarSetf('gtkrc')
    Prl*.*    call s:StarSetf('jam')
    JAM*.*    call s:StarSetf('jam')
    *jarg*    if getline(1).getline(2).getline(3).getline(4).getline(5) =~? 'THIS IS THE JARGON FILE'|  call s:StarSetf('jargon')|endif
    *.properties_??_??_*
              call s:StarSetf('jproperties')
    Kconfig.* call s:StarSetf('kconfig')
    lilo.conf*
              call s:StarSetf('lilo')
    */etc/logcheck/*.d*/*
              call s:StarSetf('logcheck')
    [mM]akefile*
              call s:StarSetf('make')
    [rR]akefile*
              call s:StarSetf('ruby')
    {neo,}mutt[[:alnum:]._-]\\\{6\}
              setf mail
    reportbug-*
              call s:StarSetf('mail')
    */etc/modutils/*
              if executable(expand("<afile>")) != 1|  call s:StarSetf('modconf')|endif
    */etc/modprobe.*
              call s:StarSetf('modconf')
    .mutt{ng,}rc*
              call s:StarSetf('muttrc')
    */.mutt{ng,}/mutt{ng,}rc*
              call s:StarSetf('muttrc')
    mutt{ng,}rc*
              call s:StarSetf('muttrc')
    Mutt{ng,}rc*
              call s:StarSetf('muttrc')
    .neomuttrc*
              call s:StarSetf('neomuttrc')
    */.neomutt/neomuttrc*
              call s:StarSetf('neomuttrc')
    neomuttrc*
              call s:StarSetf('neomuttrc')
    Neomuttrc*
              call s:StarSetf('neomuttrc')
    tmac.*    call s:StarSetf('nroff')
    /etc/hostname.*
              call s:StarSetf('config')
    */etc/pam.d/*
              call s:StarSetf('pamconf')
    *printcap*
              if !did_filetype()|  let b:ptcap_type = "print" | call s:StarSetf('ptcap')|endif
    *termcap* if !did_filetype()|  let b:ptcap_type = "term" | call s:StarSetf('ptcap')|endif
    *.rdf     call dist#ft#Redif()
    .reminders*
              call s:StarSetf('remind')
    sgml.catalog*
              call s:StarSetf('catalog')
    .bashrc*  call dist#ft#SetFileTypeSH("bash")
    .bash[_-]profile*
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]logout*
              call dist#ft#SetFileTypeSH("bash")
    .bash[_-]aliases*
              call dist#ft#SetFileTypeSH("bash")
    bash-fc[-.]*
              call dist#ft#SetFileTypeSH("bash")
    PKGBUILD* call dist#ft#SetFileTypeSH("bash")
    .kshrc*   call dist#ft#SetFileTypeSH("ksh")
    .profile* call dist#ft#SetFileTypeSH(getline(1))
    .tcshrc*  call dist#ft#SetFileTypeShell("tcsh")
    .login*   call dist#ft#CSH()
    .cshrc*   call dist#ft#CSH()
    *.vhdl_[0-9]*
              call s:StarSetf('vhdl')
    *vimrc*   call s:StarSetf('vim')
    svn-commit*.tmp
              setf svn
    Xresources*
              call s:StarSetf('xdefaults')
    */app-defaults/*
              call s:StarSetf('xdefaults')
    */Xresources/*
              call s:StarSetf('xdefaults')
    XF86Config-4*
              let b:xf86conf_xfree86_version = 4 | call s:StarSetf('xf86conf')
    XF86Config*
              if getline(1) =~ '\<XConfigurator\>'|  let b:xf86conf_xfree86_version = 3|endif|call s:StarSetf('xf86conf')
    *xmodmap* call s:StarSetf('xmodmap')
    */etc/xinetd.d/*
              call s:StarSetf('xinetd')
    */etc/yum.repos.d/*
              call s:StarSetf('dosini')
    .zsh*     call s:StarSetf('zsh')
    .zlog*    call s:StarSetf('zsh')
    .zcompdump*
              call s:StarSetf('zsh')
    zsh*      call s:StarSetf('zsh')
    zlog*     call s:StarSetf('zsh')
    *.text    setf text
    README    setf text
    *.txt     if getline('$') !~ 'vim:.*ft=help'|   setf text| endif
    *.fugitiveblame
              setfiletype fugitiveblame
agsResultsWindowEdit  BufReadPost
    *.agse    set filetype=agse
agsResultsWindowView  BufReadPost
    *.agsv    set filetype=agsv
BufReadPost
    *.ag      set filetype=ag
    *.snippets
              setf snippets
    *.snip    set filetype=neosnippet
    *.snippets
              set filetype=neosnippet
    {.,}tmux*.conf
              set ft=tmux | compiler tmux
    *.ino     set filetype=spark
filetypedetect  BufReadPost
    *.vb      setlocal filetype=vbnet
    *.jl      set filetype=julia
    *.coffee  set filetype=coffee
    *Cakefile set filetype=coffee
    *.coffeekup
              set filetype=coffee
    *.ck      set filetype=coffee
    *._coffee set filetype=coffee
    *.litcoffee
              set filetype=litcoffee
    *.coffee.md
              set filetype=litcoffee
    *.ex      set filetype=elixir
    *.exs     set filetype=elixir
    *.eex     set filetype=eelixir
    *.leex    set filetype=eelixir
    mix.lock  set filetype=elixir
    *.fish    setfiletype fish
    fish_funced_*_*.fish
              call search('^$')
    /home/red/.config/fish/fish_{read_,}history
              setfiletype yaml
    /home/red/.config/fish/fishd.*
              setlocal readonly
    *.git/{,modules/**/,worktrees/*/}{COMMIT_EDIT,TAG_EDIT,MERGE_,}MSG
              set ft=gitcommit
    *.git/config
              set ft=gitconfig
    .gitconfig
              set ft=gitconfig
    gitconfig set ft=gitconfig
    .gitmodules
              set ft=gitconfig
    */.config/git/config
              set ft=gitconfig
    *.git/modules/**/config
              set ft=gitconfig
    git-rebase-todo
              set ft=gitrebase
    .gitsendemail.*
              set ft=gitsendemail
    *.pu      setfiletype plantuml | set filetype=plantuml
    *.uml     setfiletype plantuml | set filetype=plantuml
    *.plantuml
              setfiletype plantuml | set filetype=plantuml
    *.puml    setfiletype plantuml | set filetype=plantuml
    *.scala   set filetype=scala
    *.sc      set filetype=scala
    *.sbt     setfiletype sbt.scala
    *.swift   set filetype=swift
    *.jinja2  set ft=jinja
    *.j2      set ft=jinja
    *.jinja   set ft=jinja
    *.nunjucks
              set ft=jinja
    *.nunjs   set ft=jinja
    *.njk     set ft=jinja
    *.asl     set filetype=asl
    *.dsl     set filetype=asl
ansible_vim_ftyaml_ansible  BufReadPost
    *         if s:isAnsible() | set ft=yaml.ansible | en
ansible_vim_ftjinja2  BufReadPost
    *.j2      call s:setupTemplate()
ansible_vim_fthosts  BufReadPost
    hosts     set ft=ansible_hosts
filetypedetect  BufReadPost
    *.apib    set filetype=apiblueprint
    *.scpt    setf applescript
    *.applescript
              setf applescript
    *.ino     set filetype=arduino
    *.pde     set filetype=arduino
    *.asciidoc
              set ft=asciidoc
    *.adoc    set ft=asciidoc
    *.blade.php
              set filetype=blade
    Caddyfile set ft=caddyfile
    *.carp    set filetype=carp
CJSX  BufReadPost
    *.csx     set filetype=coffee
    *.cjsx    set filetype=coffee
filetypedetect  BufReadPost
    *.clj     setlocal filetype=clojure
    *.cljs    setlocal filetype=clojure
    *.edn     setlocal filetype=clojure
    *.cljx    setlocal filetype=clojure
    *.cljc    setlocal filetype=clojure
    {build,profile}.boot
              setlocal filetype=clojure
    *.cql     set filetype=cql
    *.cry     set filetype=cryptol
    *.cyl     set filetype=cryptol
    *.lcry    set filetype=cryptol
    *.lcyl    set filetype=cryptol
    *.cr      setlocal filetype=crystal
    Projectfile
              setlocal filetype=crystal
    *.ecr     setlocal filetype=eruby
    *.csv     set filetype=csv
    *.dat     set filetype=csv
    *.tsv     set filetype=csv
    *.tab     set filetype=csv
    *.feature set filetype=cucumber
    *.story   set filetype=cucumber
    *.cue     set filetype=cuesheet
    *.dart    set filetype=dart
    *         call s:DetectShebang()
dhall  BufReadPost
    *.dhall   set filetype=dhall
filetypedetect  BufReadPost
    *.d       setf d
    *.lst     set filetype=dcov
    *.dd      set filetype=dd
    *.ddoc    set filetype=ddoc
    *.sdl     set filetype=dsdl
    [Dd]ockerfile
              set ft=Dockerfile
    Dockerfile*
              set ft=Dockerfile
    [Dd]ockerfile.vim
              set ft=vim
    *.dock    set ft=Dockerfile
    *.[Dd]ockerfile
              set ft=Dockerfile
    docker-compose*.{yaml,yml}*
              set ft=yaml.docker-compose
    *.elm     set filetype=elm
    *.em      set filetype=ember-script
    *.emblem  set filetype=emblem
    *.erl     set ft=erlang
    *.hrl     set ft=erlang
    rebar.config
              set ft=erlang
    *.app     set ft=erlang
    *.app.src set ft=erlang
    *.yaws    set ft=erlang
    *.xrl     set ft=erlang
    *.escript set ft=erlang
    ferm.conf setf ferm
    *.ferm    setf ferm
    *.fbs     setfiletype fbs
    *.fs      set filetype=fsharp
    *.fsi     set filetype=fsharp
    *.fsx     set filetype=fsharp
    *.vert    set filetype=glsl
    *.tesc    set filetype=glsl
    *.tese    set filetype=glsl
    *.glsl    set filetype=glsl
    *.geom    set filetype=glsl
    *.frag    set filetype=glsl
    *.comp    set filetype=glsl
    *.go      setfiletype go
    *.s       setfiletype asm
    *.tmpl    setfiletype gohtmltmpl
    go.mod    call s:gomod()
    *.graphql setfiletype graphql
    *.graphqls
              setfiletype graphql
    *.gql     setfiletype graphql
    *.gradle  set filetype=groovy
    *.sass    setf sass
    *.scss    setf scss
    *.mustache
              set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hogan   set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hulk    set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hjs     set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.handlebars
              set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hdbs    set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hbs     set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hb      set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    haproxy*.c*
              set ft=haproxy
    *.hsc     set filetype=haskell
    *.bpk     set filetype=haskell
    *.hsig    set filetype=haskell
    *.hx      setf haxe
    *.hcl     set filetype=hcl
    *.nomad   set filetype=hcl
    Appfile   set filetype=hcl
    */templates/*.yaml
              set ft=helm
    */templates/*.tpl
              set ft=helm
    *.hql     set filetype=hive
    *.ql      set filetype=hive
    *.q       set filetype=hive
i3config#ft_detect  BufReadPost
    .i3.config
              set filetype=i3config
    i3.config set filetype=i3config
    *.i3config
              set filetype=i3config
    *.i3.config
              set filetype=i3config
filetypedetect  BufReadPost
    *.idr     setf idris
    idris-response
              setf idris
    *.lidr    setf lidris
    /home/red/.config/ion/initrc
              set filetype=ion
    *.ion     set filetype=ion
    *         if getline(1) =~ '^#!.*\Wion\s*$' |   set ft=ion | endif
    *Spec.js  set filetype=jasmine.javascript syntax=jasmine
    *_spec.js set filetype=jasmine.javascript syntax=jasmine
    *.flow    setfiletype flow
    *.{js,mjs,jsm,es,es6}
              setfiletype javascript
    Jakefile  setfiletype javascript
    *         call s:SelectJavascript()
JenkinsAUGroup  BufReadPost
    *Jenkins* set ft=Jenkinsfile
    *jenkins* set ft=Jenkinsfile
filetypedetect  BufReadPost
    *.json5   setfiletype json5
    *.json    setlocal filetype=json
    *.jsonl   setlocal filetype=json
    *.jsonp   setlocal filetype=json
    *.geojson setlocal filetype=json
    *.template
              setlocal filetype=json
    *.ejs     set filetype=jst
    *.jst     set filetype=jst
    *.djs     set filetype=jst
    *.hamljs  set filetype=jst
    *.ect     set filetype=jst
    *.kt      setfiletype kotlin
    *.kts     setfiletype kotlin
    *.less    setf less
    *.ly      set ft=lilypond
    *.ily     set ft=lilypond
    *.ls      set filetype=ls
    *Slakefile
              set filetype=ls
    lit.*cfg  set filetype=python
    *.ll      set filetype=llvm
    *.td      set filetype=tablegen
    *.log     set filetype=log
    *_log     set filetype=log
    *.mako    set filetype=mako
    *.{md,mdown,mkd,mkdn,markdown,mdwn}
              set filetype=markdown
    *.wl      set filetype=mma
    *.wls     set filetype=mma
    *.mdx     set filetype=markdown.mdx
    meson.build
              set filetype=meson
    meson_options.txt
              set filetype=meson
    *.moon    set filetype=moon
    *         call s:DetectMoon()
    *.nginx   set ft=nginx
    nginx*.conf
              set ft=nginx
    *nginx.conf
              set ft=nginx
    */etc/nginx/*
              set ft=nginx
    */usr/local/nginx/conf/*
              set ft=nginx
    */nginx/*.conf
              set ft=nginx
    *.nim     set filetype=nim
    *.nims    set filetype=nim
    *.nimble  set filetype=nim
    *.nix     set filetype=nix
    jbuild    set ft=dune
    dune      set ft=dune
    dune-project
              set ft=dune
    _oasis    set filetype=oasis
    *.ml      set ft=ocaml
    *.mli     set ft=ocaml
    *.mll     set ft=ocaml
    *.mly     set ft=ocaml
    .ocamlinit
              set ft=ocaml
    *.mlt     set ft=ocaml
    *.mlp     set ft=ocaml
    *.mlip    set ft=ocaml
    *.mli.cppo
              set ft=ocaml
    *.ml.cppo set ft=ocaml
    _tags     set filetype=ocamlbuild_tags
    OMakefile set ft=omake
    OMakeroot set ft=omake
    *.om      set ft=omake
    OMakeroot.in
              set ft=omake
    opam      set filetype=opam
    *.opam    set filetype=opam
    *.opam.template
              set filetype=opam
    *.sexp    set ft=sexplib
    *.cl      set filetype=opencl
    *.html    if getline(1) =~ '^\(%\|<[%&].*>\)' |     set filetype=mason | endif
    *.pl      call s:DetectPerl6()
    *.pm      call s:DetectPerl6()
    *.t       call s:DetectPerl6()
    *.nqp     setf perl6
    *.pgsql   let b:sql_type_override='pgsql' | setfiletype sql
    *.pony    setf pony
    *.ps1     set ft=ps1
    *.psd1    set ft=ps1
    *.psm1    set ft=ps1
    *.pssc    set ft=ps1
    *.ps1xml  set ft=ps1xml
    *.cdxml   set ft=xml
    *.psc1    set ft=xml
    *.proto   setfiletype proto
    *.pug     set filetype=pug
    *.jade    set filetype=pug
    *.pp      setfiletype puppet
    *.epp     setfiletype embeddedpuppet
    Puppetfile
              setfiletype ruby
    *.purs    setf purescript
    *.pri     set filetype=qmake
    *.pro     set filetype=qmake
    *.qml     setfiletype qml
    *.rkt     call RacketDetectHashLang()
    *.rktl    call RacketDetectHashLang()
    *.raml    set ft=raml
    *.re      set filetype=reason
    *.rei     set filetype=reason
    .merlin   set ft=merlin
    *.erb     call s:setf('eruby')
    *.rhtml   call s:setf('eruby')
    .irbrc    call s:setf('ruby')
    irbrc     call s:setf('ruby')
    *.rb      call s:setf('ruby')
    *.rbw     call s:setf('ruby')
    *.gemspec call s:setf('ruby')
    *.ru      call s:setf('ruby')
    Gemfile   call s:setf('ruby')
    *.builder call s:setf('ruby')
    *.rxml    call s:setf('ruby')
    *.rjs     call s:setf('ruby')
    *.ruby    call s:setf('ruby')
    [rR]akefile
              call s:setf('ruby')
    *.rake    call s:setf('ruby')
    [rR]akefile*
              call s:StarSetf('ruby')
    [rR]antfile
              call s:setf('ruby')
    *.rant    call s:setf('ruby')
    Appraisals
              call s:setf('ruby')
    .autotest call s:setf('ruby')
    *.axlsx   call s:setf('ruby')
    [Bb]uildfile
              call s:setf('ruby')
    Capfile   call s:setf('ruby')
    *.cap     call s:setf('ruby')
    Cheffile  call s:setf('ruby')
    Berksfile call s:setf('ruby')
    Podfile   call s:setf('ruby')
    *.podspec call s:setf('ruby')
    Guardfile call s:setf('ruby')
    .Guardfile
              call s:setf('ruby')
    *.jbuilder
              call s:setf('ruby')
    KitchenSink
              call s:setf('ruby')
    *.opal    call s:setf('ruby')
    .pryrc    call s:setf('ruby')
    Puppetfile
              call s:setf('ruby')
    *.rabl    call s:setf('ruby')
    [rR]outefile
              call s:setf('ruby')
    .simplecov
              call s:setf('ruby')
    [tT]horfile
              call s:setf('ruby')
    *.thor    call s:setf('ruby')
    [vV]agrantfile
              call s:setf('ruby')
    *.rs      call s:set_rust_filetype()
    Cargo.toml
              setf FALLBACK cfg
    *.sbt     set filetype=sbt.scala
    *.scss    setfiletype scss
    *.slim    setfiletype slim
    *.slime   set filetype=slime
    *.smt     set filetype=smt2
    *.smt2    set filetype=smt2
    *.sol     setf solidity
    *.styl    set filetype=stylus
    *.stylus  set filetype=stylus
    *.svelte  setfiletype svelte
    sxhkdrc   set ft=sxhkdrc
    *.sxhkdrc set ft=sxhkdrc
    *.automount
              set filetype=systemd
    *.mount   set filetype=systemd
    *.path    set filetype=systemd
    *.service set filetype=systemd
    *.socket  set filetype=systemd
    *.swap    set filetype=systemd
    *.target  set filetype=systemd
    *.timer   set filetype=systemd
    *.tf      set filetype=terraform
    *.tfvars  set filetype=terraform
    *.tfstate set filetype=json
    *.tfstate.backup
              set filetype=json
    *.textile set filetype=textile
    *.thrift  setlocal filetype=thrift
    {.,}tmux.conf
              setfiletype tmux
    *.toml    setf toml
    Gopkg.lock
              setf toml
    Cargo.lock
              setf toml
    */.cargo/config
              setf toml
    */.cargo/credentials
              setf toml
    Pipfile   setf toml
    *.p       set filetype=tptp
              set syntax=tptp
    *.tptp    set filetype=tptp
              set syntax=tptp
    *.ax      set filetype=tptp
              set syntax=tptp
    *.twig    set filetype=html.twig
    *.html.twig
              set filetype=html.twig
    *.xml.twig
              set filetype=xml.twig
    *.ts      setlocal filetype=typescript
    *.tsx     setlocal filetype=typescriptreact
    *.v       set filetype=vlang
              set syntax=vlang
    *.vala    setfiletype vala
    *.vapi    setfiletype vala
    *.valadoc setfiletype vala
    *.vcl     set filetype=vcl
    vifm.rename*
              :set filetype=vifm-rename
    vifmrc    :set filetype=vifm
    *vifm/colors/*
              :set filetype=vifm
    *.vifm    :set filetype=vifm
    *.vm      set ft=velocity syntax=velocity
    *.vue     setf vue
    *.wpy     setf vue
    *.xdc     setfiletype xdc
    *.zep     set filetype=zephir
    *.zig     set filetype=zig
BufReadPost
    *.mustache
              set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hogan   set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hulk    set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.hjs     set filetype=html.mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim indent/handlebars.vim
    *.handlebars
              set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hdbs    set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hbs     set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.hb      set filetype=html.handlebars syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
    *.json    setlocal filetype=json
    *.jsonl   setlocal filetype=json
    *.jsonp   setlocal filetype=json
    *.geojson setlocal filetype=json
    *.template
              setlocal filetype=json
    .tern-project
              setf json
    .tern-config
              setf json
    *.toml    setf toml
    Gopkg.lock
              setf toml
    Cargo.lock
              setf toml
    */.cargo/config
              setf toml
    */.cargo/credentials
              setf toml
    Pipfile   setf toml
filetypedetect  BufReadPost
    *         if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat    && (getline(1) =~ '^#' || getline(2) =~ '^#' || getline(3) =~ '^#'^I|| getline(4) =~ '^#' || getline(5) =~ '^#') |   setf FALLBACK conf | endif
BufReadPost
    *         if ShouldMatchWhitespace() | match ExtraWhitespace /\\\@<![\u3000[:space:]]\+$/ | else | match ExtraWhitespace /^^/ | endif
fugitive  BufReadPost
    *         call FugitiveDetect(expand('<amatch>:p'))
BufReadPost
    *.html    inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    *.xhtml   inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    *.phtml   inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    *.html    inoremap <silent> <buffer> <leader>> >
    *.xhtml   inoremap <silent> <buffer> <leader>> >
    *.phtml   inoremap <silent> <buffer> <leader>> >
    *.xhtml   call <SID>Declare('b:closetag_use_xhtml', 1)
    .vim-template:*
              let b:vim_template_subtype = &filetype | set ft=vim-template
    /home/red/.config/nvim/plugged/vim-template/templates/=template=*
              let b:vim_template_subtype = &filetype | set ft=vim-template
SnipMateDetect  BufReadPost
    *.snippet setlocal filetype=snippets
    *.snippets
              setlocal filetype=snippets
gutentags_detect  BufReadPost
    *         call gutentags#setup_gutentags()
BufReadPost
    *         call TagHighlight#ReadTypes#ReadTypesByExtension()
jedi_pyi  BufReadPost
    *.pyi     set filetype=python
projectionist  BufReadPost
    *         if empty(&filetype) |   call ProjectionistDetect(expand('<afile>:p')) | endif
BufReadPost
    *         call s:MRU_AddFile(expand('<abuf>'))
gzip  BufReadPost
    *.gz      call gzip#read("gzip -dn")
    *.bz2     call gzip#read("bzip2 -d")
    *.Z       call gzip#read("uncompress")
    *.lzma    call gzip#read("lzma -d")
    *.xz      call gzip#read("xz -d")
    *.lz      call gzip#read("lzip -d")
    *.zst     call gzip#read("zstd -d --rm")
LH_PROJECT  BufReadPost
    *         call lh#project#_post_local_vimrc()
fugitive_temp  BufReadPost
    *         exe s:TempReadPost(expand('<amatch>:p'))
startify  BufReadPost
    *         call s:update_oldfiles(expand('<afile>:p'))
lsp  BufReadPost
    *         call s:on_text_document_did_open()
deoplete  BufReadPost
    *         if !&l:previewwindow | call deoplete#send_event('BufReadPost') | endif
neosnippet  BufReadPost
    *         execute 'syntax match neosnippetExpandSnippets'  "'".neosnippet#get_placeholder_marker_pattern(). '\|' .neosnippet#get_sync_placeholder_marker_pattern().'\|' .neosnippet#get_mirror_placeholder_marker_pattern()."'" 'containedin=ALL oneline'
              syntax region neosnippetConcealExpandSnippets  matchgroup=neosnippetExpandSnippets  start='<`0\|<`\|<{\d\+:\=\%(#:\|TARGET:\?\)\?\|%\w\+(<|' end='\(:\w\+\|:#:\w\+\)\?`>\|}>\||>)\?' containedin=ALL  cchar=| concealends oneline
better_whitespace  BufReadPost
    *         call <SID>HighlightEOLWhitespace()
filetypedetect  BufReadPre
    *.*.mako  execute "do BufRead filetypedetect " . expand("<afile>:r") | let b:mako_outer_lang = &filetype
gzip  BufReadPre
    *.gz      setlocal bin
    *.bz2     setlocal bin
    *.Z       setlocal bin
    *.lzma    setlocal bin
    *.xz      setlocal bin
    *.lz      setlocal bin
    *.zst     setlocal bin
fugitive_temp  BufReadPre
    *         exe s:TempReadPre( expand('<amatch>:p'))
bm_auto_save  BufReadPre
    *         call s:auto_save()
lightline  BufUnload
    *         call lightline#update_once()
wintabs_override_plugin_changes  BufUnload
    *         call s:override_plugin_changes()
LH_PROJECT  BufUnload
    *         call lh#project#_RemoveBufferFromProjectConfig(expand('<abuf>'))
agsResultsWindowView  BufWinEnter
    *.agsv    call ags#navigateResultsOnLine()
BufWinEnter
    *         call <SID>SetupAutoCommands()
lastplace_plugin  BufWinEnter
    *         call s:lastplace()
wintabs_switching_buffer  BufWinEnter
    *         call wintabs#switching_buffer()
wintabs_override_plugin_changes  BufWinEnter
    *         call s:override_plugin_changes()
fzf_buffers  BufWinEnter
    *         let g:fzf#vim#buffers[bufnr('')] = reltimefloat(reltime())
ClapBuffers  BufWinEnter
    *         let g:__clap_buffers[bufnr('')] = reltimefloat(reltime())
LH_PROJECT  BufWinEnter
    *         call lh#project#_CheckUpdateCWD()
fugitive_diff  BufWinEnter
    *         if s:can_diffoff(+expand('<abuf>')) && s:diff_window_count() == 1 |   call s:diffoff() | endif
lsp  BufWinEnter
    *         call lsp#ui#vim#references#clean_references()
bm_auto_save  BufWinEnter
    *         call s:add_missing_signs(expand('<afile>:p'))
agsResultsWindowView  BufWinLeave
    *.agsv    call ags#cleanYankedText()
fugitive_diff  BufWinLeave
    *         if s:can_diffoff(+expand('<abuf>')) && s:diff_window_count() == 2 |   call s:diffoff_all(s:Dir(+expand('<abuf>'))) | endif
fugitive_blame  BufWinLeave
    *         execute getwinvar(+bufwinnr(+expand('<abuf>')), 'fugitive_leave')
lsp  BufWinLeave
    *         call s:on_text_document_did_close()
              call lsp#ui#vim#references#clean_references()
better_whitespace  BufWinLeave
    *         call <SID>ClearHighlighting()
BufWipeout
    *         call SemshiBufWipeout(+expand('<abuf>'))
lsp  BufWipeout
    *         call s:on_buf_wipeout(bufnr('<afile>'))
agsResultsWindowEdit  BufWriteCmd
    *.agse    call ags#edit#write()
fugitive  BufWriteCmd
    fugitive://*//[0-3]/*
              exe fugitive#BufWriteCmd()
ShaDaCommands  BufWriteCmd
    *.shada   :if !empty(v:cmdarg)|throw '++opt not supported'|endif |if writefile(shada#get_binstrings(getline(1, '$')),expand('<afile>'), 'b') == 0 |  let &l:modified = (expand('<afile>') is# bufname(+expand('<abuf>'))? 0: stridx(&cpoptions, '+') != -1) |endif
    *.shada.tmp.[a-z]
              :if !empty(v:cmdarg)|throw '++opt not supported'|endif |if writefile(shada#get_binstrings(getline(1, '$')),expand('<afile>'), 'b') == 0 |  let &l:modified = (expand('<afile>') is# bufname(+expand('<abuf>'))? 0: stridx(&cpoptions, '+') != -1) |endif
tar  BufWriteCmd
    tarfile::*
              call tar#Write(expand("<amatch>"))
    tarfile::*/*
              call tar#Write(expand("<amatch>"))
zip  BufWriteCmd
    zipfile:* call zip#Write(expand("<amatch>"))
    zipfile:*/*
              call zip#Write(expand("<amatch>"))
BufWritePost
    *         call lightline#update()
ScriptExecutePermission  BufWritePost
    *.sh      :call ScriptExecute()
SourceVimrc  BufWritePost
    .vimrc    source $MYVIMRC
eunuch  BufWritePost
    *         unlet! b:eunuch_new_file
              if exists('b:chmod_post') |   call s:Chmod(0, b:chmod_post, '<afile>') |   edit |   unlet b:chmod_post | endif
wintabs_override_plugin_changes  BufWritePost
    *         call s:override_plugin_changes()
pb_fzf_mru  BufWritePost
    *         cal s:record(expand('<abuf>', 1))
CtrlPMRUF  BufWritePost
    *         cal s:record(expand('<abuf>', 1))
nerdtreegitplugin  BufWritePost
    *         call s:FileUpdate(expand('%:p'))
BufWritePost
    *         call <SID>onChange()
languageClient  BufWritePost
    *         call LanguageClient#handleBufWritePost()
nvim-typescript  BufWritePost
    *.ts      call TSOnBufSave()
    *.tsx     call TSOnBufSave()
projectionist  BufWritePost
    .projections.json
              call ProjectionistDetect(expand('<afile>:p'))
BufWritePost
    *         call s:MRU_AddFile(expand('<abuf>'))
gzip  BufWritePost
    *.gz      call gzip#write("gzip")
    *.bz2     call gzip#write("bzip2")
    *.Z       call gzip#write("compress -f")
    *.lzma    call gzip#write("lzma -z")
    *.xz      call gzip#write("xz -z")
    *.lz      call gzip#write("lzip")
    *.zst     call gzip#write("zstd --rm")
fugitive_status  BufWritePost
    *         call fugitive#ReloadStatus(-1, 0)
gutentags_buffer_1  BufWritePost
    <buffer=1>
              call s:write_triggered_update_tags(1)
lsp  BufWritePost
    *         call s:on_text_document_did_save()
deoplete  BufWritePost
    *         if !&l:previewwindow | call deoplete#send_event('BufWritePost') | endif
gutentags_buffer_2  BufWritePost
    <buffer=2>
              call s:write_triggered_update_tags(2)
neosnippet  BufWritePost
    *.snip    call neosnippet#variables#set_snippets({})
    *.snippets
              call neosnippet#variables#set_snippets({})
gutentags_buffer_3  BufWritePost
    <buffer=3>
              call s:write_triggered_update_tags(3)
eunuch  BufWritePre
    *         if exists('b:eunuch_new_file') && getline(1) =~ '^#!\s*/' |   let b:chmod_post = '+x' | endif
codefmt  BufWritePre
    *         call s:FmtIfAutoEnabled()
TimeStamp  BufWritePre
    *         :call s:timestamp()
local-git-history  BufWritePre
    *         call lgh#backup_file(expand("%:p:h"), expand("%:t"))
neosnippet  BufWritePre
    *         call neosnippet#handlers#_all_clear_markers()
better_whitespace  BufWritePre
    *         call <SID>StripWhitespaceOnSave(v:cmdbang)
CmdUndefined
    CheckHealth
              checkhealth
wintabs_override_plugin_changes  CmdWinEnter
    *         call s:override_plugin_changes()
sig_autocmds  CmdWinEnter
    *         call signature#sign#Refresh()
projectionist  CmdWinEnter
    *         if !empty(getbufvar('#', 'projectionist_file')) |   let b:projectionist_file = getbufvar('#', 'projectionist_file') |   let b:projectionist = getbufvar('#', 'projectionist') |   call projectionist#activate() | endif
wintabs_override_plugin_changes  CmdWinLeave
    *         call s:override_plugin_changes()
ColorScheme
    *         :hi IndentGuidesOdd   guibg=#331144
              :hi IndentGuidesEven  guibg=#331159
qs_colors  ColorScheme
    *         highlight QuickScopePrimary  ctermfg=81 cterm=underline
              highlight QuickScopeSecondary  ctermfg=93 cterm=underline
ColorScheme
    *         highlight default ExtraWhitespace ctermbg=darkred guibg=darkred
              call <SID>WhitespaceInit()
gitgutter  ColorScheme
    *         call gitgutter#highlight#define_sign_column_highlight() | call gitgutter#highlight#define_highlights()
sandwich-event-ColorScheme  ColorScheme
    *         call s:default_highlight()
brightest  ColorScheme
    *         call s:init_hl()
lightline  ColorScheme
    *         if !has('vim_starting') || expand('<amatch>') !=# 'macvim' | call lightline#update() | call lightline#highlight() | endif
wintabs_override_plugin_changes  ColorScheme
    *         call s:override_plugin_changes()
sig_autocmds  ColorScheme
    *         call signature#utils#SetupHighlightGroups()
highlightedyank-event-ColorScheme  ColorScheme
    *         call s:default_highlight()
indent_guides  ColorScheme
    *         doautocmd indent_guides BufEnter
XtermColorTable  ColorScheme
    *         silent! doautoall XtermColorTableBuffer ColorScheme
quick_scope  ColorScheme
    *         call s:set_highlight_colors()
              call quick_scope#UnhighlightLine() | call quick_scope#HighlightLine(2, g:qs_accepted_chars)
ColorScheme
    *         call rainbow#load()
fugitive_blame  ColorScheme
    *         call s:BlameRehighlight()
bm_refresh  ColorScheme
    *         call bm_sign#define_highlights()
Colorizer  ColorScheme
    *         let s:force_group_update=1 | silent call colorizer#ColorHighlight(1)
wintabs_override_plugin_changes  CompleteDone
    *         call s:override_plugin_changes()
languageClient  CompleteDone
    *         call LanguageClient#handleCompleteDone()
deoplete  CompleteDone
    *         call s:on_complete_done()
agsResultsWindowView  CursorHold
    *.agsv    call ags#cleanYankedText()
gitgutter  CursorHold
    *         call gitgutter#process_buffer(bufnr(''), 0)
brightest  CursorHold
    *         call brightest#on_CursorHold()
sig_autocmds  CursorHold
    *         if (g:SignaturePeriodicRefresh) | call signature#sign#Refresh() | endif
PluginXoloxMisc  CursorHold
    *         call xolox#misc#cursorhold#autocmd()
nerdtreegitplugin  CursorHold
    *         silent! call s:CursorHoldUpdate()
webdevicons_cursor_hold  CursorHold
    *         silent! call s:CursorHoldUpdate()
gitgutter  CursorHoldI
    *         call gitgutter#process_buffer(bufnr(''), 0)
brightest  CursorHoldI
    *         if g:brightest#enable_insert_mode|^I^I^Icall brightest#on_CursorHold()|^I^Iendif
PluginXoloxMisc  CursorHoldI
    *         call xolox#misc#cursorhold#autocmd()
agsResultsWindowView  CursorMoved
    *.agsv    call ags#cleanYankedText()
brightest  CursorMoved
    *         call brightest#on_CursorMoved()
lightline  CursorMoved
    *         call lightline#update_once()
quick_scope  CursorMoved
    *         call quick_scope#UnhighlightLine() | call quick_scope#HighlightLine(2, g:qs_accepted_chars)
languageClient  CursorMoved
    *         call LanguageClient#handleCursorMoved()
matchparen  CursorMoved
    *         call s:Highlight_Matching_Pair()
lsp  CursorMoved
    *         call s:on_cursor_moved()
              if g:lsp_highlight_references_enabled | call lsp#ui#vim#references#highlight(v:false) | endif
neosnippet  CursorMoved
    *         call neosnippet#handlers#_cursor_moved()
brightest  CursorMovedI
    *         if g:brightest#enable_insert_mode|^I^I^Icall brightest#on_CursorMoved()|^I^Iendif
matchparen  CursorMovedI
    *         call s:Highlight_Matching_Pair()
neosnippet  CursorMovedI
    *         call neosnippet#handlers#_cursor_moved()
better_whitespace  CursorMovedI
    *         call <SID>HighlightEOLWhitespaceExceptCurrentLine()
              call <SID>HighlightEOLWhitespaceExceptCurrentLine()
ShaDaCommands  FileAppendCmd
    *.shada   :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'ab')
    *.shada.tmp.[a-z]
              :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'ab')
gzip  FileAppendPost
    *.gz      call gzip#write("gzip")
    *.bz2     call gzip#write("bzip2")
    *.Z       call gzip#write("compress -f")
    *.lzma    call gzip#write("lzma -z")
    *.xz      call gzip#write("xz -z")
    *.lz      call gzip#write("lzip")
    *.zst     call gzip#write("zstd --rm")
gzip  FileAppendPre
    *.gz      call gzip#appre("gzip -dn")
    *.bz2     call gzip#appre("bzip2 -d")
    *.Z       call gzip#appre("uncompress")
    *.lzma    call gzip#appre("lzma -d")
    *.xz      call gzip#appre("xz -d")
    *.lz      call gzip#appre("lzip -d")
    *.zst     call gzip#appre("zstd -d --rm")
gitgutter  FileChangedShellPost
    *         call timer_start(1, {-> gitgutter#process_buffer(bufnr(''), 1)})
fugitive  FileReadCmd
    fugitive://*//*
              exe fugitive#FileReadCmd()
ShaDaCommands  FileReadCmd
    *.shada   :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call append("'[", shada#get_strings(readfile(expand('<afile>'), 'b')))
    *.shada.tmp.[a-z]
              :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call append("'[", shada#get_strings(readfile(expand('<afile>'), 'b')))
tar  FileReadCmd
    tarfile::*
              call tar#Read(expand("<amatch>"), 0)
    tarfile::*/*
              call tar#Read(expand("<amatch>"), 0)
zip  FileReadCmd
    zipfile:* call zip#Read(expand("<amatch>"), 0)
    zipfile:*/*
              call zip#Read(expand("<amatch>"), 0)
gzip  FileReadPost
    *.gz      call gzip#read("gzip -dn")
    *.bz2     call gzip#read("bzip2 -d")
    *.Z       call gzip#read("uncompress")
    *.lzma    call gzip#read("lzma -d")
    *.xz      call gzip#read("xz -d")
    *.lz      call gzip#read("lzip -d")
    *.zst     call gzip#read("zstd -d --rm")
gzip  FileReadPre
    *.gz      setlocal bin
    *.bz2     setlocal bin
    *.Z       setlocal bin
    *.lzma    setlocal bin
    *.xz      setlocal bin
    *.lz      setlocal bin
    *.zst     setlocal bin
filetypeplugin  FileType
    *         call s:LoadFTPlugin()
filetypeindent  FileType
    *         call s:LoadIndent()
PlugLOD  FileType
    python    call <SID>lod_ft('python', ['black'])
filetypedetect  FileType
    apiblueprint
              set syntax=apiblueprint
              set makeprg=drafter\ -l\ %
    ember-script
              set tabstop=2|set shiftwidth=2|set expandtab
    emblem    set tabstop=2|set shiftwidth=2|set expandtab
    purescript
              let &l:commentstring='{--%s--}'
    python    compiler python
syntaxset  FileType
    *         exe "set syntax=" . expand("<amatch>")
FileType
    vim       :iabbrev <buffer> iff if ()<left>
    c         :iabbrev <buffer> iff if () { }<left>
    cpp       :iabbrev <buffer> iff if () { }<left>
jnrowe_fzf  FileType
    fzf       call s:fzf_status()
FileType
    python    setlocal omnifunc=jedi#completions
    typescript
              setlocal completeopt+=menu,preview
    css       setlocal omnifunc=csscomplete#CompleteCSS
    html      setlocal omnifunc=htmlcomplete#CompleteTags
    markdown  setlocal omnifunc=htmlcomplete#CompleteTags
    javascript
              setlocal omnifunc=javascriptcomplete#CompleteJS
    java      setlocal omnifunc=javacomplete#Complete
    xml       setlocal omnifunc=xmlcomplete#CompleteTags
    ruby      setlocal omnifunc=rubycomplete#Complete
    haskell   setlocal omnifunc=necoghc#omnifunc
    *         setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    xml       set omnifunc=xmlcomplete#CompleteTags noci
    html      set omnifunc=htmlcomplete#CompleteTags noci
autoformat_settings  FileType
    bzl       AutoFormatBuffer buildifier
    c         AutoFormatBuffer clang-format
    cpp       AutoFormatBuffer clang-format
    proto     AutoFormatBuffer clang-format
    javascript
              AutoFormatBuffer clang-format
    dart      AutoFormatBuffer dartfmt
    go        AutoFormatBuffer gofmt
    gn        AutoFormatBuffer gn
    java      AutoFormatBuffer google-java-format
    python    AutoFormatBuffer yapf
FileType
    *         call <SID>SetupAutoCommands()
fugitive  FileType
    netrw     call FugitiveDetect(fnamemodify(get(b:, 'netrw_curdir', expand('<amatch>')), ':p'))
    git       if len(FugitiveGitDir()) |   call fugitive#MapJumps() |   call fugitive#MapCfile() | endif
    gitcommit if len(FugitiveGitDir()) |   call fugitive#MapCfile('fugitive#MessageCfile()') | endif
    fugitive  if len(FugitiveGitDir()) |   call fugitive#MapCfile('fugitive#StatusCfile()') | endif
    gitrebase let &l:include = '^\%(pick\|squash\|edit\|reword\|fixup\|drop\|[pserfd]\)\>' | if len(FugitiveGitDir()) |   let &l:includeexpr = 'v:fname =~# ''^\x\{4,\}$'' ? FugitiveFind(v:fname) : ' .   (len(&l:includeexpr) ? &l:includeexpr : 'v:fname') | endif | let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe') . '|setl inex= inc='
QFG  FileType
    qf        call <SID>FTautocmdBatch()
FileType
    html      inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    xhtml     inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    phtml     inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    html      inoremap <silent> <buffer> <leader>> >
    xhtml     inoremap <silent> <buffer> <leader>> >
    phtml     inoremap <silent> <buffer> <leader>> >
    xhtml     call <SID>Declare('b:closetag_use_xhtml', 1)
    jsx       call <SID>Declare('b:closetag_use_xhtml', 1)
QFEnterAutoCmds  FileType
    qf        call s:RegisterKeymap()
dokumentary_yacc  FileType
    yacc      nnoremap <silent> <buffer> K :call <SID>open_man_page(0, 1)<CR>
              vnoremap <silent> <buffer> K :call <SID>open_man_page(1, 1)<CR>
dokumentary_dict  FileType
    dict      nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "dict")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "dict")<CR>
dokumentary_go  FileType
    go        nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "go")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "go")<CR>
dokumentary_c  FileType
    c         nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "c")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "c")<CR>
dokumentary_perl  FileType
    perl      nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "perl")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "perl")<CR>
dokumentary_tex  FileType
    tex       nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "tex")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "tex")<CR>
dokumentary_sh  FileType
    sh        nnoremap <silent> <buffer> K :call <SID>open_man_page(0, 1)<CR>
              vnoremap <silent> <buffer> K :call <SID>open_man_page(1, 1)<CR>
dokumentary_man  FileType
    man       nnoremap <silent> <buffer> K :call <SID>open_man_page(0, 1)<CR>
              vnoremap <silent> <buffer> K :call <SID>open_man_page(1, 1)<CR>
dokumentary_plaintex  FileType
    plaintex  nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "plaintex")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "plaintex")<CR>
dokumentary_cpp  FileType
    cpp       nnoremap <silent> <buffer> K :call <SID>open_man_page(0, 1)<CR>
              vnoremap <silent> <buffer> K :call <SID>open_man_page(1, 1)<CR>
dokumentary_sdvc  FileType
    sdvc      nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "sdvc")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "sdvc")<CR>
dokumentary_python  FileType
    python    nnoremap <silent> <buffer> K :call <SID>output_to_window("", 0, 1, "python")<CR>
              vnoremap <silent> <buffer> K :call <SID>output_to_window("", 1, 1, "python")<CR>
dokumentary_make  FileType
    make      nnoremap <silent> <buffer> K :call <SID>open_man_page(0, 1)<CR>
              vnoremap <silent> <buffer> K :call <SID>open_man_page(1, 1)<CR>
dokumentary_vim  FileType
    vim       nnoremap <silent> <buffer> K :execute ":help " . expand("<cword>")<CR>
    help      nnoremap <silent> <buffer> K :execute ":help " . expand("<cword>")<CR>
lightline  FileType
    qf        call lightline#update()
wintabs_override_plugin_changes  FileType
    *         call s:override_plugin_changes()
indent_guides  FileType
    *         call indent_guides#process_autocmds()
_fzf_statusline  FileType
    fzf       call s:fzf_vim_term()
SnipMateDetect  FileType
    snippets  if expand('<afile>:e') =~# 'snippet$' | setlocal syntax=snippet | else | setlocal syntax=snippets | endif
AddHighlighting  FileType
    nerdtree  call s:AddHighlighting()
webdevicons_conceal_nerdtree_brackets  FileType
    nerdtree  syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
              syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
              setlocal conceallevel=3
              setlocal concealcursor=nvic
FileType
    *         call TagHighlight#ReadTypes#ReadTypesByFileType()
languageClient  FileType
    *         call LanguageClient#handleFileType()
FileType
    java      JCstart
    jsp       JCstart
projectionist  FileType
    *         if &filetype ==# 'netrw' ? !exists('b:projectionist') :     &buftype !~# 'nofile\|quickfix' |   call ProjectionistDetect(expand('%:p')) | endif
dispatch  FileType
    qf        if &buftype ==# 'quickfix' && empty(getloclist(winnr())) && get(w:, 'quickfix_title') =~# '^:noautocmd cgetfile\>\|^:\d*Dispatch\>' |   call dispatch#quickfix_init() | endif
dirvish_ftdetect  FileType
    dirvish   if exists('#fugitive') | call fugitive#detect(@%) | endif
vim_pasta  FileType
    *         call <SID>SetupPasta()
FileType
    python    call s:remove_builtin_extra()
              call s:simplify_markup_extra()
    *         call s:filetype_changed()
fugitive_blame  FileType
    fugitiveblame
              call s:BlameFileType()
neosnippet  FileType
    *         call neosnippet#commands#_make_cache(&filetype)
fugitive  FileWriteCmd
    fugitive://*//[0-3]/*
              exe fugitive#FileWriteCmd()
ShaDaCommands  FileWriteCmd
    *.shada   :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'b')
    *.shada.tmp.[a-z]
              :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'b')
tar  FileWriteCmd
    tarfile::*
              call tar#Write(expand("<amatch>"))
    tarfile::*/*
              call tar#Write(expand("<amatch>"))
zip  FileWriteCmd
    zipfile:* call zip#Write(expand("<amatch>"))
    zipfile:*/*
              call zip#Write(expand("<amatch>"))
eunuch  FileWritePost
    *         if exists('b:chmod_post') |   call s:Chmod(0, b:chmod_post, '<afile>') |   edit |   unlet b:chmod_post | endif
gzip  FileWritePost
    *.gz      call gzip#write("gzip")
    *.bz2     call gzip#write("bzip2")
    *.Z       call gzip#write("compress -f")
    *.lzma    call gzip#write("lzma -z")
    *.xz      call gzip#write("xz -z")
    *.lz      call gzip#write("lzip")
    *.zst     call gzip#write("zstd --rm")
gitgutter  FocusGained
    *         if s:focus_was_lost | let focus_was_lost = 0 | call gitgutter#all(1) | endif
quick_scope  FocusGained
    *         call quick_scope#UnhighlightLine() | call quick_scope#HighlightLine(2, g:qs_accepted_chars)
fugitive_status  FocusGained
    *         call fugitive#ReloadStatus(-2, 0)
DimInactive  FocusGained
    *         call s:Debug('EVENT: FocusGained', {'b': bufnr('%')}) | call s:Enter()
FocusLost
    *         :silent! wall
gitgutter  FocusLost
    *         let s:focus_was_lost = 1
quick_scope  FocusLost
    *         call quick_scope#UnhighlightLine()
DimInactive  FocusLost
    *         call s:Debug('EVENT: FocusLost', {'b': bufnr('%')})   | call s:Leave()
RPC_DEFINE_AUTOCMD_GROUP_1  FuncUndefined
    _denite_init
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/denite.nvim/rplugin/python3/denite:function:_denite_init", v:true, "_denite_init", {}, "RPC_DEFINE_AUTOCMD_GROUP_1")
RPC_DEFINE_AUTOCMD_GROUP_2  FuncUndefined
    TSGetDocSymbolsFunc
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSGetDocSymbolsFunc", v:true, "TSGetDocSymbolsFunc", {}, "RPC_DEFINE_AUTOCMD_GROUP_2")
RPC_DEFINE_AUTOCMD_GROUP_3  FuncUndefined
    TSGetErrFunc
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSGetErrFunc", v:false, "TSGetErrFunc", {}, "RPC_DEFINE_AUTOCMD_GROUP_3")
RPC_DEFINE_AUTOCMD_GROUP_4  FuncUndefined
    TSGetWorkspaceSymbolsFunc
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSGetWorkspaceSymbolsFunc", v:true, "TSGetWorkspaceSymbolsFunc", {}, "RPC_DEFINE_AUTOCMD_GROUP_4")
RPC_DEFINE_AUTOCMD_GROUP_5  FuncUndefined
    TSOnBufEnter
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSOnBufEnter", v:false, "TSOnBufEnter", {}, "RPC_DEFINE_AUTOCMD_GROUP_5")
RPC_DEFINE_AUTOCMD_GROUP_6  FuncUndefined
    TSOnBufSave
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSOnBufSave", v:false, "TSOnBufSave", {}, "RPC_DEFINE_AUTOCMD_GROUP_6")
RPC_DEFINE_AUTOCMD_GROUP_7  FuncUndefined
    TSCmRefresh
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSCmRefresh", v:false, "TSCmRefresh", {}, "RPC_DEFINE_AUTOCMD_GROUP_7")
RPC_DEFINE_AUTOCMD_GROUP_8  FuncUndefined
    TSGetServerPath
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSGetServerPath", v:true, "TSGetServerPath", {}, "RPC_DEFINE_AUTOCMD_GROUP_8")
RPC_DEFINE_AUTOCMD_GROUP_9  FuncUndefined
    TSGetVersion
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSGetVersion", v:true, "TSGetVersion", {}, "RPC_DEFINE_AUTOCMD_GROUP_9")
RPC_DEFINE_AUTOCMD_GROUP_10  FuncUndefined
    TSServerStatus
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSServerStatus", v:true, "TSServerStatus", {}, "RPC_DEFINE_AUTOCMD_GROUP_10")
RPC_DEFINE_AUTOCMD_GROUP_11  FuncUndefined
    TSComplete
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/deoplete-typescript/rplugin/python3/nvim_typescript:function:TSComplete", v:true, "TSComplete", {}, "RPC_DEFINE_AUTOCMD_GROUP_11")
RPC_DEFINE_AUTOCMD_GROUP_13  FuncUndefined
    _far_nvim_rpc_async_invoke
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/far.vim/rplugin/python3/far:function:_far_nvim_rpc_async_invoke", v:false, "_far_nvim_rpc_async_invoke", {}, "RPC_DEFINE_AUTOCMD_GROUP_13")
RPC_DEFINE_AUTOCMD_GROUP_14  FuncUndefined
    SemshiInternalEval
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiInternalEval", v:true, "SemshiInternalEval", {}, "RPC_DEFINE_AUTOCMD_GROUP_14")
RPC_DEFINE_AUTOCMD_GROUP_15  FuncUndefined
    SemshiBufEnter
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiBufEnter", v:true, "SemshiBufEnter", {}, "RPC_DEFINE_AUTOCMD_GROUP_15")
RPC_DEFINE_AUTOCMD_GROUP_16  FuncUndefined
    SemshiBufLeave
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiBufLeave", v:true, "SemshiBufLeave", {}, "RPC_DEFINE_AUTOCMD_GROUP_16")
RPC_DEFINE_AUTOCMD_GROUP_17  FuncUndefined
    SemshiBufWipeout
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiBufWipeout", v:true, "SemshiBufWipeout", {}, "RPC_DEFINE_AUTOCMD_GROUP_17")
RPC_DEFINE_AUTOCMD_GROUP_18  FuncUndefined
    SemshiCursorMoved
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiCursorMoved", v:false, "SemshiCursorMoved", {}, "RPC_DEFINE_AUTOCMD_GROUP_18")
RPC_DEFINE_AUTOCMD_GROUP_19  FuncUndefined
    SemshiTextChanged
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiTextChanged", v:false, "SemshiTextChanged", {}, "RPC_DEFINE_AUTOCMD_GROUP_19")
RPC_DEFINE_AUTOCMD_GROUP_21  FuncUndefined
    SemshiVimResized
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiVimResized", v:false, "SemshiVimResized", {}, "RPC_DEFINE_AUTOCMD_GROUP_21")
RPC_DEFINE_AUTOCMD_GROUP_22  FuncUndefined
    SemshiComplete
              call remote#define#FunctionBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:function:SemshiComplete", v:true, "SemshiComplete", {}, "RPC_DEFINE_AUTOCMD_GROUP_22")
wintabs_override_plugin_changes  GUIEnter
    *         call s:override_plugin_changes()
fugitive_blame  GUIEnter
    *         call s:BlameRehighlight()
Colorizer  GUIEnter
    *         silent call colorizer#ColorHighlight(1)
UltiSnips_AutoTrigger  InsertCharPre
    *         call UltiSnips#TrackChange()
InsertEnter
    *         if ShouldMatchWhitespace() | match ExtraWhitespace /\\\@<![\u3000[:space:]]\+\%#\@<!$/ | endif
brightest  InsertEnter
    *         if g:brightest#enable_insert_mode == 0|^I^I^Icall brightest#hl_clear()|^I^Iendif
echodoc  InsertEnter
    *         call echodoc#enable()
quick_scope  InsertEnter
    *         call quick_scope#UnhighlightLine()
lsp  InsertEnter
    *         call lsp#ui#vim#references#clean_references()
deoplete  InsertEnter
    *         if !&l:previewwindow | call deoplete#send_event('InsertEnter') | endif
              call s:completion_timer_start('InsertEnter')
better_whitespace  InsertEnter
    *         call <SID>HighlightEOLWhitespaceExceptCurrentLine()
InsertLeave
    *         if ShouldMatchWhitespace() | match ExtraWhitespace /\\\@<![\u3000[:space:]]\+$/ | endif
supertab_retain  InsertLeave
    *         call s:SetDefaultCompletionType()
quick_scope  InsertLeave
    *         call quick_scope#UnhighlightLine() | call quick_scope#HighlightLine(2, g:qs_accepted_chars)
lsp  InsertLeave
    *         call s:on_text_document_did_change()
deoplete  InsertLeave
    *         call s:on_insert_leave()
better_whitespace  InsertLeave
    *         call <SID>HighlightEOLWhitespace()
wintabs_override_plugin_changes  OptionSet
    *         call s:override_plugin_changes()
gitgutter  QuickFixCmdPost
    *vimgrep* let g:gitgutter_enabled = 1
qf  QuickFixCmdPost
    [^l]*     call qf#OpenQuickfix()
    l*        call qf#OpenLoclist()
pb_fzf_mru  QuickFixCmdPost
    *vimgrep* let s:locked = 0
CtrlPMRUF  QuickFixCmdPost
    *vimgrep* let s:locked = 0
startify  QuickFixCmdPost
    *vimgrep* let g:startify_locked = 0
QuickFixCmdPost
    *vimgrep* let s:mru_list_locked = 0
fugitive_status  QuickFixCmdPost
    make      call fugitive#ReloadStatus(fugitive#EfmDir(), 1)
    lmake     call fugitive#ReloadStatus(fugitive#EfmDir(), 1)
    [cl]file  call fugitive#ReloadStatus(fugitive#EfmDir(), 1)
    [cl]getfile
              call fugitive#ReloadStatus(fugitive#EfmDir(), 1)
gitgutter  QuickFixCmdPre
    *vimgrep* let g:gitgutter_enabled = 0
pb_fzf_mru  QuickFixCmdPre
    *vimgrep* let s:locked = 1
CtrlPMRUF  QuickFixCmdPre
    *vimgrep* let s:locked = 1
startify  QuickFixCmdPre
    *vimgrep* let g:startify_locked = 1
QuickFixCmdPre
    *vimgrep* let s:mru_list_locked = 1
qf  QuitPre
    *         if &filetype != 'qf' | silent! lclose | endif
QuitPre
    *         call undoquit#SaveWindowQuitHistory()
lightline  SessionLoadPost
    *         call lightline#update()
              call lightline#highlight()
SessionLoadPost
    *         call wintabs#session#load()
              call wintabs#undo#load_from_session()
wintabs_override_plugin_changes  SessionLoadPost
    *         call s:override_plugin_changes()
TagbarSession  SessionLoadPost
    *         call tagbar#RestoreSession()
gitgutter  ShellCmdPost
    *         call gitgutter#all(1)
fugitive_status  ShellCmdPost
    *         call fugitive#ReloadStatus(-2, 0)
fugitive_status  ShellFilterPost
    *         call fugitive#ReloadStatus(-2, 0)
fugitive  SourceCmd
    fugitive://*//*
              exe fugitive#SourceCmd()
ShaDaCommands  SourceCmd
    *.shada   :execute 'rshada' fnameescape(expand('<afile>'))
    *.shada.tmp.[a-z]
              :execute 'rshada' fnameescape(expand('<afile>'))
wintabs_override_plugin_changes  SourcePre
    *         call s:override_plugin_changes()
SpellFileMissing
    *         call spellfile#LoadFile(expand('<amatch>'))
filetypedetect  StdinReadPost
    *         if !did_filetype() | runtime! scripts.vim | endif
              if getline(1) =~ '^#!.*\Wion\s*$' |   set ft=ion | endif
              if !did_filetype() && expand("<amatch>") !~ g:ft_ignore_pat    && (getline(1) =~ '^#' || getline(2) =~ '^#' || getline(3) =~ '^#'^I|| getline(4) =~ '^#' || getline(5) =~ '^#') |   setf FALLBACK conf | endif
Syntax
    *         call s:SynSet()
    c         if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
    cpp       if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
    cs        if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
    idl       if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
    java      if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
    php       if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
    datascript
              if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
    *         call TagHighlight#ReadTypes#ReadTypesBySyntax()
              call rainbow#load()
neosnippet  Syntax
    *         execute 'syntax match neosnippetExpandSnippets'  "'".neosnippet#get_placeholder_marker_pattern(). '\|' .neosnippet#get_sync_placeholder_marker_pattern().'\|' .neosnippet#get_mirror_placeholder_marker_pattern()."'" 'containedin=ALL oneline'
              syntax region neosnippetConcealExpandSnippets  matchgroup=neosnippetExpandSnippets  start='<`0\|<`\|<{\d\+:\=\%(#:\|TARGET:\?\)\?\|%\w\+(<|' end='\(:\w\+\|:#:\w\+\)\?`>\|}>\||>)\?' containedin=ALL  cchar=| concealends oneline
gitgutter  TabEnter
    *         let t:gitgutter_didtabenter = 1
wintabs_override_plugin_changes  TabEnter
    *         call s:override_plugin_changes()
fugitive_status  TabEnter
    *         if exists('t:fugitive_reload_status') |    call s:ReloadTabStatus() | endif
DimInactive  TabEnter
    *         call s:Debug('EVENT: TabEnter') | call s:SetupWindows()
quick_scope  TabLeave
    *         call quick_scope#UnhighlightLine()
TextChanged
    *         call lightline#update()
languageClient  TextChanged
    *         call LanguageClient#handleTextChanged()
matchparen  TextChanged
    *         call s:Highlight_Matching_Pair()
lsp  TextChanged
    *         call s:on_text_document_did_change()
Colorizer  TextChanged
    *         silent call s:TextChanged()
TextChangedI
    *         call lightline#update()
UltiSnips_AutoTrigger  TextChangedI
    *         call UltiSnips#TrackChange()
languageClient  TextChangedI
    *         call LanguageClient#handleTextChanged()
matchparen  TextChangedI
    *         call s:Highlight_Matching_Pair()
deoplete  TextChangedI
    *         call s:completion_timer_start('TextChangedI')
Colorizer  TextChangedI
    *         silent call s:TextChanged()
UltiSnips_AutoTrigger  TextChangedP
    *         call UltiSnips#TrackChange()
languageClient  TextChangedP
    *         call LanguageClient#handleTextChanged()
lsp  TextChangedP
    *         call s:on_text_document_did_change()
deoplete  TextChangedP
    *         call s:completion_timer_start('TextChangedP')
highlightedyank  TextYankPost
    *         call highlightedyank#debounce()
ClapYanksCollect  TextYankPost
    *         call clap#provider#yanks#collect()
User
    lsp_setup call lsp#register_server({ 'name': 'pyls', 'cmd': {server_info->['pyls']}, 'whitelist': ['python'], })
    FzfStatusLine
              call <SID>fzf_statusline()
asyncrun_augroup  User
    AsyncRunStart
              call s:check_quickfix()
fugitive  User
    Flags     call Hoist('buffer', function('FugitiveStatusline'))
    ProjectionistDetect
              call s:ProjectionistDetect()
gitgutter  User
    FugitiveChanged
              call gitgutter#all(1)
User
    vim-closetag
              inoremap <silent> <buffer> > ><Esc>:call <SID>CloseIt()<Cr>
    VimagitUpdateFile
              if ( exists("*gitgutter#process_buffer") ) |   call gitgutter#process_buffer(bufnr(g:magit_last_updated_buffer), 0) | elseif ( exists("*sy#util#refresh_windows") ) |   call sy#util#refresh_windows() | endif
TableMode  User
    TableModeEnabled
              call tablemode#logger#log('Table Mode Enabled')
    TableModeDisabled
              call tablemode#logger#log('Table Mode Disabled')
User
    CmSetup   call cm#sources#java#register()
nvim-typescript  User
    CmSetup   call cm#sources#typescript#register()
projectionist  User
    NERDTreeInit
              if exists('b:NERDTree.root.path.str') |   call ProjectionistDetect(b:NERDTree.root.path.str()) | endif
    NERDTreeNewRoot
              if exists('b:NERDTree.root.path.str') |   call ProjectionistDetect(b:NERDTree.root.path.str()) | endif
fugitive_folding  User
    Fugitive  if &filetype =~# '^git\%(commit\)\=$' && &foldtext ==# 'foldtext()' |    set foldtext=fugitive#Foldtext() | endif
_lsp_silent_  User
    lsp_setup silent
    lsp_register_server
              silent
    lsp_unregister_server
              silent
    lsp_server_init
              silent
    lsp_server_exit
              silent
    lsp_complete_done
              silent
    lsp_float_opened
              silent
    lsp_float_closed
              silent
    lsp_buffer_enabled
              silent
VimEnter
    *         call after_object#enable('=', ':', '-', '#', ' ')
              :hi IndentGuidesOdd   guibg=#331144
              :hi IndentGuidesEven  guibg=#331159
gitgutter  VimEnter
    *         if winnr() != winnr('$') | call gitgutter#all(0) | endif
qf  VimEnter
    *         call qf#OpenQuickfix()
wintabs_override_plugin_changes  VimEnter
    *         call s:override_plugin_changes()
sig_autocmds  VimEnter
    *         call signature#utils#SetupHighlightGroups()
indent_guides  VimEnter
    *         :IndentGuidesEnable
ClapYanks  VimEnter
    *         call clap#provider#yanks#init()
gutentags_detect  VimEnter
    *         if expand('<amatch>')==''|call gutentags#setup_gutentags()|endif
VimEnter
    *         call s:init(expand('<afile>:p'))
lsp_auto_enable  VimEnter
    *         call lsp#enable()
projectionist  VimEnter
    *         if empty(expand('<afile>:p')) |   call ProjectionistDetect(getcwd()) | endif
dirvish_ftdetect  VimEnter
    *         if exists('#FileExplorer') | exe 'au! FileExplorer *' | endif
              if exists('#NERDTreeHijackNetrw') | exe 'au! NERDTreeHijackNetrw *' | endif
LH_PROJECT  VimEnter
    *         call lh#project#_CheckUpdateCWD()
RPC_DEFINE_AUTOCMD_GROUP_20  VimLeave
    *         call remote#define#AutocmdBootstrap("python3", "/home/red/.config/nvim/plugged/semshi/rplugin/python3/semshi:autocmd:VimLeave:*", v:true, "VimLeave", {'group': 'RPC_DEFINE_AUTOCMD_GROUP_20', 'pattern': '*'}, "\"doau RPC_DEFINE_AUTOCMD_GROUP_20 VimLeave \".fnameescape(expand(\"<amatch>\"))")
bm_auto_save  VimLeave
    *         call s:auto_save()
pb_fzf_mru  VimLeavePre
    *         cal s:savetofile(s:mergelists())
CtrlPMRUF  VimLeavePre
    *         cal s:savetofile(s:mergelists())
gutentags_detect  VimLeavePre
    *         call gutentags#on_vim_leave_pre()
startify  VimLeavePre
    *         call s:on_vimleavepre()
languageClient  VimLeavePre
    *         call LanguageClient#handleVimLeavePre()
ternjs  VimLeavePre
    *         call ternjs#deleteTernPort()
fugitive_merge  VimLeavePre
    git-rebase-todo
              if getbufvar(+expand('<abuf>'), '&bufhidden') ==# 'wipe' |   call s:RebaseClean(expand('<afile>')) |   if getfsize(FugitiveFind('.git/rebase-merge/done', +expand('<abuf>'))) == 0 |     let s:rebase_continue = [FugitiveGitDir(+expand('<abuf>')), 1] |   endif | endif
fugitive_commit  VimLeavePre
    COMMIT_EDITMSG
              execute substitute(s:FinishCommit(), '\C^echoerr \(''[^'']*''\)*', 'redraw|echohl ErrorMsg|echo \1|echohl NONE', '')
deoplete  VimLeavePre
    *         if !&l:previewwindow | call deoplete#send_event('VimLeavePre') | endif
wintabs_override_plugin_changes  VimResized
    *         call s:override_plugin_changes()
DimInactive  VimResized
    *         call s:Debug('EVENT: VimResized') | call s:SetupWindows()
gitgutter  VimResume
    *         call gitgutter#all(1)
WinEnter
    *         call <SID>SetupAutoCommands()
brightest  WinEnter
    *         call brightest#on_CursorMoved()
lightline  WinEnter
    *         call lightline#update()
wintabs_override_plugin_changes  WinEnter
    *         call s:override_plugin_changes()
indent_guides  WinEnter
    *         call indent_guides#process_autocmds()
fzf_popd  WinEnter
    *         call s:dopopd()
fzf_buffers  WinEnter
    *         let g:fzf#vim#buffers[bufnr('')] = reltimefloat(reltime())
ClapBuffers  WinEnter
    *         let g:__clap_buffers[bufnr('')] = reltimefloat(reltime())
NERDTree  WinEnter
    NERD_tree_*
              stopinsert
skim_popd  WinEnter
    *         call s:dopopd()
BufKill  WinEnter
    *         call <SID>UpdateList('WinEnter')
matchparen  WinEnter
    *         call s:Highlight_Matching_Pair()
DimInactive  WinEnter
    *         call s:Debug('EVENT: WinEnter', {'w': winnr()}) | call s:EnterWindow()
Colorizer  WinEnter
    *         silent call colorizer#ColorHighlight(1)
brightest  WinLeave
    *         call brightest#hl_clear()
NERDTree  WinLeave
    NERD_tree_*
              if g:NERDTree.IsOpen() | call b:NERDTree.ui.saveScreenState() | endif
quick_scope  WinLeave
    *         call quick_scope#UnhighlightLine()
BufKill  WinLeave
    *         call <SID>UpdateLastColumn('WinLeave')
DimInactive  WinLeave
    *         call s:Debug('EVENT: WinLeave', {'w': winnr()}) | let w:diminactive_left_window = 1
