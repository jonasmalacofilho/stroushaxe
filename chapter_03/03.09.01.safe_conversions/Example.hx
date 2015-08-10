/**
  Safe conversions.
**/


class Example {
    static function main()
    {
        var d1:Float = 2.3;
        var d2 = d1 + 2;  // 2 is converted to 2.0 before adding
        if (d1 < 0)  // 0 is converted to 0.0 before comparison
            Sys.println("d1 is negative");
    }
}

/**
  Notes
  -----

  Haxe does not have a built in equivalent type for the C++ `char`.
**/

