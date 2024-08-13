exception My_error of string

let () =
  try
    (* raise (Sys_error "System error"); *)
    (*raise (My_error "My error") *)
    raise (Failure "Failure")
  with
    | Sys_error(msg) -> (print_endline msg);
    | My_error(msg) -> (print_endline msg);
    (*| _ -> (print_endline "Catch any errors");*)
  ()
