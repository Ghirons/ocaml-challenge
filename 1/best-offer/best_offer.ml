let max (a:int option) (b:int option) :int option = 
  if (a=None && b=None) then None
  else if a=None then b
  else if b=None then a
  else if a>b then a
  else b;;

let best_offer (a:int option) (b:int option) (c:int option): int option = 
  if (a=None && b=None && c=None) then None
  else max (max a b) c;;


let best_offer (a:int option) (b:int option) (c:int option): int option = 
if (a=None && b=None && c=None) then None
else let max (d:int option) (e:int option) :int option = 
  match (d, e) with
  |None, None -> None
  |None, _ -> e
  |_, None -> d
  |_, _ when d>=e -> d
  |_, _ -> e in
  max (max a b) c;;
