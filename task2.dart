import 'dart:io';

getFood(String a, List<String> f) {
  if (f.contains(a)) {
    print("$a Is Founded in our menu");
  } else {
    print("$a Is Not Founded in our menu");
  }
}

void main() {
  List<String> f = ["Burger", "Bizza", "Chicken", "Chips"];
  List<String> d = ["PC", "Lap Top", "Smart Phone", "Head Phone"];
  String a = stdin.readLineSync()!;
  // getFood(a, f);

  getFood(a, d);
}
