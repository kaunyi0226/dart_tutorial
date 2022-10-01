class Person {
  //object
  String? name; //doesnt allow null ----add ?
  int? age;

  Person({this.name, this.age = 30}); //讀到name就存到物件的name中，讀到age就存到物件的age中

}

double addnumbers(double num1, double num2) {
  return num1 + num2;
}

void main() {
  var p1 = new Person(name: 'Max'); //創造新物件
  var p2 = new Person(name: 'Kevin', age: 20);
  print(p1.name);
  print(p2.name);

  var firstresult = addnumbers(1, 2.3);
  print(firstresult);
  print("Hello!");
}
