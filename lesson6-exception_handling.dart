//Exception Handling: 另外處理可能會有run-time error的地方
void main() {
  //Case 1: When you know the exception to be thrown, us ON Clause
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot be divided by zero!");
  }
  //Case 1: When you don't know the exception, us CATCH Clause
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  }

  //Case3: Using STACK TRACE to know the events occured before Exception was thrown
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e, s) {
    print("The excpetion thrown is $e");
    print("STACK TRACE \n $s");
  }

  //Case 4: Whether there is an Exception or not, FINALLY Clause is always Executed
}
