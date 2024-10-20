let movie_rating (vote1 : int) (vote2 : int) (vote3 : int) : string =
  if ((vote1 < 1 || vote1 > 5) ||
      (vote2 < 1 || vote2 > 5) ||
      (vote3 < 1 || vote3 > 5)) then
        failwith "Out of bounds"
  else if ((vote1 + vote2 + vote3) == 15) then
    "Masterpiece"
  else if ((vote1 + vote2 + vote3) == 14) then
    "Highly Recommended"
  else if ((vote1 + vote2 + vote3) >= 11 &&
    ((vote1 >= 4 && vote2 >= 4 && vote3 >= 3) ||
     (vote1 >= 4 && vote3 >= 4 && vote2 >= 3) ||
     (vote2 >= 4 && vote3 >= 4) && vote1 >= 3)) then
      "Recommended"
  else
    "Mixed Reviews"

  ;;

assert (movie_rating 5 5 5 = "Masterpiece");;
assert (movie_rating 5 5 4 = "Highly Recommended");;
assert (movie_rating 5 4 5 = "Highly Recommended");;
assert (movie_rating 4 5 5 = "Highly Recommended");;
assert (movie_rating 4 4 3 = "Recommended");;
assert (movie_rating 4 3 4 = "Recommended");;
assert (movie_rating 3 4 4 = "Recommended");;
assert (movie_rating 5 5 3 = "Recommended");;
assert (movie_rating 1 4 4 = "Mixed Reviews");;
assert (movie_rating 5 5 3 = "Recommended");;
assert (movie_rating 5 5 2 = "Mixed Reviews");;