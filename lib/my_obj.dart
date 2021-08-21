// void main() {
//   MyObj taro = new MyObj('Taro', 35);  // newによるインスタンス生成
//   taro.printData();
//   MyObj hanako = new MyObj('Hanako', 28);
//   hanako.printData();
//   MyObj tomoya = new MyObj('Tomoya', 54);
//   tomoya.printData();
//   tomoya.printAge();
// }

class MyObj {
  String name;  // インスタンス変数
  num age;

  MyObj() : this.make('noname', 0);

  MyObj.make(String name, num age){  // コンストラクタ
    this.name = name;
    this.age = age;
  }

  void printData(){
    // String re = '<MyObj "' + this.name + '"(' + this.age.toString() + ')>';
    String re = '私の名前は ' + this.name + ' です。' + '年齢は '+ this.age.toString() + ' 歳です';
    print(re);
  }

  void printAge(){
    String re = this.name + 'の年齢は '+ this.age.toString() + ' 歳です';
    print(re);
  }
}

// コンストラクタ
// 先ほどのサンプルでは、MyObjインスタンスを作成後、nameとageの値を設定していました。が、これはちょっと面倒ですよね。
// どうせなら、newしたときに、必要な値を引数として渡せたほうがずいぶんと楽です。

// こうした「インスタンス作成時の処理」を行う場合、とても便利な機能があります。それが「コンストラクタ」です。
// コンストラクタは、newでインスタンスを作成する際に自動的に呼び出される、インスタンス初期化用の特別なメソッドです。
// これは以下のような形をしています。

/*
-------------------
クラス名 ( 引数 ){
    ……初期化処理……
}
-------------------

コンストラクタは、クラスと同じ名前のメソッドとして定義します。
重要なのは「戻り値の指定がない」という点です（戻り値があると、普通のメソッドとして認識されます）。

ここでは、MyObjクラスに以下のようなコンストラクタを用意してあります。
MyObj(String name, num age){
    this.name = name;
    this.age = age;
  }
-------------------

Stringとnumの２つの引数を持ったコンストラクタですね。
これらの引数で渡された値をそれぞれthis.nameとthis.ageに代入しています。
では、このコンストラクタはどのように利用されているでしょうか。

MyObj taro = new MyObj('Taro', 35);
MyObj hanako = new MyObj('Hanako', 28);

こんな具合に、名前と年齢の値を引数に指定してインスタンスを作成できるようになりました。

*/