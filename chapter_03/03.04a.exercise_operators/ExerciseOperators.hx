/**
  Simple program to exercise operators.

  Use some numeric operators.
**/


class ExerciseOperators {
    static function main()
    {
        Sys.println("Please enter a floating-point value:");  // `Sys.println` automatically adds the newline at the end
        var n = Std.parseFloat(Facilities.getWord());
        Sys.println('n == $n');
        Sys.println('n+1 == ${n+1}');
        Sys.println('three times n == ${3*n}');
        Sys.println('twice n == ${n+n}');
        Sys.println('n squared == ${n*n}');
        Sys.println('half of n == ${n/2}');
        Sys.println('square root of n == ${Math.sqrt(n)}');
    }
}


/**
  Notes
  -----

  For more details, check out [Numeric Operators] on the Haxe Manual.

  Not only variables or other simple expressions can be used in a string
  interpolation.  Complex expressions can be inserted by wraping them in
  braces.

  [Numeric Operators]: http://haxe.org/manual/types-numeric-operators.html
**/

