class Example {
    static function main()
    {
        Sys.println("Please enter two integers");
        var a = Std.parseInt(Facilities.getWord());
        var b = Std.parseInt(Facilities.getWord());

        if (a < b)  // condition
            Sys.println('max($a,$b) is $b');  // 1st alternative (taken if condition is true)
        else
            Sys.println('max($a,$b) is $a');  // 2nd alternative (taken if condition is false)
    }
}

