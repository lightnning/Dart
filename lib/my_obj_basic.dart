void main(){

  MyObjBasic taro = new MyObjBasic();
  taro.name = 'Taro';  //インスタンス変数である name に値を代入している
  taro.age = 35;
  taro.printData();  // メソッドの呼び出し

  MyObjBasic hanako = new MyObjBasic();
  hanako.name = 'Hanako';
  hanako.age = 28;
  hanako.printData();
}

class MyObjBasic{
  String name; // インスタンス変数
  num age;
  
  void printData(){
    // String re = '<MyObj "' + this.name + '"(' + this.age.toString() + ')>';
    String re = ' 私の名前は ' + this.name + ' です。' + '年齢は '+ this.age.toString() + ' 歳です';

    // thisについて
    // この「this」というのは何か？ これは、「このインスタンス自身」を示す値なのです。
    // nameやageは、インスタンスごとに値が代入されます。
    // ですから、メソッド内からその値を利用する際には、「今使っている、このインスタンスの中にあるname」を
    // 取り出さないといけません。それを行うのがthisなのです。クラスのメソッド内からインスタンス変数や
    // メソッドを利用する際には、「this.○○」というようにして記述をします。
    print('my_obj_basic');
    print(re);
  }
}