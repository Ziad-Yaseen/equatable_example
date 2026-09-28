class Developer {
  String? name;
  void code() => print("$name is coding in Dart...");
}

void main() async {
  print('--- 1 & 2. Unary Operators ---');
  int x = 5;
  print('Postfix x++: ${x++}'); // Prints 5, then increments to 6
  print('Prefix ++x: ${++x}');   // Increments to 7 first, then prints 7
  
  bool isAwesome = true;
  print('Logical NOT (!): ${!isAwesome}'); // Inverts the value to false
  
  String? nullableString;
  // nullableString!; // The bang operator (!) asserts the value is not null (would crash here)
  print('Null-aware access (?.): ${nullableString?.length}data'); // Safely returns null instead of crashing

  print('\n--- 3 & 4. Multiplicative & Additive ---');
  int a = 10;
  int b = 3;
  print('Multiplication (*): ${a * b}'); // 30
  print('Division (/): ${a / b}');       // 3.3333... (returns a double)nu
  print('Integer Division (~/): ${a ~/ b}'); // 3 (truncates the fractional part)
  print('Modulo (%): ${a % b}');         // 1 (remainder of division)
  print('Addition (+): ${a + b}');       // 13


  print('\n--- 5, 6, 7 & 8. Shift & Bitwise ---');
  int bit1 = 2; // (0010) in binary
  int bit2 = 3; // (0011) in binary
  print('Bitwise AND (&): ${bit1 & bit2}'); // 2 (0010)
  print('Bitwise OR (|): ${bit1 | bit2}');  // 3 (0011)
  print('Shift Left (<<): ${bit1 << 1}');   // 4 (0100)


  print('\n--- 9 & 10. Relational, Type Test, and Equality ---');
  print('Greater than (>): ${a > b}'); // true
  print('Equality (==): ${a == 10}');  // true
  
  dynamic person = Developer();
  if (person is Developer) { // 'is' checks the type at runtime
    print('person is a Developer!');
  }
  // (person as Developer).name = "Alex"; // 'as' is used for typecasting


  print('\n--- 11 & 12. Logical AND & OR ---');
  bool condition1 = true;
  bool condition2 = false;
  print('Logical AND (&&): ${condition1 && condition2}'); // false (both must be true)
  print('Logical OR (||): ${condition1 || condition2}');  // true (at least one must be true)


  print('\n--- 13. If-null ---');
  String? maybeNull;
  // If the left operand is null, evaluate and return the right operand
  String result = maybeNull ?? "Default Value"; 
  print('If-null (??): $result');


  print('\n--- 14. Conditional (Ternary) ---');
  // A shorthand for if-else statements
  String status = (a > 5) ? "a is greater than 5" : "a is smaller";
  print('Conditional (?:): $status');


  print('\n--- 15. Cascade ---');
  // Allows performing multiple operations on the same object without repeating its name
  Developer dev = Developer()
    ..name = "Alex"
    ..code(); 
  // ?.. is the null-safe version, it skips operations if the object is null


  print('\n--- 16. Assignment ---');
  int score = 50;
  score += 10; // Equivalent to: score = score + 10
  print('Compound Assignment (+=): $score'); // 60
  
  int? highScore;
  highScore ??= 100; // Assigns the value only if the variable is currently null
  print('Assign if null (??=): $highScore');


  print('\n--- 17. Spread ---');
  List basicList = [1, 2, 3];
  List? optionalList;
  
  // (...) inserts all elements of a list into another list
  // (...?) does the same but safely ignores the source list if it is null
  List combinedList = [0, ...basicList, ...?optionalList, 4];
  print('Spread (...): $combinedList'); // [0, 1, 2, 3, 4]
}