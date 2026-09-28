import 'dart:io';

void main() {
  int i = 10;
  while (i >= 0) {
    print(i);
    i--;
  }

  i = 10;
  do {
    if (i == 5) break;
    print(i);
    i--;
  } while (i >= 0);

  int number = 1;
  while (number <= 15) {
    if (number % 2 != 0) continue;
    print(number);
    number--;
  }

  int it = 1;
  do {
    if (it % 2 != 0) continue;
    for (int j = 0; j < 2; j++) print(it);
    it--;
  } while (it <= 15);
}
