import 'dart:io';

void main() {
  // getVip([
  //   'Vip',
  //   'normal',
  //   'Vip',
  //   'normal',
  //   'Vip3',
  //   'Vip 3',
  //   'normal',
  //   'normal',
  //   'Vip',
  // ]);

  // List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  // numbers.forEach((number) => number % 2 == 0 ? print(number) : print(''));

  // List<double> salaries = [12000, 13000, 14000, 15000];

  // List<double> taxes = salaries.map((salary) => salary * 0.15).toList();

  // print(taxes);

  // List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  // List<int> even = numbers.where((number) => number % 2 == 0).toList();
  // int sum = numbers.reduce((a, b) => a + b);
  // print(sum);

  // for (var number in even) {
  //   print('$number ');
  // }

  // Set<String> menu = {
  //   'Salad',
  //   'Burger',
  //   'Pizza',
  //   'Spaghetti',
  //   'Meat',
  //   'Chicken',
  // };

  // String meal = stdin.readLineSync() ?? '';
  // print(checkMeal(menu, meal));

  Map<String, dynamic> contacts = {
    'Ziad': '9328925',
    'Mohamed': '3214325',
    'Ali': '4932874',
  };
  ;
  print(findContact(contacts, 'Ziad'));
}

findContact(Map map, String name) {
  return map[name] ?? 'No Such Contact';
}

checkMeal(Set<String> menu, String meal) {
  return menu.contains(meal) ? 'Meal Found $meal' : 'Meal not found';
}

getVip(List<String> clientsType) {
  // List<String> vip = [];
  int numberOfVipMembers = 0;
  // for (int i = 0; i < clientsType.length; i++) {
  //   if (clientsType[i].toLowerCase().contains('vip')) {
  //     numberOfVipMembers++;
  //     vip.add(clientsType[i]);
  //   }
  // }

  // print(numberOfVipMembers);
  // print(vip);
  clientsType.forEach((client) {
    if (client.toLowerCase().contains('vip')) {
      print(client);
    }
    numberOfVipMembers++;
  });
  print(numberOfVipMembers);
}
