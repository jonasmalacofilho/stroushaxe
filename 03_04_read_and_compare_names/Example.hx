// include specific functions from Facilities and Sys; now these
// methods can be called directly
import Facilities.readWord;
import Sys.println;

/**
  Read and compare names
**/
class Example {
    static function main()
    {
        println("Please enter two names");
        var first = readWord();
        var second = readWord();
        if (first == second)
            println("that's the same name twice");
        if (first < second)  // TODO check this
            println('$first is alphabetically before $second');
        if (first > second)  // TODO check this
            println('$first is alphabetically after $second');
    }
}

