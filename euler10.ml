(* Project Euler, Problem 10
   Find the sum of all the primes below two million.                  *)

(* Fixed recursive Sieve of Eratosthenes, with thanks to Sean McLaughin
   for pointing out the lack of tail call recursion in the range
   function, plus OCaml code style tips.
   
   http://stackoverflow.com/a/18214988/876937                         *)

let primes max =
  let doesntDivideBy y x = (x mod y <> 0) in

  let rec sieve found unsieved = match unsieved with
    | []     -> found
    | h :: t -> let nonDivisors = List.filter (doesntDivideBy h) t in
                sieve (h :: found) nonDivisors in

  let rec range memo a b =
    if a > b then memo
             else range (a :: memo) (a + 1) b in

  let p = List.rev (range [] 2 max) in

  sieve [] p;;

(* I'm determined to get this to work!! The above is now my prime sieve
   algorithm with tail call recursion and the summation now converts to
   Big_int because 31-bits aren't enough to store the result...

   Fingers crossed!                                                   *)

open Big_int;;
let bigPrimes = List.map big_int_of_int (primes 1999999) in
let answer = List.fold_left add_big_int zero_big_int bigPrimes in
  print_string (string_of_big_int answer);
  print_newline ();;
