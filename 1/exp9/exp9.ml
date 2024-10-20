let square (num : int) : int = num * num;;

let exp9 (num : int) : int =
  square(square(square num)) * num