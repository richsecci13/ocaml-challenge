let is_even_x (num : int) : bool =
  let rem = num mod 2 in
  match rem with
  | 0 -> true
  | _ -> false

  let win (a : int) (b : int) : int =
    if ((a < 1 || a > 5) && (b < 1 || b > 5)) then
      0
    else if (b < 1 || b > 5) then
      (1)
    else if (a < 1 || a > 5) then
      (-1)
    else if ((is_even_x (a + b)) == true) then
      1
    else 
      (-1)

    ;;

assert(win 5 5 = 1);;
assert(win 9 6 = 0);;
assert(win 9 1 = -1);;
assert(win 1 6 = 1);;
assert(win 5 4 = -1);;
assert(win 1 2 = -1);;