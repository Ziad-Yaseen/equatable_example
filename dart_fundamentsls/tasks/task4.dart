void main() {
  String email = 'student@gmail.com';
  String password = '123456';

  String inputEmail = 'student@gmail.com';
  String inputPassword = '123456';

  bool isBlocked = false;

  if (isBlocked) {
    print('Account is blocked');
  } else {
    if (inputEmail == email && inputPassword == password) {
      print('Login successful');
    } else {
      print('Invalid email or password');
    }
  }
}
