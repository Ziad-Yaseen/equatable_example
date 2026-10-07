void main() {
  Employee emp1 = Employee();
  emp1.name = 'Ziad';
  emp1.age = 20;
  emp1.salary = 9999999.9999999999;

  Employee emp2 = Employee();
  emp2.name = 'Josef';
  emp2.age = 10;
  emp2.salary = 0.9999999999;
  print('Name: ${emp1.name},\nAge: ${emp1.age},\nSalary: ${emp1.salary}');
  print('---------------------------------------------');
  print('Name: ${emp2.name},\nAge: ${emp2.age},\nSalary: ${emp2.salary}');
}

class Employee {
  String name = '';
  int age = 0;
  double salary = 0.0;

  calculateSalary() {}
  displayInfo() {}
  login() {}
  logout() {}
  calculateArea() {}
}