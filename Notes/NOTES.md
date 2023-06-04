https://firtman.github.io/intro-flutter/

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

# Collections

Dart includes several collections ready to use, here just the ones we will use

```
// Lists, we use List<Type> and the type of the collection inside the generic
// The literal uses the [] constructor
// ["Argentina", "Brazil"]
List<String> countries = ["Argentina", "Brazil", "Canada", "Denmark"];

// We also have sets and maps (dictionaries)
var strings = {"a", "b", "c", "c"}; // set not accept repetition
var readWriteMap = {"foo": 1, "bar": 2};
```

# Null Safety

Null Safety is optional in the language and it was added later
It's automatically enabled in current Flutter projects
A String must have a string value, but a String? accepts null

```
// String myName;        // What's the value? Null? IMPOSSIBLE

late String myName; // We express we will have a value later, before using it

String? myLastname; // It can handle a null value
```

## Null operators

```
// print(myLastname.length);   // it doesn't work!

// null manual override
final lengthForSure = myLastname!.length;

// Safe calls
var length = myLastname?.length;
```

# Functions

```
import 'dart:core';

aFunction() {
  print("I'm a function");
}

void explicitVoidReturnType() {
  print("I'm also a function");
}

String aFunctionReturning() {
  return "I'm a function";
}

// Arguments
int sum(int a, int b) {
  return a + b;
}

// Named Arguments (all of them or partial)
int sum2({int? a, int? b}) {
  if (a != null && b != null) {
    return a + b;
  } else {
    return 0;
  }
}

int sum3(int a, {required int? b}) {
  return a + b!;
}

// How do you call sum?
playingWithCalls() {
  sum(4, 1);
  // call with named parameters
  sum2(b: 5, a: 10);
  sum3(3, b: 4);
}
```

# Lambda or anonymous functions

Type is Function
if no return is expected, we use void

```
Function myFunction = (int number, bool isReady) {};

// Arrow functions are also possible if they have only one sentence

Function myArrow = (int a, int b) => a + b;
```

# Classes

Full support for OOP, we will use it a lot in Flutter
There are no visibility modifiers; private properties start with \_

```
import 'dart:core';

class Person {
  // property
  int id = 0;
  // function - method
  show() {
    print("Person id: ${this.id}");
  }
}

// new keyword is optional!
final p = Person(); // Flutter way
final q = new Person();

// there is a Primary constructor, secondary constructors and a initializer block
// The primary constructor is defined in the class name definition

class Request {
  int id = 0;
  String url = "";

  Request(int id, String url) {
    this.id = id;
    this.url = url;
  }

  // named constructors

  Request.fromData(this.id, this.url);
}

we have shortcut for init constructor:
Instead of this
Request(int id, String url) {
    this.id = id;
    this.url = url;
  }
we have
Request(this.id, this.url);

class HttpRequest extends Request {
  HttpRequest(int id, String url) : super(id, url);
}

// We can also use named parameters

class Car {
  int id;
  String name;

  Car({required this.id, required this.name});
}
```
