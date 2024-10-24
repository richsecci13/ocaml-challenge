let minmax3 (first : 'a) (second : 'b) (third : 'c) : 'x * 'y =
  if (first >= second && first >= third) then
    if (second > third) then
      (third, first)
    else
      (second, first)

  else if (second >= first && second >= third) then
    if (first > third) then
      (third, second)
    else
      (first, second)

  else if (first > second) then
    (second, third)
  else
    (first, third)

;;

(* first è il minore *)
assert (minmax3 10 20 30 = (10, 30));;
assert (minmax3 10 30 20 = (10, 30));;

(* second è il minore *)
assert (minmax3 20 10 30 = (10, 30));;
assert (minmax3 30 10 20 = (10, 30));;

(* third è il minore *)
assert (minmax3 30 20 10 = (10, 30));;
assert (minmax3 20 30 10 = (10, 30));;