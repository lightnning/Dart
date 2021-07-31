void main() {
  Calc.tax = 8;
  print(Calc.calc(10000));
  Calc.tax = 10;
  print(Calc.calc(10000));
}
 
class Calc {
  static num tax;
   
  static num calc(num price){
    return price * (100 + tax) / 100;
  }
}

/*
クラス変数とクラスメソッド
- クラスから直接利用できる変数とメソッド

static 変数宣言
static メソッド宣言

static をつけると 
その変数やメソッドは、クラス変数やクラスメソッドとして使われるようになります。

クラス変数やクラスメソッドは、インスタンスからは利用できません。



*/