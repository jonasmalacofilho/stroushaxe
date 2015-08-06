import Facilities;

class Example {
    static function main()
    {
        Sys.println("Please enter your first and second names");
        var first = Facilities.readWord();  // read first string
        var second = Facilities.readWord();  // read second string
        var name = first + " " + second;  // concatenate strings
        Sys.println('Hello, $name\n');
    }
}

