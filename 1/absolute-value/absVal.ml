let abs (a : int) : int =
  if (a < 0) then -a
  else a

let abs2 (a : int) : int =
  match a with
  | a when (a > 0) -> a
  | a -> -a