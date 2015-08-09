/**
  Read name and age.

  Deal with basic input of non-strings.
**/


class ReadNameAndAge {
    static function main()
    {
        Sys.print("Please enter your first name and age\n");
        var firstName = Facilities.getWord();  // read a string
        var age = Std.parseInt(Facilities.getWord());  // read a string and parse it as int
        $type(firstName);  // during compilation, show the inferred type of `firstName` (String)
        $type(age);  // show also the inferred type of `age` (Null<Int>, that is, a nullable integer)
        Sys.print('Hello, $firstName (age "$age")\n');  // build the output string first using 'interpolation'
    }
}


/**
  Notes
  -----

  We use a `Facilities` class so that these Haxe examples can be as close as
  possible to the original C++ ones.  This class lives in the
  `../facilites/Facilites.hx` module and it is not part of standard Haxe
  library, but can be left alone for now.

  The purpose of `Facilities.readWord()` is to emulate the default C++ `cin`
  behavior for reading strings: read characters until whitespace is found and
  also ignore any preceding whitespace.

  `$type()` is builtin on the compiler and prints, during compilation, the known
  or inferred type of some variable or expression.

  Finally, instead of writing each part of our output message individually, we
  compose a single string by using 'interpolation'.  Haxe allows any string
  literal defined with single quotes (as opposed to the regular double quoted
  strings) to be interpolated, and uses the `$` character to mark what will be
  interpreted as an expression and replaced by its actual value.
**/

