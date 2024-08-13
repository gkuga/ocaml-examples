
- [Error Handling](https://ocaml.org/docs/error-handling)
- [Module Printexc](https://ocaml.org/manual/5.2/api/Printexc.html)
  - Printexc.catch fn x is similar to Printexc.print, but aborts the program with exit code 2 after printing the uncaught exception. This function is deprecated: the runtime system is now able to print uncaught exceptions as precisely as Printexc.catch does.
