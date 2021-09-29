import 'dart:html';

class SuperClass {
  void test() => print('SuperClass');

}

class SubClass extends SuperClass {
  @override test() => print('SubClass'); 
}

void main() {
  // 通常利用
  SuperClass obj1 = SuperClass();
  obj1.test();
  SubClass obj2 = SubClass();
  
}