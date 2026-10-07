void main() {
  int price = 500;
  int quantity = 3;

  double totalPrice = (quantity * price) as double;
  double discount = totalPrice * 0.1;
  double finalPrice = totalPrice - discount;

  print('Original Price: $price');
  print('Quantity: $quantity');
  print('Total: $totalPrice');
  print('Discount: $discount');
  print('Final Price: $finalPrice');

  int a = 15;
  int b = 4;

  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}');
  print('a % b = ${a % b}');

  int points = 10;
  points += 5;
  points -= 2;
  points *= 2;
  print('Final Points: $points');
}
