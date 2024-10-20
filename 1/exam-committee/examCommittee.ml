type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam (vote1 : vote) (vote2 : vote) (vote3 : vote) : bool =
  if (vote1 == StrongReject || vote2 == StrongReject || vote3 == StrongReject) then
    false
  else if ((vote1 == WeakReject) && (vote2 == WeakReject) ||
           (vote1 == WeakReject) && (vote3 == WeakReject) ||
           (vote2 == WeakReject) && (vote3 == WeakReject)) then
    false
  else true;;