//Conditional Expressions
void main() {
  //1. condition ? exp1 : exp2
  //true-> exp1 ; false-> exp2
  int a = 2;
  int b = 3;
  String smallerNumber = a > b ? 'a' : 'b';
  print("The smaller number is $smallerNumber");

  //2. exp1 ?? exp2
  //If exp1 is non-Null, returns its value; else return exp2
  //已廢棄 因為null safety
}
