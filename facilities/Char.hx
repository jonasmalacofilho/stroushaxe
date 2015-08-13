/**
  A basic Char type for these examples.
**/
abstract Char(Int) to Int {
    function new(code:Int)
        this = code;

    @:to function toString():String
        return String.fromCharCode(this);

    @:from static function fromString(s:String):Char
    {
        if (s.length != 1)
            throw "Expected a single character string";
        return new Char(StringTools.fastCodeAt(s, 0));
    }

    /**
      Force an Int in a Char, assuming that it will fit.
    **/
    public static function forceInt(c:Int):Char
        return new Char(c);
}

