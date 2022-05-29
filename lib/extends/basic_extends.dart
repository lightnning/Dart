class Parent {
  String getName() {
    return 'parent';
  }
}

class Child extends Parent {
  String getName() {
    return " ${super.getName()}";
  }
}

main(){
  print(new Child().getName());
  //> child [Not parent]
}