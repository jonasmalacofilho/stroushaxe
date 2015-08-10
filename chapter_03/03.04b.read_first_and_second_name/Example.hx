/**
  Read first and second name.

  Exercise some String operators.
**/


// we can explicitly import the Facilities module to this module, although it
// is not necessary
import Facilities;

class Example {
    static function main()
    {
        Sys.println("Please enter your first and second names");
        var first = Facilities.getWord();  // read first string
        var second = Facilities.getWord();  // read second string
        var name = first + " " + second;  // concatenate strings
        Sys.println('Hello, $name\n');
    }
}


/**
  Notes
  -----

  "Importing" a module makes it explicitly available in this module; later we
  will see cases where it is particularly advantageous to do this.
**/
