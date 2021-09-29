class MyData {

  String name;
  MyData(this.name);
  // MyData(String name){ this.name = name;}と等価

  void printData(){
    String re = ' 私のDataは "' + this.name + '"です';
    print('my_data');
    print(re);
  }
}