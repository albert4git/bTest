
You can combine the map and range function for that:

:echo map(range(4), 0)
[0, 0, 0, 0]

range(4) returns a list of number defined by the arguments:

[0, 1, 2, 3]

map([0, 1, 2, 3], 0) replace every element in the array with 0

You can use the following function:

function! Fill(len, char)
    return map(range(a:len), a:char)
endfunction

You can use it like so:

:echo Fill(4, 'a')
['a', 'a', 'a', 'a']

For the recursive fill, you can use the following function:

function! FillRecursive(len1, len2, char)
  if a:len2 == -1
    return map(range(a:len1), 'a:char')
  endif

  return map(range(a:len1), 'FillRecursive(a:len2, -1, a:char)')
endfunction

You can use it like so:

:echo FillRecursive(4,4,'a')
[['a', 'a', 'a', 'a'], ['a', 'a', 'a', 'a'], ['a', 'a', 'a', 'a'], ['a', 'a', 'a', 'a']]
