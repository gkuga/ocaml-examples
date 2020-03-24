exception Exit of int

let main () = print_endline "Hello, World!"

let res =
  Printexc.print (fun () ->
      try
        main ();
        0
      with
        Exit x -> x
    ) ()

let () = exit res
