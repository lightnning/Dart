import './child.dart';

main(){
  Child child = new Child();
  print(child.getName1());
  //> child [Not parent]
  print(child.getName2());
  //> Unhandled exception: Class 'Child' has no instance getter '_name'.
  print(child._name); //private propertyにアクセスできない
  //> Unhandled exception: Class 'Child' has no instance getter '_name'.
}