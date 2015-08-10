/**
  Not type safe: using variables before they have been initialized.
**/


class Example {
    static function main()
    {
        var x:Float;  // we "forgot" to initialize, the value of x in undefined
        trace(x);  // show a dump of the expression x
        var y:Float = x;  // the value of y is undefined
        trace(y);
        var z:Float = 2.0 + x;  // the behavior of + and the value of z is undefined
        trace(z);
    }
}


/**
  Notes
  -----

  Haxe has the following basic numeric types: Int (a 32-bit signed integer),
  Float (a double precision 64-bit floating point number).

  The addition operator `+` can – and in this case will – generate runtime
  errors.

  `trace()` is a readily available function from the Haxe standard library that
  is useful for debugging.  It will, by default, output the value of the
  expression it receives, but can also be redefined to do something else or even
  removed altogether with a compiler switch.
**/

