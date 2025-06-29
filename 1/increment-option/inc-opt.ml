let inc_opt (arg:int option):int option = match arg with
 None -> None
| Some x -> Some(x+1);;