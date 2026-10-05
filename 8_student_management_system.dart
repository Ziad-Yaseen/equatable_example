void main() {
  List<Map<String, dynamic>> students = [
    {"name":"Ahmed","age":22,"grade":95},
    {"name":"Ali","age":21,"grade":85},
    {"name":"Sara","age":23,"grade":99},
  ];

  for (var student in students) {
    print(student);
  }

  double sum = 0;
  for (var student in students) {
    sum += student["grade"];
  }

  print("Average = ${sum / students.length}");
}
