void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Ahmed", "grade": 95, "GPA": 87},
    {"name": "Ali", "grade": 88, "GPA": 77},
    {"name": "Sara", "grade": 99, "GPA": 97},
  ];

  for (var student in students) {
    print(student["GPA"]);
  }
}
