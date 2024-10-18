type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture (d : weekday) (c : course) : bool =
  if (c == ALF)
    then if (d == Tu || d == Th || d == Fr)
      then true
    else false
  else if (c == LIP)
    then if (d == We || d == Th)
      then true
    else false
else false;;

(* Test Settimanale con ALF *)
assert(isLecture Mo ALF = false);;
assert(isLecture Tu ALF = true);;
assert(isLecture We ALF = false);;
assert(isLecture Th ALF = true);;
assert(isLecture Fr ALF = true);;

(* Test Settimanale con LIP *)
assert(isLecture Mo LIP = false);;
assert(isLecture Tu LIP = false);;
assert(isLecture We LIP = true);;
assert(isLecture Th LIP = true);;
assert(isLecture Fr LIP = false);;