let incr_opt (a : int option) : int option =
  match a with
  | None -> None
  | Some a -> Some (a + 1)