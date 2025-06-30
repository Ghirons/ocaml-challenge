let movie_rating a b c :string = 
  if a+b+c>15 then failwith "impossibile"
  else if a<1 || b<1 || c<1 then failwith "impossibile"
  else begin
    if a+b+c=15 then "Masterpiece"
    else if a+b+c>=14 && ((a>=5 && b>=5)||(a>=5 && c>=5)||(c>=5 && b>=5)) then "Highly Recommended"
    else if a+b+c>=11 && ((a>=4 && b>=4)||(a>=4 && c>=4)||(c>=4 && b>=4)) then "Recommended"
    else "Mixed Reviews"
  end;;