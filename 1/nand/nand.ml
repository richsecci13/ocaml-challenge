let nand1 (a : bool) (b : bool) : bool = 
  not (a && b)


let nand2 (a : bool) (b : bool) : bool = 
  if a
  then (* a è true *)
   (if b
    then (* b è true *) false
    else (* b è false *) true)
  else true

let nand3 (a : bool) (b : bool) : bool = 
  match (a, b) with
    | (true, true) -> false
    | _ -> true