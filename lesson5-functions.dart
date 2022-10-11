//Functions
void main() {
  print(add(1, 2)); //1+2=3
  print(multi(2, 3));
  printLove();
  printCountries("Taiwan", "Japan");

  findVolume(5, height: 5, width: 5);
  print(find_volume(5, 3)); //150
}

int add(int num1, int num2) {
  return num1 + num2;
}

//一、Dart 沒有 Overloading!!!
/* 編譯錯誤
int add(int num1, int num2, int num3) {
  return num1 + num2 + num3;
} 
*/

//二、Fat Arrow: 若Functions裡面只有一行，可以使用=>
void printLove() => print("I love you!");

int multi(int num1, int num2) => num1 * num2; //若有回傳值，不必寫return

//三、Optional Positional Parameters: 可以用[]把函式參數包起來，且必須是var(版本更新)，呼叫時就不一定要填入
void printCountries(String name1, String name2, [var name3]) {
  print("$name1");
  print("$name2");
  print("$name3");
}

//四、Named Parameters
void findVolume(int length, {var width, var height}) {
  print("${length * width * height}");
}

//五、Default Parameters: 限定某參數的值
int find_volume(int length, int width, {int height = 10}) {
  return length * width * height;
}
