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

// エラー内容
/*
tomoya@kobayasoyanoAir lib % dart class-test.dart                         
class-test.dart:17:33: Error: The parameter 'obj' of the method 'SubClass.test' has type 'SubClassForArgument', which does not match the corresponding type, 'SuperClassForArgument', in the overridden method, 'SuperClass.test'.
 - 'SubClassForArgument' is from 'class-test.dart'.
 - 'SuperClassForArgument' is from 'class-test.dart'.
Change to a supertype of 'SuperClassForArgument', or, for a covariant parameter, a subtype.
  void test(SubClassForArgument obj) {
                                ^
class-test.dart:12:8: Context: This is the overridden method ('test').
  void test(SuperClassForArgument obj) => print('SuperClass:' + obj.toString());
*/