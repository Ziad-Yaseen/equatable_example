class DatabaseHelper {
  static DatabaseHelper? _instance;

  // Private constructor
  DatabaseHelper._();

  // Factory constructor for lazy initialization
  factory DatabaseHelper() {
    _instance ??= DatabaseHelper._();
    return _instance!;
  }

  void connect() {
    print("Connecting to the database...");
  }
}

void main() {
  var dbHelper1 = DatabaseHelper();
  var dbHelper2 = DatabaseHelper();

  dbHelper1.connect(); // Output: Connecting to the database...

  // Ensuring both instances are the same
  print(dbHelper1 == dbHelper2); // Output: true
}
