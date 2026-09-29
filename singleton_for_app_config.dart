class AppConfig {
  static AppConfig? _instance;
  String apiBaseUrl = "https://api.example.com";

  // Private constructor
  AppConfig._();

  // Factory constructor
  factory AppConfig() {
    _instance ??= AppConfig._();
    return _instance!;
  }
}

void main() {
  // Accessing the Singleton instance
  var config1 = AppConfig();
  var config2 = AppConfig();

  print(config1.apiBaseUrl); // Output: https://api.example.com

  // Ensure both references point to the same instance
  print(config1 == config2); // Output: true
}