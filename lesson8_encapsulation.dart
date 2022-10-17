import './lesson7_class.dart';

void main() {
  var Kate = Person("Kate", 18); //import另一個檔案的class
  //print(Kate._age); 編譯錯誤

  // Create an object of Employee class
  Employee emp = new Employee();
  // setting values to the object using setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");

  //Practice
  var myAccount = Account("handsomeManKevin", "iamsohandsome");
  print("Account username: ${myAccount.getUser()}");
  myAccount.setUser("stillHandsomeKevin");
  print("Account username: ${myAccount.getUser()}");

  myAccount.addMoney(100000);
  myAccount.minusMoney(10);
  print("Money Left: ${myAccount.readMoney()}");

  myAccount.resetPW("iamSoBad", "iamStillSoHandsome");
  myAccount.resetPW("iamsohandsome", "iamStillSoHandsome");
}
