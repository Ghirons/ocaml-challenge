let double x = x * 2;;
let square x = x * x;;



let comp (a:'b->'c) (b:'a->'b) =
  fun x -> a (b x);;