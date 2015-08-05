/**
  This programs outputs the message "Hello, World!" to the monitor.
**/
class HelloWorld {
    // Haxe programs start by executing the `main` static function of the base class of the module;
    // the base class of a module is the one named like the module, in contrast to other module sub-types
    static function main():Void  // the return type `Void` is optional; if missing, would be inferred
    {
        Sys.print("Hello, World!\n");  // output "Hello, World!\n"
        Sys.exit(0);  // explicitly inform the system that program terminated successfully
    }
}

