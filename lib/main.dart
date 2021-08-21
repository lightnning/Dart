// import 'package:test_dart/my_obj_namaetuki.dart';
// import 'package:test_dart/my_obj.dart';
import 'my_obj_namaetuki.dart';

void main() {
  MyObjNamaetuki taro = new MyObjNamaetuki.make('Taro', 35);
  taro.printData();
  MyObjNamaetuki hanako = new MyObjNamaetuki();
  // hanako.name = 'Hanako';
  // hanako.age = 24;
  hanako.printData();
  MyData test  = new MyData('teatData');
  test.printData();
}