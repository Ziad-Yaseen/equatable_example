import 'dart:io';

void main() {
  int gpa = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  print(gpa);
}