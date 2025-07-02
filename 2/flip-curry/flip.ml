let flip (a:'a -> 'b -> 'c) = 
  fun x y -> a y x;;

(*funzioni prova*)
let sub x y = x - y;;
let flipped_sub = flip sub;;