void main() {
  List<String> students = ["Ahmed", "Ali", "Sara"];
  printStudents(students);
  print(countStudents(students));
}

void printStudents(List<String> students) {
  for (var student in students) {
    print(student);
  }
}

int countStudents(List<String> students) {
  return students.length;
}
