(* Project Euler, Problem 2
   By considering the terms in the Fibonacci sequence whose values do
   not exceed four million, find the sum of the even-valued terms.    *)

(* So called "naive" Fibonacci:

  let rec fibonacci = function
    | 0 -> 1
    | 1 -> 2
    | n -> fibonacci (n - 1) + fibonacci (n - 2);;

Let's use memoisation, instead; for the world of O(n) goodness!       *)

let fibonacci max = 
  let next = function
    | a :: b :: _ -> a + b
    | _           -> failwith "WTF?" in
  
  let rec generate m =
    let n = next m in
    if n < max then generate (n :: m)
               else m in

  generate [2; 1];;

let isEven = fun x -> x mod 2 = 0 in
let terms  = List.filter isEven (fibonacci 4000000) in
  print_int (List.fold_left (+) 0 terms);
  print_newline ();
