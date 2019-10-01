let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/bTest/kDot
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +20 NONE
badd +601 kConfigFVWM.sh
badd +16 kMinit.vim
badd +3 k5DEO.vim
badd +29 4Temp.vim
badd +1 timeTest.txt
badd +2 logoTextObjct.vim
badd +3 logoGit.vim
badd +588 b5DEO.vim
badd +1 xFZF.sh
argglobal
%argdel
$argadd NONE
edit 4Temp.vim
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=6
setlocal fdn=20
setlocal nofen
let s:l = 30 - ((15 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0
lcd ~/git/bTest/kDot
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
