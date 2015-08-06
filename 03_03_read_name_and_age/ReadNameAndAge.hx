import Facilities;  // include facility functions from a module called Facilites

/**
  Read name and age.
**/
class ReadNameAndAge {
    static function main()
    {
        Sys.print("Please enter your first name and age\n");
        var firstName = Facilities.readWord();  // read a string
        var age = Std.parseInt(Facilities.readWord());  // read an int
        Sys.print('Hello, $firstName (age "$age")\n');
    }
}

