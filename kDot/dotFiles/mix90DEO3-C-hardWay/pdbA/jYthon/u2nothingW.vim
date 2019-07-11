let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/aTest/dotFiles/nVim/pdbA/jYthon
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 NONE
badd +4 helloIJ.java
badd +9 hello.java
badd +15 testHello.py
badd +9 HelloService.java
badd +4 Calculator.java
badd +3 JythonCalc.py
badd +22 testJDBC.py
badd +9 jdbc.py
badd +0 main.py
argglobal
silent! argdel *
$argadd NONE
$argadd helloIJ.java
edit main.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 31 + 19) / 39)
exe '2resize ' . ((&lines * 3 + 19) / 39)
argglobal
if bufexists('main.py') | buffer main.py | else | edit main.py | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=6
setlocal fdn=20
setlocal nofen
let s:l = 11 - ((9 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
lcd ~/git/aTest/dotFiles/nVim/pdbA/jYthon
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=6
setlocal fdn=20
setlocal nofen
lcd ~/git/aTest/dotFiles/nVim/pdbA/jYthon
wincmd w
exe '1resize ' . ((&lines * 31 + 19) / 39)
exe '2resize ' . ((&lines * 3 + 19) / 39)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=0 winminwidth=3 shortmess=filnxtToOFI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
