/**
  Read and write a first name.

  Handle basic input.
**/


class ReadName {
    static function main()
    {
        Sys.print("Please enter your first name (followed by 'enter'):\n");
        var firstName:String;  // `firstName` is a variable of type `String`
        firstName = Sys.stdin().readLine();  // read a line from the standard input
        Sys.print("Hello, ");
        Sys.print(firstName);
        Sys.print("!\n");
    }
}


/**
  Notes
  -----

  The explicit type `:String` for `firstName` is optional and could be inferred
  by the compiler from the subsequent assignment.

  `Sys.stdin()` returns the standard input stream; then, `readLine()` reads
  characters from that stream until a newline is found.

  There is an equivalent `Sys.stdout()` accessor for the standard output stream;
  in fact, `Sys.print()` is just a shorthand to `Sys.stdout().writeString()`
**/

