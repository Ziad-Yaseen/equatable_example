void main() {
  Map<String, dynamic> student = {"name": "Ahmed", "age": 22, "grade": 95};

  // student.forEach((key, value) {
  //   print("$key : $value");
  // });

  // for (var key in student.keys) {
  //   print(key);
  // }
  student["GPA"] = 96;
  student.forEach((key, value) {
    print("$key : $value");
  });
}
