import 'dart:io';

void main(List<String> args) {
  
/// User choice
/// Person class
/// Enter 1 to add a person
/// Enter 2 to view all persons
/// Enter 3 delete person by name
/// Enter 4 update person by name or age
/// enter 5 exit
///

List<Person> persons = [];
  while(true){
    print("Enter 1 to add a Person"); // c r d u
    print("Enter 2 to read all Person");
    print("Enter 3 to delete person by name");
    print("Enter 4 to update name or age");
    print("Enter 5 to exit");

    String? choice = stdin.readLineSync();
    if(choice==null){
      print("Please enter a valid choice");
      continue;
    }
    switch (choice) {
      case "1":{
            print("Please enter a name");
        String? name = stdin.readLineSync();
            print("Please enter a age");
        int? age = int.tryParse(stdin.readLineSync()??"");
      if(name==null||age==null){
        print("Please enter a valid name and age");
        continue;
      }
      persons.add(Person(name: name, age: age));
      print("person added ${Person(name: name, age: age)}");
        break;
      }
       case "2":{
        print("${persons.length} Person found, $persons");
        break;
      }
       case "3":{
        print("Please enter a name to delete");
        String? name = stdin.readLineSync();
        if(name==null){
        print("Please enter a valid name");
        continue;
      }
      bool personFound = false;
      for(int i=0;i<persons.length;i++){
        if(persons[i].name==name){
          personFound = true;
          persons.removeAt(i);
          break;
        }
      }
      if(personFound){
        print("Succesffully deleted a person");
      }else{
         print("Person not found");
      }
        break;
      }
       case "4":{
        bool requireUpdateAge = false;
        bool requireUpdateName = false;
        print("Please enter name of person you want to update");
        String? personName = stdin.readLineSync();
        if(personName==null){
          print("Please enter a valid name");
          continue;
        }
        print("want to update name:[true, false]");
        requireUpdateName = bool.tryParse(stdin.readLineSync()??"")??false;
        print("want to update name:[true, false]");
        requireUpdateAge = bool.tryParse(stdin.readLineSync()??"")??false;
        if(requireUpdateName){
          print("Enter a name to update");
          String? updatedName = stdin.readLineSync();
          if(updatedName==null){
             print("Please enter a valid name");
             continue;
          }
          for(Person p in persons){
            if(p.name==personName){
              p.name = updatedName;
              break;
            }
          }
        }
        if(requireUpdateAge){
          print("Enter a age to update");
          int? age = int.tryParse(stdin.readLineSync()??"");
          if(age==null){
             print("Please enter a valid age");
             continue;
          }
          for(Person p in persons){
            if(p.name==personName){
              p.age = age;
              break;
            }
          }
        }
        break;
      }
       case "5":{
        return;
      }
      default:
      print("Please select a valid choice");
    }
  }
}

class Person{
  String name;
  int age;

  Person({required this.name, required this.age});

  Person.guest():name = "guest", age = 10;

// hascode
  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}