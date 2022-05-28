// For extends
abstract class AbstractSuperClass {
  void test1();
}

// For implements
abstract class AbstractInterfaceClass1 {
  void test2();
}

abstract class AbstractInterfaceClass2 {
  void test3();
}

class SubClass extends AbstractSuperClass
    implements AbstractInterfaceClass1, AbstractInterfaceClass2 {
  @override
  void test1() {
    print('SubClass:test1');
  }

  @override
  void test2() {
    print('SubClass:test2');
  }

  @override
  void test3() {
    print('SubClass:test3');
  }
}

void main() {
  SubClass obj = SubClass();
  obj.test1();
  obj.test2();
  obj.test3();
}