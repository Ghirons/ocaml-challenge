type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;

let decide_exam (vote1:vote) (vote2:vote) (vote3:vote):bool = 
  if vote1 = StrongReject || vote2 = StrongReject || vote3 = StrongReject then false
  else begin 
    if vote1=StrongAccept || vote1=WeakAccept then 
      if vote2=StrongAccept || vote2=WeakAccept || vote3=StrongAccept || vote3=WeakAccept then true
      else false
    else if vote2=StrongAccept || vote2=WeakAccept then 
      if vote3=StrongAccept || vote3=WeakAccept then true
      else false 
    else false
  end