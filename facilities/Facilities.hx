/**
  Utility functions.

  They are used to fill the gaps between what is used from the C++ standard
  library in Stroustrup examples and what is directly available to Haxe.
**/
class Facilities {
    /**
      Get a word (whitespace delimited string) from the standard input.

      Emulates the conventional C++ `cin` behaviour for reading strings, that
      is, by reading until whitespace if found and by ignoring any preceding
      whitespace.
    **/
    public static function readWord():String
    {
        var whiteSpace = [" ", "\n", "\t"];
        var buffer = new StringBuf();
        var char;
        try {
            do {
                char = Sys.stdin().readString(1);
            } while (Lambda.has(whiteSpace, char));
            do {
                buffer.add(char);
                char = Sys.stdin().readString(1);
            } while (!Lambda.has(whiteSpace, char));
        } catch (e:haxe.io.Eof) {}
        return buffer.toString();
    }
}

