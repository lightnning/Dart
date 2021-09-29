// 参照url:https://zenn.dev/iwaku/articles/2020-12-16-iwaku
// クラスを利用したクラス作成の基本


class SuperClass {
  void test() => print('SuperClass');
}

class SubClass extends SuperClass {
  @override
  test() => print('SubClass');
}

void main() {
  // 通常利用
  SuperClass obj1 = SuperClass();
  obj1.test();
  SubClass obj2 = SubClass();
  obj2.test();

  // Upcast
  // サブクラスのオブジェクトをスーパークラスと同じように扱うこと
  SuperClass obj3 = SubClass();
  obj3.test();
  
  // Downcast
  // スーパークラスのオブジェクトをサブクラスと同じように扱うこと
  //  =スーパークラスのオブジェクトをサブクラスのオブジェクトに対応できるように変換
  // 自動で行われない

  // SubClass obj4 = obj1; // => エラーになる 
  // obj4.test(); 


}
