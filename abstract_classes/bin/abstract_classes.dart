/* import 'package:abstract_classes/abstract_classes.dart' as abstract_classes;

void main(List<String> arguments) {
  print('Hello world: ${abstract_classes.calculate()}!');
} */

abstract class Animal {
  int age;
  String name;

  // no method body means you're defining an abstract method
  // abstract methods must be overridden in implementation classes
  void talk();

  // abstract classes _can_ implement some functionality.
  // when the method functionality is written on the abstract class,
  // the implementation subclasses don't have to override it.
  void growl() => print('grrrrr');
}

class Cat implements Animal {
  @override
  int age;

  @override
  String name;

  Cat(this.name, this.age);

  @override
  void talk() {
    print('meow');
  }

  @override
  void growl() => print('');
}

class Dog implements Animal {
  @override
  int age;

  @override
  String name;

  Dog(String name, int age);

  @override
  void talk() {
    print('bark');
  }

  @override
  void growl() => print('');
}

// This method expects an Animal instance as an argument
// But, Animal is _abstract_, which means you cannot instantiate it directly
// So, any class that _implements_ Animal is guaranteed to have
// overriden the methods and properties on the Animal interface,
// which makes it 'type safe'.
void makeAnimalNoise(Animal animal) => animal.talk();

void main() {
  final cat = Cat('Nora', 5);
  final dog = Dog('Pepperstake', 1);
  makeAnimalNoise(cat);
  makeAnimalNoise(dog);

  dog.growl();
  cat.growl();
}
