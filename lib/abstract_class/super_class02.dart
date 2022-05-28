class SuperClass {
  void test() => print('SuperClass');
}

class SubClass extends SuperClass {
  @override
  void test() {
    super.test();
    print('SubClass');
  }
}

void main() {
  SubClass obj = SubClass();
  obj.test();
}