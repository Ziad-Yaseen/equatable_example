class Singleton {
  // Private static instance
  static Singleton? _instance;

  // Private named constructor
  Singleton._();

  // Factory constructor that ensures only one instance
  factory Singleton() {
    _instance ??= Singleton._();
    return _instance!;
  }

  // Example method
  void showMessage() {
    print("This is the singleton instance.");
  }
}

void main() {
  // Accessing Singleton instance
  var singleton1 = Singleton();
  var singleton2 = Singleton();

  singleton1.showMessage(); // Output: This is the singleton instance.

  // Verify both instances are the same
  print(singleton1 == singleton2); // Output: true
}
