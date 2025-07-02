let both_true (p:'a->bool) (q:'a->bool) = 
  fun x -> p x && q x;;

let is_positive x = x > 0;;
let is_even x = x mod 2 = 0;;
let is_positive_and_even = both_true is_positive is_even;;