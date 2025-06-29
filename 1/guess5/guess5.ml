let guess5 (n:int) : bool * int = if n <1 || n>5 then failwith "NO" 
  else let x = Random.int(5)+1 in 
    if n=x then (true, x) else
      (false, x);;