/**
  Read and compare names.

  Exercise more String operators.
**/


// we can import specific functions from Facilities and Sys so that they can
// be called directly
import Facilities.getWord;  // use `getWord(x)` instead of `Facilities.getWord(x)`
import Sys.println;  // use `println(x)` instead of `Sys.println(x)`

class Example {
    static function main()
    {
        println("Please enter two names");
        var first = getWord();
        var second = getWord();
        if (first == second)
            println("that's the same name twice");
        if (first < second)
            println('$first is alphabetically before $second');
        if (first > second)
            println('$first is alphabetically after $second');
    }
}

