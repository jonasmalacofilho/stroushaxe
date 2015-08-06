import Facilities;

class ExerciseOperators {
    static function main()
    {
        Sys.println("Please enter a floating-point value:");  // `Sys.println` automatically adds the newline at the end
        var n = Std.parseFloat(Facilities.readWord());
        Sys.println('n == $n');
        Sys.println('n+1 == ${n+1}');
        Sys.println('three times n == ${3*n}');
        Sys.println('twice n == ${n+n}');
        Sys.println('n squared == ${n*n}');
        Sys.println('half of n == ${n/2}');
        Sys.println('square root of n == ${Math.sqrt(n)}');
    }
}

