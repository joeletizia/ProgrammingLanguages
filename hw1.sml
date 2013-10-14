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

fun list_contains(elements : int list, element : int ) = 
  if null elements then
    false
  else
    if hd(elements) = element then true
    else list_contains(tl(elements), element)

fun number_in_months(dates : (int * int * int) list, months : int list) = 
  if null dates then 
    0
  else
    if list_contains(months, #2(hd(dates))) 
    then 1 + number_in_months(tl(dates), months)
    else 0 + number_in_months(tl(dates), months)


fun dates_in_month(dates : (int * int * int) list, month : int) = 
  if null dates then
    []
  else
    if #2(hd(dates)) = month
    then hd(dates) :: dates_in_month(tl(dates), month)
    else dates_in_month(tl(dates), month)

fun dates_in_months(dates : (int * int * int) list, months : int list) = 
  if null dates then
    []
  else
    if list_contains(months, #2(hd(dates))) 
    then hd(dates) :: dates_in_months(tl(dates), months)
    else dates_in_months(tl(dates), months)

fun get_nth(elements : string list, element : int) = 
  let
    fun keep_count(els : string list, ele : int, location : int) = 
      if null els then
        ""
      else
        if location = element
        then hd(els)
        else keep_count(tl(els), ele, location + 1)
  in
    keep_count(elements, element, 1)
  end


fun month_lookup(num : int) =
  let
    val months = ["January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"]
  in
    get_nth(months, num)
  end

fun date_to_string(date : (int * int * int))=
  month_lookup(#2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)

fun number_before_reaching_sum(num : int, elements : int list)=
  let
    fun keep_sum(num : int, elements : int list, location : int)= 
      if null elements then
        location
      else
        if num - hd(elements) <= 0 then location
        else keep_sum(num - hd(elements), tl(elements), location + 1)
  in
    keep_sum(num, elements, 0)
  end


fun what_month(num : int)= 
  let
    val days = [31,28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  in
    number_before_reaching_sum(num, days) + 1
  end

fun count_up(from : int, to : int)= 
  if from = to
  then [ to ]
  else from :: count_up(from + 1, to)

fun convert_to_months(ints : int list)= 
  if null ints then
    []
  else
    what_month(hd(ints)) :: convert_to_months(tl(ints))


fun month_range(from : int, to : int)= 
  let
    val days = [31,28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  in
    convert_to_months(count_up(from, to))
  end
