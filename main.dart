import 'package:equatable/equatable.dart';

void main() {
  final Person bob = Person('Ziad', 20);
  final Person bob2 = Person('Ziad', 20);
  print(bob2 == bob); // False
  print(bob.hashCode);
  print(bob2.hashCode); // Same hash code

  Human hum = Human('my Name');
  Human hum2 = Human('my Name');
  print(hum == hum2); // False
  print(hum.hashCode);
  print(hum2.hashCode); // Same hash code
}

class Person {
  const Person(this.name, this.age);

  final String name;
  final int age;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

class Human extends Equatable {
  Human(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
