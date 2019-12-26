"----------------------------------------------------------------------------------
"----------------------------------------------------------------------------------
func VimOld()
  let sum = 0
  for i in range(1, 2999999)
    let sum += i
  endfor
  return sum
endfunc

func Python()
  py3 << END
sum = 0
for i in range(1, 3000000):
  sum += i
END
  return py3eval('sum')
endfunc

func Lua()
  lua << END
    sum = 0
    for i = 1, 2999999 do
      sum = sum + i
    end
END
  return luaeval('sum')
endfunc


let start = reltime()
echo VimOld()
echo 'Vim old: ' .. reltimestr(reltime(start))

let start = reltime()
echo Python()
echo 'Python: ' .. reltimestr(reltime(start))

let start = reltime()
echo Lua()
echo 'Lua: ' .. reltimestr(reltime(start))


"----------------------------------------------------------------------------------
"----------------------------------------------------------------------------------
