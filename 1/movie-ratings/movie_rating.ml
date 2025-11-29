let movie_rating_2 a b c :string = 
  if a+b+c>15 then failwith "impossibile"
  else if a<1 || b<1 || c<1 then failwith "impossibile"
  else if a>5 || b>5 || c>5 then failwith "impossibile"
  else match (a+b+c) with
  |15 -> "Masterpiece" 
  |14 when (a=5 && b=5 || a=5 && c=5 || b=5 && c=5) -> "Highly"
  |d when (d>=11 && (a=4 && b=4 && c>=3) || (a=4 && c=4 && b>=3) || (c=4 && b=4 && a>=3)) -> "Raccomended"
  |_ -> "Mixed";;