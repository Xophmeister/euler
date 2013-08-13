(* Project Euler, Problem 10
   Find the sum of all the primes below two million.                  *)

(* Using the same building/generation technique (which, to be honest,
   I'm not sure qualifies as "proper" memoisation, but never mind) as in
   euler02.ml works, but it becomes very slow when the parameter is
   increased :(

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

   Let's try a good ol' Sieve of Eratosthenes...                      *)

let primes max =
  let rec range a b =
    if a > b then []
             else a :: range (a + 1) b in

  let tail = ref (range 2 max)
  and p    = ref [] in

  while !tail <> [] do
    let h = List.hd !tail
    and t = List.tl !tail in
    let doesntDivide x = (x mod h <> 0) in
    let newTail = ref (List.filter doesntDivide t) in

    tail := !newTail;
    p := h :: !p
  done;
  
  !p;;
