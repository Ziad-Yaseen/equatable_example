void main() {
  Set<String> courses = {"Flutter", "Dart", "Firebase"};
  Set<String> courses1 = {"Flutter", "Dart", "AI"};
  courses.add("API");
  courses.add("Flutter");
  // print(courses);
  print(courses.union(courses1));
  // for (var course in courses) {
  //   print(course);
  // }
}
