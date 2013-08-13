(* Project Euler, Problem 10
   Find the sum of all the primes below two million.                  *)

(* Fixed recursive Sieve of Eratosthenes, with thanks to Sean McLaughin
   for pointing out the tail recursion (or lack thereof) issue, plus
   OCaml style tips (http://stackoverflow.com/a/18214988/876937)      *)

let primes max =
  let rec sieve = function
    | []     -> failwith "WTF?"
    | h :: t -> let doesntDivide x = (x mod h <> 0) in
                let nonDivisors = List.filter doesntDivide t in
                match nonDivisors with
                  | [] -> [h]
                  | t  -> (h :: sieve nonDivisors) in

  let rec range memo a b =
    if a > b then memo
             else range (a :: memo) (a + 1) b in

  let p = List.rev (range [] 2 max) in

  sieve p;;

let answer = List.fold_left (+) 0 (primes 1999999) in
  print_int answer;
  print_newline ();;
