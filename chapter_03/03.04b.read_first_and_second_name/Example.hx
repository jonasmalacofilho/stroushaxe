/**
  Read first and second name.

  Exercise some String operators.
**/


// include the Streams module and everything from it
import Streams;

class Example {
    static function main()
    {
        Sys.println("Please enter your first and second names");
        var first:Ref<String> = "";  // `first` is a reference to some String, initialized to ""
        var second:Ref<String> = "";
        Streams.cin >> first;  // read second string
        Streams.cin >> second;  // read first string
        var name = first.value + " " + second.value;  // concatenate strings, explicitly calling the underlying strings from the reference types
        Sys.println('Hello, $name\n');
    }
}


/**
  Notes
  -----

  "Importing" a module...  TODO

  References and how Haxe basic types are only passed by value within the Haxe
  language...  TODO

  Dereferencing is necessary here, but this is not usual...  TODO
**/

