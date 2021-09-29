// 参照url:https://zenn.dev/iwaku/articles/2020-12-16-iwaku
// クラスを利用したクラス作成の基本


class SuperClass {
  void test() => print('SuperClass');
}

class SubClass extends SuperClass {
  @override
  // test() => print('SubClass');
  void test() {
    super.test();
    print('SubClass');
  }
}

void main() {
  SubClass obj = SubClass();
  obj.test();


}
