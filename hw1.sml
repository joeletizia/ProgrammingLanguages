fun is_older(foo : (int * int * int), bar : (int * int * int)) = 
  if #1 foo > #1 bar 
  then false
  else 
    if #2 foo > #2 bar then false
    else
      if #3 foo >= #3 bar then false
      else true

fun number_in_month(dates : (int * int * int) list, month : int) = 
  if null dates then 
    0
  else
    if #2(hd(dates)) = month
    then 1 + number_in_month(tl(dates), month)
    else 0 + number_in_month(tl(dates), month)

