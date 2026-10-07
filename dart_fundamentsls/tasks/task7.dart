void main() {
  double num1 = 10;
  double num2 = 4;

  print('Add: ${add(num1, num2)}');
  print('Subtract: ${subtract(num1, num2)}');
  print('Multiply: ${multiply(num1, num2)}');
  print('Divide: ${divide(num1, num2)}');

  print('Is 10 even? ${isEven(10)}');
  print('Is 7 even? ${isEven(7)}');
}

num add(num a, num b) {
  return a + b;
}

num subtract(num a, num b) {
  return a - b;
}

num multiply(num a, num b) {
  return a * b;
}

num divide(num a, num b) {
  if (b == 0) {
    print('Error: Division by zero');
    return 0;
  }
  return a / b;
}

bool isEven(int number) {
  return number % 2 == 0;
}
