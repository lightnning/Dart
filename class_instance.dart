void main(){
  MyObj taro = new MyObj();
  taro.name = 'Taro';
  taro.age = 35;
  taro.printData();
  MyObj hanako = new MyObj();
  hanako.name = 'Hanako';
  hanako.age = 28;
  hanako.printData();
}

class MyObj{
  String name;
  num age;
  void printData(){
    String re = '<MyObj "' + this.name + '"(' + this.age.toString() + ')>';
    print(re);
  }
}