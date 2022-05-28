class SuperClass {
  void test() => print('SuperClass');
}

class SubClass extends SuperClass {
  @override
  void test() => print('SubClass');
}

void main() {
  // 通常利用
  SuperClass obj1 = SuperClass();
  obj1.test();
  SubClass obj2 = SubClass();
  obj2.test();
  // Upcast
  SuperClass obj3 = SubClass();
  obj3.test();
  // Downcast
  SubClass obj4 = obj1;
  obj4.test();
}