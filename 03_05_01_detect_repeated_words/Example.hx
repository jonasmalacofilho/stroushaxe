import Facilities.getWord;

/**
  Detect repeated words.
**/
class Example {
    static function main()
    {
        var previous = " ";  // previous word, initialized not 'not a word'
        var current;  // current word
        try {  // keep reading a stream
            while (true) {
                current = getWord();
                if (previous == current)  // check if the word is the same as last
                    Sys.println('repeated word: $current');
                previous = current;
            }
        } catch (e:haxe.io.Eof) {}  // until an exception of EOF (end of file) is raised
    }
}

