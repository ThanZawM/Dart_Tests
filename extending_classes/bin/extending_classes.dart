/* import 'package:extending_classes/extending_classes.dart' as extending_classes;

void main(List<String> arguments) {
  print('Hello world: ${extending_classes.calculate()}!');
} */

class Animal {
  int age;
  String name;

  Animal(this.name, this.age);

  void talk() {
    print('grrrr');
  }
}

class Cat extends Animal {
  // use the 'super' keyword to interact with
  // the super class of Cat
  Cat(String name, int age) : super(name, age);

  @override
  void talk() {
    print('meow');
  }
}

class Dog extends Animal {
  // use the 'super' keyword to interact with
  // the super class of Cat
  Dog(String name, int age) : super(name, age);

  @override
  void talk() {
    print('bark');
  }
}

/* void main() {
  var cat = Cat('Phoebe', 1);
  var dog = Dog('Cowboy', 2);

  print(cat.name);
  print(cat.age);
  cat.talk();
  print(dog.name);
  print(dog.age);
  dog.talk();
} */

void main() {
  final rectangle = Rectangle(2, 5);
  var rect = Rectangle(5, 6);
}

class Rectangle {
  final int width;
  final int height;
  final int area;

  /* The area of the rectangle uses the `width` and `height`
  variables, but cannot be done outside of the constructor
  because the class doesn't know what the width and height
  are equal to until an instance is created. */
  Rectangle(this.width, this.height) : area = width * height {
    print(area);
  }
}
