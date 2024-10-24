type card = Joker | Val of int;;

let win (player : card) (dealer : card) : bool =

if ((player != Joker && (player < (Val 1) || (player > (Val 10)))) ||
    (dealer != Joker && (dealer < (Val 1) || (dealer > (Val 10))))) then
      failwith "Out of bounds"

else 
  
if (player = Joker && dealer = Joker) then
  false

else if (player = Joker || dealer = Joker) then

  if (player = Joker) then
    true
  else
    false

else if (player > dealer) then
  true

else 
  false
;;

assert(win Joker Joker = false);;
assert(win Joker (Val 6) = true);;
assert(win (Val 6) Joker = false);;
assert(win (Val 6) (Val 3) = true);;

assert(win (Val 10) (Val 11) = false);;