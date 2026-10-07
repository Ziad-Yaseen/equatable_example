import 'dart:io';

String userName = 'Ahmed';
String password = '1234';
double balance = 5000.0;

void main() {
  print('=== Welcome to Dart ATM ===');

  if (login()) {
    showMenu();
  }
}

bool login() {
  int attempts = 0;

  while (attempts < 3) {
    stdout.write('Enter Username: ');
    String? inputUser = stdin.readLineSync();

    stdout.write('Enter Password: ');
    String? inputPass = stdin.readLineSync();

    if (inputUser == userName && inputPass == password) {
      print('\nLogin successful!\n');
      return true;
    } else {
      attempts++;
      print('Invalid credentials. Attempts remaining: ${3 - attempts}\n');
    }
  }

  print('Account is locked.');
  return false;
}

void showMenu() {
  bool keepRunning = true;

  while (keepRunning) {
    print('\n--- MAIN MENU ---');
    print('1. Check Balance');
    print('2. Deposit');
    print('3. Withdraw');
    print('4. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        checkBalance();
        break;
      case '2':
        deposit();
        break;
      case '3':
        withdraw();
        break;
      case '4':
        print('Thank you for using Dart ATM. Goodbye!');
        keepRunning = false;
        break;
      default:
        print('Invalid option. Please try again.');
    }
  }
}

void checkBalance() {
  print('\n[Current Balance: \$${balance}]');
}

void deposit() {
  stdout.write('\nEnter amount to deposit: ');
  double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  balance += amount;
  print('\Deposit successful. New balance: \$${balance}');
}

void withdraw() {
  stdout.write('\nEnter amount to withdraw: ');
  double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  if (amount <= 0) {
    print('Invalid amount. Must be greater than 0.');
  } else if (amount > balance) {
    print('Error: Insufficient funds.');
  } else {
    balance -= amount;
    print(
      'Withdrawal successful. Remaining balance: \$${balance.toStringAsFixed(2)}',
    );
  }
}
