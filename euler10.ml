(* Project Euler, Problem 10
   Find the sum of all the primes below two million.                  *)

(* MkI    Same generation technique as used in euler02 -- slow
   MkII   Recursive Sieve of Eratosthenes -- blows the stack
   MkIII  Imperative (while loop) SoE -- also blows the stack         
   
   Reverting to MkI: It's slow, but it works!                         *)

let primes max =
  let isPrime p x =
    let hasDivisor a = (x mod a = 0) 
    (* With short-circuit evaluation, reversing will make it quicker. *)
    and pOrdered = List.rev p in 
    not (List.exists hasDivisor pOrdered) in

  let rec generate p test =
    if test < max then
      let nextTest = test + 2 in
      if isPrime p test then generate (test :: p) nextTest
                        else generate p nextTest
    else p in

  generate [5; 3; 2] 7;;

let answer = List.fold_left (+) 0 (primes 2000000) in
  print_int answer;
  print_newline ();;
