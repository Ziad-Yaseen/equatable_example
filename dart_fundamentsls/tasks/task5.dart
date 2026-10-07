import 'dart:io';

void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  int sum = 0;
  for (int i = 1; i <= 100; i++) {
    sum += i;
  }
  print('Sum = $sum');

  int tableNumber = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  for (int i = 1; i <= 10; i++) {
    print('$tableNumber x $i = ${tableNumber * i}');
  }
}
