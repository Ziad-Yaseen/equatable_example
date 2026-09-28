import 'dart:io';

void main() {
  String name = stdin.readLineSync()!;
  int age = int.parse(stdin.readLineSync()!);
  double height = double.parse(stdin.readLineSync()!);
  double weight = double.parse(stdin.readLineSync()!);
  print(
    'Hello $name, you are $age years old, your weight id $weight, your height is $height',
  );
}
