void main() {
  MyObj taro = new MyObj('Taro', 35);
  taro.printData();
  MyObj hanako = new MyObj('Hanako', 28);
  hanako.printData();
}

class MyObj {
  String name;
  num age;

  MyObj(String name, num age){
    this.name = name;
    this.age = age;
  }

  void printData(){
    String re = '<MyObj "' + this.name + '"(' + this.age.toString() + ')>';
    print(re);
  }
}