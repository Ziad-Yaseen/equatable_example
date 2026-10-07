void main() {
  // Employee emp1 = Employee('Ziad', 20, 9999999.9999999999);
  // Employee emp2 = Employee('josef', 10, 0.9999999999);
  // print('Name: ${emp1.name},\nAge: ${emp1.age},\nSalary: ${emp1.salary}');
  // print('');
  // print('=====================');
  // print('');
  // print('Name: ${emp2.name},\nAge: ${emp2.age},\nSalary: ${emp2.salary}');

  Product laptop = Product('Laptop', 40000);
  Product headPhone = Product('Head phone', 20000);
  Product smartPhone = Product('Smart phone', 30000);
  Product mobile = Product('Mobile', 100);

  List<Product> products = [laptop, headPhone, smartPhone, mobile];

  print(productsPrices(products));
}

productsPrices(List<Product> products) {
  double summation = 0;
  for (final product in products) summation += product.price;
  return summation;
}

class Employee {
  String name;
  int age;
  double salary;

  Employee(this.name, this.age, this.salary);

  calculateSalary() {}
  displayInfo() {
    print('Name: $name, Age: $age, Salary: $salary');
  }

  login() {}
  logout() {}
  calculateArea() {}
}

class User {
  String name;
  int age;

  User(this.name, this.age);

  User.guest() : name = 'Guest', age = 0;

  User.admin() : name = 'Admin', age = 0;

  User.superAdmin() : name = 'Super Admin', age = 0;

  User.fromAge(int age) : name = 'Guest', age = age;

  displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);

  displayInfo() {
    print('Product name: $name');
    print('Product price: $price');
  }
}
