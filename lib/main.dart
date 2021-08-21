
import 'my_obj_namaetuki.dart';
import 'my_data.dart';
import 'my_obj_basic.dart';
import 'my_obj_extends.dart';
import 'calc.dart';


void main() {
  
  MyObjBasic tarotaro = new MyObjBasic();
  tarotaro.name = 'TaroTrao';  //インスタンス変数である name に値を代入している
  tarotaro.age = 45;
  tarotaro.printData();  // メソッドの呼び出し

  MyObjNamaetuki taro = new MyObjNamaetuki.make('Taro', 35);
  taro.printData();

  MyObjNamaetuki hanako = new MyObjNamaetuki();
  hanako.printData();
  hanako.name = 'Hanako';
  hanako.age = 24;
  hanako.printData();

  MyData test  = new MyData('testData');
  test.printData();

  MyObjExtend kana = new MyObjExtend.make('Kana', 'kana@flower.jp', 28);
  kana.printData();

  print('Calc');
  print(Calc.calc(10000));
  Calc.tax = 8;
  print(Calc.calc(10000));
  Calc.tax = 10;
  print(Calc.calc(10000));
}