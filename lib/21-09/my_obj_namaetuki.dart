// クラス、コンストラクタ

class MyObjNamaetuki {
  String name;
  num age;
   
  MyObjNamaetuki() : this.make('リダイレクト', 100); // 引数なしのコンストラクタを定義 :リダイレクト
   
  MyObjNamaetuki.make(String name, num age){  // 名前付きコンストラクタ
    this.name = name;
    this.age = age;
  }
   
  void printData(){
    // String re = '<MyObj "' + this.name + '"(' + this.age.toString() + ')>';
    String re = ' 私の名前は ' + this.name + ' です。' + '年齢は '+ this.age.toString() + ' 歳です';
    print('my_obj_namaetuki');
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