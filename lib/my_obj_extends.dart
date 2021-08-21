import 'my_obj.dart';

// void main() {
//   MyObj taro = new MyObj.make('Taro', 35);
//   taro.printData();
//   MyData hanako = new MyData.make('Hanako', 'hanako@flower', 28);
//   hanako.printData();
// }
 

 
class MyObjExtend extends MyObj {  // サブクラス
  String mail;
   
  MyObjExtend() : this.make('初期name', 'firstname@mail', 0);
   
  MyObjExtend.make(String name, String mail, num age){
    this.name = name;
    this.mail = mail;
    this.age = age;
  }
   
  @override
  // オーバーライドしたメソッドは、その手前に @override というものを記述しておきます。
  // この@で始まる文は「アノテーション」と呼ばれるもので、メソッドなどに特定の性質を割り当てたりするのに利用されます。
  // @overrideは、そのメソッドがオーバーライドされたものであることを示します。

  void printData(){
    // String re = '< MyData "' + this.name + '" [' + this.mail + '] (' + 
    //       this.age.toString() + ') >';
    String re = 'my_obj_extends 私の名前は ' + this.name + ' です。' + '年齢は '+ this.age.toString() + ' 歳です';

    print(re);
  }
}

/*
「super」について
サブクラスでは、スーパークラスのインスタンスにあるメソッドなどを呼び出すことができます。
これは「super」というものを利用します。例えば、スーパークラスにあるprintDataを呼び出したければ、

super.printData();

「スーパークラスにあるメソッドに、更にちょっとした機能を付け足したい」場合

void printData(){
    super.printData();
    ……追加する処理……
}


*/