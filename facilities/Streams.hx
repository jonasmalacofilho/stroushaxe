import haxe.io.Input in HaxeInput;

// C++ inspired stream states
enum StreamState {
    Good;
    Eof;
    Fail;
    Bad;
}

// TODO base stream buffer
class StreamBuf {
}

// input stream buffer
@:allow(InputStream)
class InputStreamImpl extends StreamBuf {
    var h:HaxeInput;
    var r:StreamState;

    public function good()
        return r.match(Good);

    public function eof()
        return r.match(Eof);

    public function fail()
        return r.match(Fail);

    public function bad()
        return r.match(Bad);

    public function new(h:HaxeInput)
        this.h = h;
}

// a reference type required for passing Haxe basic types;
// basic types are, within the language, passed by value, not by reference
typedef Ref<T> = tink.core.Ref<T>;

// C++/istream inspired input stream
@:forward
abstract InputStream(InputStreamImpl) from InputStreamImpl {
    // useful for `while (stream) { ... }` code
    @:to function toBool()
        return this.r.match(Good);

    @:from static function fromInput(h:HaxeInput):InputStream
        return new InputStreamImpl(h);

    // FIXME
    @:op(A >> B) function readIntoStringRef(x:Ref<String>):InputStream
    {
        var whiteSpace = [" ", "\n", "\t"];
        var buffer = new StringBuf();
        var char;
        try {
            do {
                char = this.h.readString(1);
            } while (Lambda.has(whiteSpace, char));
            do {
                buffer.add(char);
                char = this.h.readString(1);
            } while (!Lambda.has(whiteSpace, char));
            this.r = Good;
        } catch (e:haxe.io.Eof) {
            this.r = Eof;
        } catch (e:Dynamic) {
            this.r = Bad;
        }
        x.value = buffer.toString();
        return this;
    }
}

// helper
class Streams {
    public static var cin(default, null):InputStream;

    static function __init__()
    {
        cin = Sys.stdin();
    }
}

