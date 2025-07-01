type card = Joker | Val of int;;

let win (a:card) (b:card):bool =
  if (a!=Joker && (a<(Val 1) || a>(Val 10))) || (b!=Joker && (b<(Val 1) || b>(Val 10))) then failwith "no"
  else begin
    match (a, b) with 
    | (Joker, Joker) -> false
    | (Joker, _) -> true
    | (_, Joker) -> false
    | (_, _) -> if a>b then true else false
  end;;