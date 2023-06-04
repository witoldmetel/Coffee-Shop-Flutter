# Basic Expressions

Dart code looks in its first view as many other languages

1. We can have global expressions without the need of a function or class.
2. However, if you are targeting Android, you will always need a class
3. (Java VM requirement)
4. Semi-colons are optional, not recommended unless two expressions share a line
5. We use (mandatory) curly braces for code blocks following C-syntax.

```
// Spaces and new lines are, most of the time, ignored
var x = 1;
var y = 2;

playingWithDart() {
  // Boolean conditions need parenthesis
  if ((x > 1) && (y < 2)) {}
  while (x < 10) {
    x++;
  }
  print(x); // println sends a message to the console with a new line after
}
```

# Name style guidelines

```
playingWithNames() {
  // Variable, function and package names use camelCase
  String name;
  const tax = 7.8;
  void printMessage() {}
}

// Everything is public in the package, unless it's prefixed with _ (It will be private)
class X {
  String publicProperty = "";
  String _privateProperty = "";
}

// Data types such as classes use TitleCase.
// TitleClase also applies to Singleton variables and Objects!!
class CustomerOrder {}

// Loops: standard while, for and for-in
playingWithLoops() {
  for (var i = 0; i < 10; i++) {}
  for (var i in [1, 2, 3]) {
    print(i);
  }
  while (true) {}
}
```

# Variables and Types

Dart is a statically typed language, but it's also flexible and support type inference
with `var`, `const` and the `dynamic type`.
On the web platform, types may not be 100% inforced in runtime.

In Dart every value you apply in a variable is an object, with the exception of null

```
// Mutable Variables use the keyword `var` or the type declaration as a prefix
int data = 3;
var otherData = 5;

// Immutable Variables use the keyword `final`
// We can set final variables' content in runtime
final notMutableObject = "final string";
final int otherImmutable = 5;

// Constants use `const` and we will use them a lot in Flutter
// We must set const content at compile time
const pi = 3.14;

playingWithTypes() {
  // Core Data Types
  String stringValue;
  int integerValue;
  double doubleValue;
  bool booleanValue; // values are true and false
  dynamic anything;
  num aNumber;

  // String Literals, double quotes or single quotes
  print("Hello World");
  // Multi-line literal strings
  var multiline = """
      sdfsdf
  """;

  var price = 3;
  var otherPrice = 5.2;

  // Every string can have template expressions using $ or ${}
  // expression result will be converted to string
  var message = "The $price price is ${otherPrice * 1.1}";
}
```
