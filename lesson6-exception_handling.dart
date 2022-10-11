//Exception Handling: 另外處理可能會有run-time error的地方
//try, on, catch, finally

void main() {
  //Case 1: When you know the exception to be thrown, us ON Clause
  print("Case 1");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot be divided by zero!");
  }
  //Case 2: When you don't know the exception, us CATCH Clause
  print("Case 2");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  }

  //Case3: Using STACK TRACE to know the events occured before Exception was thrown
  print("Case 3");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e, s) {
    print("The excpetion thrown is $e");
    print("STACK TRACE \n $s");
  }

  //Case 4: Whether there is an Exception or not, FINALLY Clause is always Executed
  print("Case 4");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The excpetion thrown is $e");
  } finally {
    print("This is Finally Clause, always executed");
  }

  //Case 5: Custom Exception 自己定義Exception
  print("Case 5");
  try {
    depositMoney(-200);
  } on depositException catch (e) {
    print(e.errorMessage());
  }
}

//for Case 5
class depositException implements Exception {
  String errorMessage() {
    return "You can not enter amount less than 0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new depositException();
  }
}
