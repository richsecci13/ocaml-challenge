type season = Spring | Summer | Autums | Winter

let squirrel_play (temp : int) (sn : season) : bool =
if (sn == Summer) then
  if (temp >= 15 && temp <= 35) then
    true
  else
    false
  else if (temp >= 15 && temp <= 30) then
    true
  else false;;


assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;