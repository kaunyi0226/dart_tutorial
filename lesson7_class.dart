void main() {
  var benz = Car("Benz", 10);
  benz.horn();

  var Karen = Student.firstGrade("Karen");
  Karen.sayHello();

  var Banana = Person("Banana", 90);
  print(Banana.name);
  print(Banana._age); //Dart private的尺度是整個檔案，不侷限在class中
}

class Person {
  //object
  String? name; //doesnt allow null ----add ?
  int? _age;

  Person(this.name, this._age);

  void setName(String newName) => this.name = newName;
}

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

//封裝
class Employee {
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int getId() {
    return _id!;
  }

// Getter method to access private property _name
  String getName() {
    return _name!;
  }

// Setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }

// Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
}

//Practice Bank Account
class Account {
  String? _user;
  String? _password;
  int _money = 0;

  Account(this._user, this._password);

  String getUser() => _user!;
  void setUser(String newName) => this._user = newName;

  int readMoney() => _money;
  void addMoney(int addAmount) => this._money += addAmount;
  void minusMoney(int minusAmount) => this._money -= minusAmount;

  void resetPW(String oldPW, String newPW) {
    if (oldPW == _password) {
      _password = newPW;
      print("更改密碼成功!");
    } else {
      print("密碼輸入錯誤，更改密碼失敗!");
    }
  }
}
