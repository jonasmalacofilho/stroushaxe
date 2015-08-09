/**
  Find repeated words.

  Composite assignment operators.
**/


class Example {
    static function main()
    {
        var wordNumber = 0;
        var previous = " ";  // not a word
        var current;
        try {
            while (true) {
                current = Facilities.getWord();
                wordNumber++;  // increase the word count
                if (previous == current)
                    Sys.println('word number $wordNumber repeated: $current');
                previous = current;
            }
        } catch (e:haxe.io.Eof) {}
    }
}

