let mux1 (s0 : bool) (a : bool) (b : bool) : bool =
  (s0 && a) || (not s0 && b)
  

let mux2 (s0 : bool) (a : bool) (b : bool) : bool =
  if s0 then a
    else b

let mux3 (s0 : bool) (a : bool) (b : bool) : bool =
  match (s0, a, b) with
  | (true, _, _) -> a
  | (false, _, _) -> b