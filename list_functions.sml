fun sum_list (xs : int list) = 
  if null xs
  then 0
  else sum_list(tl xs) + hd(xs)

fun count_down(x : int) = 
  if x = 0
  then []
  else x:: count_down(x - 1)

fun append(xs : int list, ys : int list) = 
  if null xs
  then ys
  else (hd xs) :: append((tl xs), ys)

fun sum_pair_list (x : (int * int) list) = 
  if null x
  then 0
  else
    #1 (hd x) + #2 (hd x) + sum_pair_list(tl x)

fun firsts (x : (int * int) list) = 
  if null x
  then []
  else
    #1(hd x) :: firsts(tl x)
