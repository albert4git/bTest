let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/aTest/dotFiles/nVim/pdbA
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 NONE
badd +11 cMath.py
badd +78 tMath.py
badd +18 pyWrite.py
badd +1 cities.txt
badd +12 sortstdin.py
badd +5 crtPath.py
badd +14 date-date.py
badd +11 inter.py
badd +12 sub.py
badd +20 pyRead.py
badd +0 Punkt.py
argglobal
silent! argdel *
$argadd NONE
$argadd cMath.py
$argadd tMath.py
edit Punkt.py
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists('Punkt.py') | buffer Punkt.py | else | edit Punkt.py | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=6
setlocal fdn=20
setlocal nofen
let s:l = 38 - ((26 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 04|
lcd ~/git/aTest/dotFiles/nVim/pdbA
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