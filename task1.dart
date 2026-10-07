void main() {
  // Map<String, double> salaries = {
  //   'Ahmed': 10000,
  //   'Ziad': 9999999999,
  //   'Yousef': 939043,
  //   'josef': 3435.553,
  // };

  // for (final salary in salaries.entries) {
  //   if (salary.value >= 15000) print(salary.key);
  // }

  // stdout.write('Name and salaries: $salaries');

  // Stack<String> st;

  List<Map<String, dynamic>> students = [
    {'name': 'Ahmed', 'score': 90},
    {'name': 'Ziad', 'score': 100},
    {'name': 'name', 'score': 40},
  ];

  for (final student in students)
    print(
      'Student name: ${student['name']}, Student score: ${student['score']}',
    );
}
