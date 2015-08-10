/**
  Unsafe conversions...  are not usually allowed in Haxe.
**/


class Example {
    static function main()
    {
        while (true) {
            var d:Float = Std.parseFloat(Facilities.getWord());
            var i:Int = d;  // compile time error: Float should be Int
            Sys.println('d==$d i==$i');
        }
    }
}

