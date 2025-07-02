let option_map (a: 'a -> 'b) = 
  fun x -> match x with
    |Some y -> Some(a y)
    |None -> None;;