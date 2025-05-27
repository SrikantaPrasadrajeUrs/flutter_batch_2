void main(List<String> args) {
Person p = Person.guest();
print(p.name);
}

// class has proerties whih are not instantiated - wee need constructor

class Person { //Blueprint - template
  String name;
  int age;
  bool hasPermission = false;

  // Default constructor
  Person(this.name, this.age);
  // 1. Parameterized constructor

  // Person(this.name, this.age); // constructor - special method to create an object

  // to instantiate the properties of the class

  // Named constructor
  Person.guest(): name = "guest", age = 0; // constructor - special method to create an object
  Person.admin(): name = "admin", age = 0, hasPermission = true; // constructor - special method to create an object

}
// Function - Positional
int sum(int a , int b){
  return a + b;
}
// Optiona Postional parameter method
int multiply(int a, int b, [int c = 0]){
  return a * b * (c==0 ? 1 : c);
}

// Named parameter method reuired
double devide({required int a,int b = 9}){
  return a/b;
}

double divide2({int? a = null,int? b}){
  return a!=null&&b!=null? a/b : throw Exception("a and b cannot be null");
}
