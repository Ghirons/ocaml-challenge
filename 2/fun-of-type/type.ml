let f1 a = if a > 0 then true else false;;

let f2 a = match a with
  |true->1
  |false->0;;

let f3 a = 
  if a>0 then (a, true) else (a, false);;

let f4 (a, b) =
  match (a, b) with 
  |(_, true) -> if a mod 2 = 0 then 0 else -1
  |(_, false) -> if a mod 2 <> 0 then 1 else 0;; 

let f5 a = 
  fun x -> x*a;;

let f6 a = 
  fun x -> if x mod a = 0 then true else false;;

let f7 a = 
  match a with 
  |true -> fun x -> x>0
  |false -> fun x -> x<0;;

let f8 a = 
  if a then 
    fun x -> if x then 1 else 0
  else fun x -> if not x then 1 else 0;;

let f9 a = 
  fun x -> if a then x*10 else x;;

let f10 f = (f 10)*2;; 

let f11 f = 
  match f 11 with
    |true -> 1
    |false -> 0;;

let f12 f = (f true) * 10;;

let f13 f = 
  match f 13 with
  | true -> false
  | false -> true;;

let f14 f = if f true then 1 else 0;;

let f15 a (b, c) = a+b mod a+c;;

let f16 a = 
  fun x -> fun y -> (x+y)*a;;

let f17 f = 
  fun x -> f(x*2)/2;;

let f18 f = f (fun x -> x*x) / 2;;

let f19 f = fun x -> if x then (f 19) mod 2 = 0 else false;;

let f20 f = 
  if f 20 then 
    fun x -> if x 
      then 20 
      else 0 
  else fun x -> if x then 0 else 20;;