let comp f g = 
  fun x -> f (g x);;  
let double x = x * 2;;
let square x = x * x;;