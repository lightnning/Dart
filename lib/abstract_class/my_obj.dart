void main() {
  MyData hanako = new MyData.make('Hanako', 'hanako@flower', 28);
  hanako.printData();
}
 
abstract class MyObj {
  String name;
  String mail;
  num age;
  void printData();
}
 
class MyData extends MyObj {
   
  MyData() : this.make('noname', 'no@mail', 0);
   
  MyData.make(String name, String mail, num age){
    this.name = name;
    this.mail = mail;
    this.age = age;
  }
   
  @override
  void printData(){
    String re = '<MyObj "' + this.name + ' [' + this.mail + '"](' + 
          this.age.toString() + ')>';
    print(re);
  }
}