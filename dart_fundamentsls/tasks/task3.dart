void main() {
  double score = 78;

  if (score < 0 || score > 100) {
    print('Invalid score! Please enter a value between 0 and 100.');
    return;
  }

  String grade;
  if (score >= 90)
    grade = 'Excellent';
  else if (score >= 80)
    grade = 'Very Good';
  else if (score >= 70)
    grade = 'Good';
  else if (score >= 60)
    grade = 'Pass';
  else
    grade = 'Fail';

  print('Grade: $grade');

  if (score >= 60) {
    print('Status: Student has Passed.');
  } else {
    print('Status: Student has Failed.');
  }
}
