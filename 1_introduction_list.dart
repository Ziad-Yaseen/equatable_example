import 'dart:io';

String find_food(String key_search, List<String> foods) {
  if (foods.contains(key_search)) {
    return "we found $key_search";
  }

  return "Sorry we don't have $key_search";
}

void main() {
  // print("Enter your choice : ");
  // String search = stdin.readLineSync()!;

  // List<String> foods = ["Biza", "Burger", "fool"];

  List<String> students = ["Ali", "Ahmed", "Ibrahim"];

  // print(find_food(search, foods));
  // print(students);

  print(students[0]);

  print(students.length);

  students.add("Mona");
  print(students);
  students.remove("Ali");
  print(students);
  students[0] = "Omar";
  List<String> students1 = [];
  students1.add("Amir");
  students1 += students;
  print(students1);

  // print(students);
}
