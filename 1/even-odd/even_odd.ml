let is_even (a:int) :bool = 
  match (a mod 2) with
  | 0 -> true
  | 1 -> false;;
  
let win (a:int) (b:int):int =
  if (a<1 || a>5) && (b<1 || b>5) then 0
  else if (a<1 || a>5) then -1
  else if (b<1 || b>5) then 1
  else begin
    match is_even(a+b) with
    |true -> 1
    |false -> -1
  end;;