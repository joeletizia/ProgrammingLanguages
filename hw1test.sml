(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)


val test1 = is_older((1,2,3),(2,3,4)) = true
val test12 = is_older((1985,10,6),(2013,10,6)) = true
val test13 = is_older((9999,10,6),(2013,10,6)) = false

val test2 = number_in_month([(2012,2,28),(2013,12,1)],2) = 1
val test21 = number_in_month([(2012,4,28),(2013,12,1)],2) = 0
val test22 = number_in_month([],2) = 0

val test3 = number_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
val test31 = number_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[1,5,7]) = 0
val test32 = number_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[10,12,4]) = 2
val test33 = number_in_months([],[1,3,4]) = 0

val test4 = dates_in_month([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]
val test41 = dates_in_month([(2012,1,28),(2013,12,1)],2) = []

val test5 = dates_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]

val test6 = get_nth(["hi", "there", "how", "are", "you"], 2) = "there"
val test61 = get_nth([], 2) = "" 

val test7 = date_to_string((2013, 6, 1)) = "June 1, 2013"
val test71 = date_to_string((2013, 10, 6)) = "October 6, 2013"

val test8 = number_before_reaching_sum(10, [1,2,3,4,5]) = 3
val test81 = number_before_reaching_sum(11, [1,2,3,4,5]) = 4

val test9 = what_month(70) = 3
val test91 = what_month(1) = 1
val test92 = what_month(365) = 12


val test10 = month_range(31, 34) = [1,2,2,2]
val test101 = month_range(1, 15) = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]

val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)
val test111 = oldest([]) = NONE
val test112 = oldest([(2012,2,28),(2012,2,28)]) = SOME (2012,2,28)
