let max_nat (a : int) (b : int) : int =
  if a < 0
    then failwith("a è minore di 0")
else 
  if b < 0
    then failwith("b è minore di 0")
else
  if (a > b) then a
    else b