class Facilities {
    // emulate the conventional C++ `cin` behaviour for reading strings,
    // that is, terminating by any whitespace
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

