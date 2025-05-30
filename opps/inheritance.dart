class Animal {
  void eat() => print("Eating");
}

class RobotDog extends Animal {
  @override
  void eat() => print("Charging...");
}


abstract class Engine {
  void start();
}

abstract class Vehicle {
  void drive();
}

class Car extends Vehicle implements Engine {
  @override
  void drive() {
    print("Car driving");
  }

  @override
  void start() {
    print("Engine started");
  }
}
// Parent - Super  class
class Animals {
  String type;
  int age;
  Animals(this.type, this.age);
// Constructor - Animals()
  void breath(){
    print("$type is Breathing");
  }

}
// sub class or chile class
class Cat extends Animals {

  Cat(String name):super(name,10);
}

void main(List<String> args) {
  final cat = Cat("Whiskers");
  cat.breath(); // abstraction, methodoverriding - fecth async await

}