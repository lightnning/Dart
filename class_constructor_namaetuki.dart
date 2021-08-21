

void main() {
  MyObj taro = new MyObj.make('Taro', 35);
  taro.printData();
  MyObj hanako = new MyObj();
  // hanako.name = 'Hanako';
  // hanako.age = 24;
  hanako.printData();
  MyData test  = new MyData('teatData');
  test.printData();
}

class MyData {
  String name;
  // MyData(String name){ this.name = name;}と等価
  MyData(this.name);



  void printData(){
    String re = '私の名前は' + this.name + 'です';
    print(re);
  }
}

class MyObj {
  String name;
  num age;
   
  MyObj() : this.make('リダイレクト', 100); // 引数なしのコンストラクタを定義 :リダイレクト
   
  MyObj.make(String name, num age){  // 名前付きコンストラクタ
    this.name = name;
    this.age = age;
  }
   
  void printData(){
    // String re = '<MyObj "' + this.name + '"(' + this.age.toString() + ')>';
    String re = '私の名前は ' + this.name + ' です。' + '年齢は '+ this.age.toString() + ' 歳です';
    print(re);
  }
   
}

/*
名前付きコンストラクタ（named constructor）
--------------------
クラス名.名前 ( 引数 ){
    ……略……
}
--------------------
コンストラクタはクラス名のメソッドですが、クラス名の後に更に名前をつけることで、別のコンストラクタを用意できるようにしたのですね。
下のリスト欄に、実際の利用例を挙げておきます。ここでは、以下の2種類のコンストラクタを用意してあります。

MyObj()
MyObj.make(String name, num age)

これで、new MyObj() とすれば引数なしのコンストラクタが呼び出されますし、
new MyObj.make(○○,××) とすれば、MyObj.makeコンストラクタが呼び出されるようになる、というわけです。

*/