void main(){

  MyObj taro = new MyObj();
  taro.name = 'Taro';  //インスタンス変数である name に値を代入している
  taro.age = 35;
  taro.printData();  // メソッドの呼び出し

  MyObj hanako = new MyObj();
  hanako.name = 'Hanako';
  hanako.age = 28;
  hanako.printData();
}

class MyObj{
  String name; // インスタンス変数
  num age;
  
  void printData(){
    // String re = '<MyObj "' + this.name + '"(' + this.age.toString() + ')>';
    String re = '私の名前は ' + this.name + ' です。' + '年齢は '+ this.age.toString() + ' 歳です';

    // thisについて
    // この「this」というのは何か？ これは、「このインスタンス自身」を示す値なのです。
    // nameやageは、インスタンスごとに値が代入されます。
    // ですから、メソッド内からその値を利用する際には、「今使っている、このインスタンスの中にあるname」を
    // 取り出さないといけません。それを行うのがthisなのです。クラスのメソッド内からインスタンス変数や
    // メソッドを利用する際には、「this.○○」というようにして記述をします。

    print(re);
  }
}