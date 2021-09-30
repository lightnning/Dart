// 参照url:https://zenn.dev/iwaku/articles/2020-12-16-iwaku
// クラスを利用したクラス作成の基本

// オーバーライドする関数の引数の型を変更(covariant)

// 成功例２
// covariantをSubClassの関数の引数ではなく、SuoerClassの関数の引数に追加した場合もエラーがなくなる

// class SuperClassForArgument {}

// class SubClassForArgument extends SuperClassForArgument {}

// class SuperClass {
//   void test(covariant SuperClassForArgument obj) =>
//       print('SuperClass:' + obj.toString());
// }

// class SubClass extends SuperClass {
//   @override
//   void test(SubClassForArgument obj) {
//     print('SubClass:' + obj.toString());
//   }
// }

// void main() {
//   SubClass obj = SubClass();
//   obj.test(SubClassForArgument());
// }

/*
引数が継承関係にあるものの場合のみで、stringを引数無しや、intにしようとしてもエラー

【備考】失敗例：引数が継承関係にあるものの場合のみ対象となる
（stringを、intにしようとしてもエラー）
SubClassで引数をintにしたいと思った場合
SubClassのvoid test(int i)で以下エラー
'SubClass.test' ('void Function(int)') isn't a valid override of 'SuperClass.test' ('void Function(String)')
SubClassのprint('SubClass:'+i);で以下エラー
The argument type 'int' can't be assigned to the parameter type 'String'
*/


class SuperClass {
  void test(covariant String s) => print('SuperClass' + s);
}

class SubClass extends SuperClass {
  @override 
  void test(int i) {
    print('SubClass:'+i);

  }
}

void main() {
  SubClass obj = SubClass();
  obj.test(1);
}

// エラー内容
/*
tomoya@kobayasoyanoAir lib % dart class-test.dart    

class-test.dart:49:17: Error: The parameter 'i' of the method 
'SubClass.test' has type 'int', which does not match the corresponding type, 
'String', in the overridden method, 'SuperClass.test'.
Change to a supertype of 'String', or, for a covariant parameter, a subtype.
  void test(int i) {
                ^
class-test.dart:44:8: Context: This is the overridden method ('test').
  void test(covariant String s) => print('SuperClass' + s);
       ^
class-test.dart:50:23: Error: A value of type 'int' can't be assigned to
 a variable of type 'String'.
    print('SubClass:'+i);
*/

