// import 'dart:mirrors';
//
// class Animal {
//   void eat() => print("Eating");
// }
//
// class RobotDog extends Animal {
//   @override
//   void eat() => print("Charging...");
// }
//
//
// abstract class Engine {
//   void start();
// }
//
// abstract class Vehicle {
//   void drive();
// }
//
// class Car {
//
// }
//
//
//
// // Parent - Super  class
// class Animals {
//   String type;
//   int age;
//
//   Animals(this.type, this.age);
//
//   void breath(){
//     print("$type is Breathing");
//   }
// }
//
// class Dog extends Animals {
//   void bark()=>print("Barking");
// }
//
// class Car{
//
// }
//
// // sub class or chile class
// mixin Cat{
//   void meow()=>print("Meowing");
// }
//
// class DogCat {
//
// }
//
// class Enginee3{
//   void start3() => print("Engine started");
// }
//
// class Enginee2 extends Enginee3{
//   void start2() => print("Engine started");
// }
//
// class Enginee extends Enginee2 {
//   void start() => print("Engine started");
// }
//
// mixin Electricc on Enginee, Enginee2, Enginee3 {
//   void charge() => print("Charging...");
// }
//
// class Cars extends Enginee with Electricc{
//
// }
//
//
//
// //is a
// void main(List<String> args) {
//   // try -> cath - finally
//   try{
//     throw StatusCodeExceeption("An error occurred");
//   }on StatusCodeExceeption catch(e){
//     print("Caught an error: $e");
//   }on Exception catch(e, stackTrace){
//     print("Caught a general exception: $e");
//    }
// }
//
// class StatusCodeExceeption implements Exception{
//   StatusCodeExceeption(String message);
// }