(* Project Euler, Problem 1
   Find the sum of all the multiples of 3 or 5 below 1000.            *)

let printAnswer t x =
  print_string  t;
  print_string  " Solution: ";
  print_int     x;
  print_newline ();;

(* Formulaic Solution

   Sum of terms between a and b (inclusive), with step i:
   S(a, b, i) = n (a + b) / 2
                where n is the number of terms

   Therefore,
   Answer = S(3, 999, 3) + S(5, 995, 5) - S(15, 990, 15)              *)

let sumTerms a b i =
  let terms = ((b - a) / i) + 1 in
  terms * (a + b) / 2;;

let answer = (sumTerms 3 999 3) + (sumTerms 5 995 5) - (sumTerms 15 990 15) in
  printAnswer "Formulaic" answer;;

(* "Functional Programming" Solution

   Generate the list of integers that are multiples of 3 or 5, then
   fold over summation.                                               *)

let sumFizzBuzz a b = 
  let fizzBuzz i j =
    let rec range u v = 
      if u > v then []
               else u :: range (u + 1) v

    and isFizzBuzz =
      fun x -> x mod 3 = 0 || x mod 5 = 0 in
    
    List.filter isFizzBuzz (range i j) in
  
  List.fold_left (+) 0 (fizzBuzz a b);;

let answer = sumFizzBuzz 1 999 in
  printAnswer "FP" answer;;
