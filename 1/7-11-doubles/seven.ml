let seven_eleven_doubles():(bool*int*int) =
  let d1 = Random.int(6)+1 and 
  d2 = Random.int(6)+1 in 
  if d1=d2 then (true, d1, d2) else
    match d1+d2 with
    |7 -> (true, d1, d2)
    |11 -> (true, d1, d2)
    |_ -> (false, d1, d2);;