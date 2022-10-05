void main() {
  //可以直接放不同的變數進去print
  print("Hello World");
  print(12 / 4);
  print(12 / 9);
  print(false);

  //print換行

  //利用 $ 來print，若很複雜，可以在$後面加{}把要印的變數包起來
  var myMoney = 0;
  print("Total money in my wallet is $myMoney");
  var debt = 10000;
  print('I\'ve got a loan from bank, now my total money is ${myMoney - debt}');
}
