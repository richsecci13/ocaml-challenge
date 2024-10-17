let xor1 (a : bool) (b : bool) : bool = 
  not a && b || a && not b

let xor2 (a : bool) (b : bool) : bool =
  if a
    then (* a è true *)
   (if b
    then (* anche b è true *) false
    else (* a è true e b false *) true)
  else (* a è false *)
    (if b (* a è false e b è true *)
       then true
    else false) (* sono entrambi false *)

let xor3 (a : bool) (b : bool) : bool =
  match (a, b) with
    | (false, false) -> false
    | (true, true) -> false
    | _ -> true