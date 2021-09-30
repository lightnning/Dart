// 参照url:https://zenn.dev/iwaku/articles/2020-12-16-iwaku
// クラスを利用したクラス作成の基本


// オーバーライドする関数の引数の型を変更(covariant)

class SuperClassForArgument {}

class SubClassForArgument extends SuperClassForArgument {}

class SuperClass {
  void test(SuperClassForArgument obj) => print('SuperClass:' + obj.toString());
}

class SubClass extends SuperClass {
  @override
  void test(covariant SubClassForArgument obj) {  // covariant を付記
  // covariant => 
  //    共変 (covariant): 広い型（例：double）から狭い型（例：float）へ変換する(できる)こと。
  // 逆：contravariant、 不変：invariant(型を変換できないこと)
    print('SubClass:' + obj.toString());
  }
}

void main() {
  SubClass obj = SubClass();
  obj.test(SubClassForArgument());
}



