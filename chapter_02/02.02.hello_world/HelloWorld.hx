/**
  This programs outputs the message "Hello, World!" to the monitor.

  Its purpose is to be the simplest program that does something.
**/


// Haxe programs start at a class ...
class HelloWorld {
    // ... and begin by executing its `main` static function
    static function main():Void
    {
        Sys.print("Hello, World!\n");  // output "Hello, World!\n"
        Sys.exit(0);  // explicitly inform the system that program terminated successfully
    }
}


/**
  Notes
  -----

  This `*.hx` file is called a 'module'.

  Inside modules you will find types; in this case, the `HelloWorld` class.  In
  Haxe, functions cannot be defined outside of classes.

    "Classes are there to help you organize your code and to reason about your
    programs."
                                                              ―Bjarne Stroustrup

  Haxe programs start at a class – specified during compilation – and begin by
  executing its `main` static function.

  The return type of the `main` function – `:Void` – is optional in Haxe.  The
  compiler, through a feature called 'type inference', can try to guess the
  correct return type based on other information, such as the function block
  contents (in this case, the absence of a `return` statement`).

  Just like `HelloWorld`, `Std` is also a class, but is automatically supplied
  by the Haxe standard library instead of being user-defined.  In this example,
  we use two of its static functions:

   - `print` will output the given string to the standard output (usually the
     terminal screen)
   - `exit` will inform the system of the program exit status; a value of `0`
     means that it terminated successfully

  Haxe is a compiled language.  To compile (and run) this program, see the
  accompanying 'build.hxml' file.
**/

