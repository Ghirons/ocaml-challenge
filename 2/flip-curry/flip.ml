let flip1 f =
  fun x y -> f y x;;

let flip2 f x y = f y x;;

let sub x y = x - y;;
let flipped_sub1 = flip1 sub;;
let flipped_sub2 = flip2 sub;;