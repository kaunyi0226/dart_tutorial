void main() {
  //variables: 變數如果沒初始化，都是null
  /*
  int, double
  String
  bool
  List (Array)
  Map
  Rune (for expressing Unicode characters in a String)
  Symbol
   */

//一、基本資料型態
  int a;
  //print(a); 編譯錯誤 需要initialized --Null Safety

  int score = 59;
  double percentage = 93.4;

  String name = "Keivn";
  bool isHandsome = true;

  var year = 1989; //編譯器自動判斷型別
  int hexValue = 0xEADEBAEE;
  double exponents = 1.42e5; //指數

  print(hexValue);
  print(exponents);

  //String 跳脫符號

  //String Interpolation
  String message = "My name is $name";
  print("message: " + message); //避免使用+號，善用$
  print("The number of characters in Kevin is ${name.length}");

  int penNumber = 5;
  int penPrice = 99;
  print("The total price of pens is ${penNumber * penPrice}");

  //final、const

  //二、其他資料型態
  //1. List(like Array)-中括號
  final listA = [1, 2, "3", 4];
  listA[0] = 5;
  print("listA[0]: ${listA[0]}");

  //2. Set: 沒有index且不可重覆-大括號
  final setA = {0, 1, 2, 3, 4};
  print("setA: ${setA}"); // {0, 1, 2, 3, 4}
  //把List轉換成Set
  final listX = [0, 1, 0, 0, 1, 2, 1, 3, 4, 5, 6, 7];
  final setB = Set.from(listX); //{0, 1, 2, 3, 4, 5, 6, 7}
  setB.forEach((element) {
    //雖然沒有index但還是有初始化的順序
    print(element);
  });

  //3. Map(like dict.): key-value
  final mapA = {'a': 1, 'b': 2, 'c': 3};
  print("mapA['a']: ${mapA['a']}");

  //三、泛型generic: 型別有了參數，不能使用其他型別(否則error)
  final intList = <int>[1, 2, 3, 4];
  final strList = <String>['1', '2', '3', '4'];

  //四、強型別注意: Dart的除法只會返回double!!  但可以使用"取整除法~/"
  //int c = 12/4 ; 會出錯(double 不能assign給 int)
  int c = 12 ~/ 4;
  print(c);
}
