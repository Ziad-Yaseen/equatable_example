void main() {
  String name = 'Ahmed';
  int age = 22;

  double math = 90;
  double programming = 85;
  double english = 80;

  printDetails(math, programming, english, name, age);
}

bool isValidScore(double score) {
  return score >= 0 && score <= 100;
}

double calculateAverage(double s1, double s2, double s3) {
  return (s1 + s2 + s3) / 3;
}

String getGrade(double average) {
  if (average >= 90) return 'A';
  if (average >= 80) return 'B';
  if (average >= 70) return 'C';
  if (average >= 60) return 'D';
  return 'F';
}

printDetails(
  double math,
  double programming,
  double english,
  String name,
  int age,
) {
  if (!isValidScore(math) ||
      !isValidScore(programming) ||
      !isValidScore(english)) {
    print('Error: One or more scores are out of the 0-100 range.');
    return;
  }

  double average = calculateAverage(math, programming, english);
  String grade = getGrade(average);
  String status = average >= 60 ? 'Passed' : 'Failed';

  print('Student: $name');
  print('Age: $age\n');
  print('Math: $math');
  print('Programming: $programming');
  print('English: $english\n');
  print('Average: ${average.toStringAsFixed(2)}');
  print('Grade: $grade');
  print('Status: $status');
}
