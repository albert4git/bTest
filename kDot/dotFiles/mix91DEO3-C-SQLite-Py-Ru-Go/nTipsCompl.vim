

VimTip	{{{1 968: Custom keyword completion (works only with Vim 7)
http://vim.sourceforge.net/tip_view.php?tip_id=

With Vim 7 (still in development), you can use complete code completion using CTRL-X CTRL-U. See :help 'completefunc'.

With this small script with which you can complete keywords using some kind wildcards. By default '\k\zs' reg-exp is used as wildcard. Usefull if you are using identifiers with mixed case, so aCN expands to anyCrazyName or anotherCodeName, but not AnotherCodeName neither BadCodeName.

-- Marian

--------------------------------8<--------------------------------8<--------------------------------
" settings:
" g:mkw_any - default regular expression used as wilcard
" - possible settings:
"   - ''
"     every nothing around character in pattern is used as wildcard, so for
"     KEY is '\<\k*K\k*E\k*Y\k*\>' used for matching keywords
"   - '\k\zs'
"     every nothing around characters but the first is used as wildcard, so
"     for KEY is '\<K\k*E\k*Y\k*\>' used for matching keywords
"   - or any other reg.expression (e.g. '\.\.', '', '_', '\\', '::', '`')
"     be carefull it doesn't mixe with language constructs used in your
"     sources (as '\.' in C is used for structure members)
"     if zero-length match is used:
"     - prepend \k\@<= if the first char in pattern must be the first in match
"     - postpend \k\@= if the last char in pattern must be the last in match
" b:mkw_any - regular expression to be used for current buffer as wilcard
"
" other:
" g:mkw_devel - if exists script is reloaded every time it is sourced

if v:version < 700
  echohl ERROR "Smart completion will work only in vim version 7+"
  finish
endif

if !exists("g:mkw_any")
  let g:mkw_any = '\k\zs'
endif

if exists("g:mkw_devel") || !exists("g:mkw_loaded")

  " find start of keyword-match (return) and create regexp for finding
  " matching keyword (s:re)
  " a:line - string to search in, search starts at end of string
  " a:anyre - reg.exp looked for to be replaced by '\k\*'
  fun! MKwFindStart(line,anyre)
    " this can not be used because a:anyre could be 0-length:
    "return match(a:line,'\%(\k*'.a:anyre.'\)*\k*$')
    let line = a:line
    " trims trailing keyword-characters
    let answ = match(line,'\k*$')
    if answ < 0
      let answ = strlen(line)
    else
      let line = strpart(line,0,answ)
    endif
    " trim trailing occurences of keyword-characters followed by anyre
    while answ > 0
      let answ = match(line,'\k*'.a:anyre.'$')
      if answ < 0 || answ == strlen(line) | break | endif
      let line = strpart(line,0,answ)
    endwhile
    " set answ and s:re:
    let answ = strlen(line)
    let line = strpart(a:line,answ)
    let s:re = '\<'.substitute(line,a:anyre,'\\k*',"g").'\>'
    "echo line ">>>" s:re
    return answ
  endfun

  " 
  fun! MKwCompleteId(line, base, col, findstart)
    if a:findstart
      " locate start column of word
      if !exists("b:mkw_any")
        let mkw_any = g:mkw_any
      else
        let mkw_any = b:mkw_any
      endif
      return MKwFindStart(strpart(a:line,0,a:col),mkw_any)
    else
      " remember cursor position
      let line = line('.')
      let col = col('.')
      " create word list (it serves as reg.exp too, to exclude words found
      " already)
      let res = ""
      while search('\%(\<\%('.res.'\)\>\)\@!'.s:re,'w') > 0
        let tmp = expand("<cword>")
        let res .= (res == "" ? "" : '\|').expand("<cword>")
      endwhile
      " restore cursor position
      call cursor(line,col)
      "echo s:re ":" res
      return substitute(res,'\\|',"\n","g")
    endif
  endfun

  let g:mkw_loaded = 1
endif

setlocal completefunc=MKwCompleteId
