let hot (void : unit) : string = 
  let value = Random.int(2) in

match value with
| 1 -> "Head"
| _ -> "Tail"

;;