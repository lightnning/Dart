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

// class SuperClass {
//   void test(covariant String s) => print('SuperClass' + s);
// }

// class SubClass extends SuperClass {
//   @override
//   void test(int i) {
//     print('SubClass:'+i);

//   }
// }

// void main() {
//   SubClass obj = SubClass();
//   obj.test(1);
// }

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

// super コンストラクタ
/*
superコンストラクタを利用することで、スーパークラスのコンストラクタを呼ぶ
  - SubClass(this.b) : super(b);とすることで、SuperClass(this.a);も呼ばれる
    - ＝SubClassのオブジェクトは、変数aもbも持つ
  - SubClass(this.b);のみだと以下エラー
    - The superclass 'SuperClass' doesn't have a zero argument constructor
*/

// class SuperClass {
//   String a ;
//   SuperClass(this.a);
//   void test() => print('SuoerClass: $a');
// }

// class SubClass extends SuperClass {
//   String b;
//   SubClass(this.b) : super(b);
//   @override
//   void test() => print('SubClass: $b');
// }

// void main() {
//   SubClass obj = SubClass('Hello');
//   obj.test();
//   print(obj.a);
//   print(obj.b);
// }

/*
実際にsuperコンストラクタ利用する際は、基本はsuperには何か値を渡す時にのみ呼ぶべき
*/

// class SuperClass {
//   String a;
//   SuperClass(this.a);
//   void test() => print('SuperClass: $a');
// }

// class SubClass extends SuperClass {
//   String b;
//   SubClass(this.b) : super(b*2);
//   @override
//   void test() => print('SubClass: $b');
// }

// void main() {
//   SubClass obj = SubClass('Hello');
//   obj.test();
//   print(obj.a);
//   print(obj.b);
// }

// abstractクラス（extends）
/*
他のクラスでクラスそのものを利用するためのabstractクラス
  - abstractクラスでは、void test();のように空の関数を置いておける
    - @overrideは省略可能だが、非推奨
  - abstractが付くクラスは、それ自体をオブジェクト化しようとするとエラーとなる
    - AbstractSuperClass obj = AbstractSuperClass();とすると以下エラー
      Abstract classes can't be instantiated
*/

// abstract class AbstractSuperClass {
//   void test();
// }

// class SubClass extends AbstractSuperClass {
//   @override
//   void test(){
//     print('SubClass');
//   }
// }

// void main() {
//   SubClass obj = SubClass();
//   obj.test();
// }

/*
  abstractを付けない以下の場合も同様なことが可能だが、
  空関数についてoverride必須ではないので、あまり意味がない

    特定の関数を必ず持っているというルールを作れない
    未実装の場合にエラーで教えてくれることが無い
*/

// 変数やコンストラクタを持つ場合

// abstract class AbstractSuperClass {
//   String a;
//   AbstractSuperClass(this.a);
//   void test();
// }

// class SubClass extends AbstractSuperClass {
//   String b;
//   SubClass(this.b) : super(b*2);
//   @override
//   void test() => print('SubClass: $b');
// }

// void main() {
//   SubClass obj = SubClass('Hello');
//   obj.test();
//   print(obj.a);
//   print(obj.b);
// }

// GetterとSetterの空の関数をabstractクラスで定義する例

abstract class Creature {
  int _number;
  String _name;
  Creature(this._number, this._name);

  // Abstract Getter
  int get number;
  String get name;

  // Abstract Setter
  set name(String s);
  
}

class Monster extends Creature {
  Monster(number, name) : super(number, name);

  // Getter
  @override 
  int get number => _number;
  @override 
  String get name => _name;

  // Setter
  @override 
  set name(String s) {
    if (s.length > 0 && s.length < 11) {
      _name = s;
    } else {
      print('$s:文字数を1文字以上10文字以下にしてください。');

    }
  }
}

  void main() {
    final monster = Monster(1, 'Slime');
    print(monster.number.toString() + ':' + monster.name);
    monster.name = 'Slaline';
    print(monster.number.toString() + ':' + monster.name); 
  }
