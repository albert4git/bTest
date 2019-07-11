Since I work on different machines, I prefer all my calendar items to be
available in one single ASCII file, which is easily handable with vim.
The function Calendar() below generates the following output (extract)

...............
----- Week 1 -----
Mo 30
Tu 31
====================    2003    ========================================
====================    Q 1     ========================================
--------------------  Jan 2003  ----------------------------------------
We 01
Th 02
Fr 03
Sa 04
Su 05
----- Week 2 -----
Mo 06
Tu 07
...............


This may be stored in a file accessible by a single key stroke from vim.

Here is the function:


function! Calendar(year, month, day, weekday, week, daycount)
  " output daycount calendar days starting from given date
  " into new buffer
  new
  set buftype=nofile bufhidden=hide noswapfile
  let year = a:year
  let month = a:month
  let day = a:day
  let wd = a:weekday
  let week = a:week

  let index = 0 
  let date = ''
  let diy = 777 " day in year, wrong before next year
  while (index < a:daycount) " no of days to output
    let diy = diy + 1
    if (wd > 7)
       let wd = 1
       let week = week + 1
       if (week >= 53)
         if (week >= 54)
           let week = 1
	 elseif (day >= 28 || day <= 3)
           let week = 1
	 endif
       endif
    endif
    if (wd == 1) " day name
       let dn = "Mo"
    elseif (wd == 2)
       let dn = "Tu"
    elseif (wd == 3)
       let dn = "We"
    elseif (wd == 4)
       let dn = "Th"
    elseif (wd == 5)
       let dn = "Fr"
    elseif (wd == 6)
       let dn = "Sa"
    elseif (wd == 7)
       let dn = "Su"
    else
       let dn = "** ERROR: Unknown day name ** "
    endif
    if ((day > 31) || (month == 2 && (day > 29 || day > 28 && year % 4)) 
    	\ || (month == 4 && day > 30) || (month == 6 && day > 30) 
	\ || (month == 9 && day > 30) || (month == 11 && day > 30))
       let day = 1
       let month = month + 1
       if (month > 12)
	  let month = 1
	  let diy = 1
	  let year = year + 1
	  if (wd <= 3)
	    let week = 1
          endif
       endif
       if (month == 1)
	 let yline = "===================="
	 call append(line("$"), yline . "    " . year . "    " . yline . yline )
	 call append(line("$"), yline . "    Q 1     " . yline . yline )
	 let monthn = "Jan"	" month name
       elseif (month == 2)
	 let monthn = "Feb"
       elseif (month == 3)
	 let monthn = "Mar"
       elseif (month == 4)
	 let monthn = "Apr"
	 call append(line("$"), yline . "    Q 2     " . yline . yline )
       elseif (month == 5)
	 let monthn = "May"
       elseif (month == 6)
	 let monthn = "Jun"
       elseif (month == 7)
	 let monthn = "Jul"
	 call append(line("$"), yline . "    Q 3     " . yline . yline )
       elseif (month == 8)
	 let monthn = "Aug"
       elseif (month == 9)
	 let monthn = "Sep"
       elseif (month == 10)
	 let monthn = "Oct"
	 call append(line("$"), yline . "    Q 4     " . yline . yline )
       elseif (month == 11)
	 let monthn = "Nov"
       elseif (month == 12)
	 let monthn = "Dec"
       else
	 let monthn = "** ERROR: Unknown month ** "
       endif
       let mline = "--------------------"
       call append(line("$"), mline . "  " . monthn . " " . year . "  " . mline . mline )
    endif
    if (wd == 1)
       "call append(line("$"), "----- Week " . week . " (" . diy . "..) -----")
       call append(line("$"), "----- Week " . week . " -----")
    endif
    let date = dn . " " " beginn with name of day of week
    if (month < 10)
       let date = date . year . '-0' . month
    else
       let date = date . year . '-' . month
    endif
    " skip month, year
    let date = dn . " " " not interested in year, month
    if (day < 10)
       let date = date . '0' . day
    else
       let date = date . day
    endif
    " let date = date . " (" . diy . ")"
    call append(line("$"), date)

    let index = index + 1
    let day = day + 1
    let wd = wd + 1
  endwhile
endfunction

map <S-F7> :call Calendar(2002, 12, 30, 1, 1, 1000)<CR><CR>
" Dec 30, 2003 is Monday (day 1 in week), week 1 in 2003


Put the above code in your vimrc and call the function, here it is shown
with entries for 1000 days. Of course, if you do not use correct
arguments matching and existing day, all output will be mess.




