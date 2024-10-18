type weekday = Mo | Tu | We | Th | Fr
type course = ALF | LIP

let isLecture (weekday : weekday) (course : course): bool = 
  (if course = ALF  then
    if weekday = Tu || weekday = Th || weekday = Fr then
      true
    else 
      false
  else 
    if weekday = We || weekday = Th then
      true
    else 
      false);;
