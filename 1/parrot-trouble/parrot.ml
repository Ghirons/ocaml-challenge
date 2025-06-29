let parrot (talk:bool) (time:int) : bool option = 
  if time<0 || time>23 then None
  else if talk=false then Some false
  else if time<7 || time>20 then Some true
  else Some false;; 