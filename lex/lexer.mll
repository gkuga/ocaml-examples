{
exception Eof
}
rule token = parse
    [' ' '\t']     { print_string (Lexing.lexeme lexbuf) }
  | ['\n' ]        { print_string "\\n" }
  | ['0'-'9']+     { print_string (Lexing.lexeme lexbuf) }
  | '+'            { print_string (Lexing.lexeme lexbuf) }
  | '-'            { print_string (Lexing.lexeme lexbuf) }
  | '*'            { print_string (Lexing.lexeme lexbuf) }
  | '/'            { print_string (Lexing.lexeme lexbuf) }
  | '('            { print_string (Lexing.lexeme lexbuf) }
  | ')'            { print_string (Lexing.lexeme lexbuf) }
  | eof            { raise Eof }
