void main() {
  List<int> salaries = [10000, 22000, 15700, 40400, 50000];

  print(numbers.where((n) => n > 25).toList());
  salaries.map((n) => n * .85).toList();
  print(salaries.reduce((a, b) => a + b));
}
