
let min_fail x = if x<0
  then failwith("minore di 0");;



let max_nat (a:int) (b:int) =
  min_fail a,
  min_fail b,
  if a>b
  then a
  else b;;

  max_nat 5 3;;