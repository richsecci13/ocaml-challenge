let mux1 (s0 : bool) (a : bool) (b : bool) : bool =
  (s0 && a) || (not s0 && b)

let mux2 (s0 : bool) (a : bool) (b : bool) : bool =
  if s0 then a
    else b

let mux3 (s0 : bool) (a : bool) (b : bool) : bool =
  match (s0) with
  | (true) -> a
  | (false) -> b

let mux4 (s1 : bool) (s0 : bool) ( a0 : bool) (a1 : bool) (a2 : bool) (a3 : bool) : bool =
  match (s1, s0) with
  | (false, false) -> a0
  | (false, true) -> a1
  | (true, false) -> a2
  | (true, true) -> a3