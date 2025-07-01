let minmax3 a b c :('a*'a) = 
  if compare a b <= 0 then 
    if compare a c <= 0 then 
      if compare b c >=0 then (a, b) 
      else (a, c)
    else (c, b)
  else
    if compare b c <= 0 then 
      if compare a c >=0 then (b, a) 
      else (b, c)
    else (c, a);;