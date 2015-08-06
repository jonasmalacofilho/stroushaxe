import Facilities.readWord;

/**
  Find repeated words.
**/
class Example {
    static function main()
    {
        var wordNumber = 0;
        var previous = " ";  // not a word
        var current;
        try {
            while (true) {
                current = readWord();
                wordNumber++;  // increase the word count
                if (previous == current)
                    Sys.println('word number $wordNumber repeated: $current');
                previous = current;
            }
        } catch (e:haxe.io.Eof) {}
    }
}

