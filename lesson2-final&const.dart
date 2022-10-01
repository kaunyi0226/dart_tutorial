//先編譯後執行
//final:執行時(run-time)常數
//const:編譯時(compile-time)常數

void main() {
  //Case1
  const fruit = ['apple', 'banana'];
  const snack = ['pudding', 'cookies'];
  const food = [...fruit, ...snack];
  //food = [];   編譯錯誤
  print(food);

  //Case2
  var names = const ['Kevin', 'Sam'];
  //names.add('Tina');   編譯錯誤
  print(names);

  //Case3:若有一個List variable前面加const，就算value沒加const，value依舊不能被改變(但若是final則可以)
  final animals = ['dog'];
  animals.add('cat');
  print(animals); //印出[dog, cat]

  const animal = ['dog'];
  //animal.add('cat');     編譯錯誤

  //Case4:若有data在有初始value後(執行時)就不會再改變，使用final
  //const dog;    編譯錯誤(const在編譯時就需要初始化)
  final A;
  final B;
}
