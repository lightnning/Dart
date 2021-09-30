// 参照url:https://zenn.dev/iwaku/articles/2020-12-16-iwaku
// クラスを利用したクラス作成の基本


// オーバーライドする関数の引数の型を変更(covariant)

class SuperClassForArgument{}

class SubClassForArgument extends SuperClassForArgument {}

class SuperClass {
  void test(SuperClassForArgument obj) => print('SuperClass:' + obj.toString());
}

class SubClass extends SuperClass {
  @override 
  void test(SubClassForArgument obj) {
    print('SubClass:' + obj.toString());
  }
}

void main() {
  SubClass obj = SubClass();
  obj.test(SubClassForArgument());




}
