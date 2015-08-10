/**
  Some expressions.
**/


class Example {
    static function main()
    {
        // compute area
        var length = 20;  // a literal integer (used to initialize a variable)
        var width = 40;
        var area = length*width;  // a multiplication
        trace(area);

        length = 99;  // assign 99 to length
        trace(length);
        trace(area);  // area remains unchanged

        var perimeter = (length + width)*2;  // add then multiply
        perimeter = length*2 + width*2;  // clumsy, without parentheses
        trace(perimeter);
    }
}

