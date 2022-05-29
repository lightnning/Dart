import './parent.dart';

class Child extends Parent {
  String getName1() {
    return "child [Not ${super.getName()}]";
  }
  String getName2() {
    return "child [Not ${super._name}}"; // エラーになる
  }
}