/**
  Read name and age.
**/

class ReadNameAndAge {
    static function main()
    {
        Sys.print("Please enter your first name and age\n");
        var firstName = Facilities.getWord();  // read a string
        $type(firstName);  // during compilation, show the inferred type of `firstName` (String)
        var age = Std.parseInt(Facilities.getWord());  // read a string and parse it as int
        $type(age);  // show the inferred type of `age` (Null<Int>, that is, a nullable integer)
        Sys.print('Hello, $firstName (age "$age")\n');  // build the output string first using 'interpolation'
    }
}

/**
  Notes
  -----

  We use a `Facilities` class so that these Haxe examples can be as close as
  possible to the original C++ ones.  The class lives in the
  `../facilites/Facilites.hx` module and it is not part of standard Haxe
  library, but can be left alone for now.

  The purpose of `Facilities.readWord()` is to emulate the default C++ `cin`
  behavior for reading strings: read characters until whitespace is found and
  also ignore any preceding whitespace.

  `$type()` is builtin on the compiler and prints, during compilation, the known
  or inferred type of some variable or expression.
**/

