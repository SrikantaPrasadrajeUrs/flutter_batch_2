// Object Oriented Programming (OOP) in Dart
// Client side 
// Single threaded - Isolate, compute - main 
// Object
import 'dart:math';

void main(List<String> args) {
  int randomNumber = Random().nextInt(3);
  // control flow statement
 for(int i = 0; i < 10000; i++) {
    if(i==1){
      return;
    }
  }

  // switch case
  switch (randomNumber) {
    case 0:
      print("Heads");
      break;
    case 1:
      print("Tails");
      break;
    default:
      print("Edge");
  }
}
