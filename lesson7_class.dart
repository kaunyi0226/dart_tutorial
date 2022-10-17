class Car {
  String? name;
  double? speed;

  Car(this.name, this.speed);

  void horn() {
    print("Ba~Ba~, I'm $name");
  }
}

class Student {
  String? name;
  int? age;

  Student(this.name, this.age);

  Student.firstGrade(String name) {
    this.name = name;
    this.age = 7;
  }
  void sayHello() {
    print("Hello! I'm $name, who is $age");
  }
}

class Person {
  //object
  String? name; //doesnt allow null ----add ?
  int? age;

  Person({this.name, this.age = 30}); //讀到name就存到物件的name中，讀到age就存到物件的age中
  /*Person(String Name, int Age){
    this.name = Name;
    this.Age = Age;
  }*/
}

void main() {
  var Karen = Student.firstGrade("Karen");
  Karen.sayHello();

  var p1 = Person(name: 'Max'); //創造新物件(dart2後不一定要加new)
  var p2 = Person(name: 'Kevin', age: 20);
  print(p1.age);
  print(p2.age);
}
