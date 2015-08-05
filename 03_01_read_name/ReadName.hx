/**
  Read and write a first name.
**/
class ReadName {
    static function main()
    {
        Sys.print("Please enter your first name (followed by 'enter'):\n");
        var firstName = Sys.stdin().readLine();  // `firstName` is a variable of type (inferred) `String`
        $type(firstName);  // during compilation this will print the inferred type
        Sys.print('Hello, $firstName!\n');
    }
}

/**
  Notes:

  1) `Sys.stdin()` returns the standard input stream;

  2) There is an equivalent `Sys.stdout()` accessor for the standard output
  stream and, in fact, `Sys.print()` is just a shorthand to
  `Sys.stdout().writeString()`
**/

