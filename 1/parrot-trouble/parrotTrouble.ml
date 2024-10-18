let parrot_trouble (t : bool) (h : int) : bool option =
  if (h < 0 || h > 23) then
    None
  else if (h < 7 || h > 20) then
    if t then 
      Some true
    else 
      Some false
  else 
    Some false