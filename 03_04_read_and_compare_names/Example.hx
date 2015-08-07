// include specific functions from Facilities and Sys; now these
// methods can be called directly
import Facilities.getWord;
import Sys.println;

/**
  Read and compare names
**/
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

