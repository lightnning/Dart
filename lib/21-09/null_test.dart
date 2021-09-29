// Dartの型の理解

class Person {}
class Mario extends Person {}
class Luigi extends Person {}

main() {
  final mario = Mario();
  print(mario is Mario); // true
  print(mario is Luigi); // false

  // Null 型
  print(null is Null);  // true
  int v;
  print(v == null);  // true

  int? value = null;
  print('int? value = null ${value}');




}
