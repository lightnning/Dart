//例
void main() {
  SportCar sportCar = SportCar(members: 6);
  sportCar.childDrive(); 
}

//親クラスの定義
class Car {
  int parentMembers;
  Car({this.parentMembers}) {}

  void parentDrive() {
    print('I am driving');
  }
}

//子クラスの定義
class SportCar extends Car {
  //親クラスのコンストラクタを使用
  SportCar({int members}) : super(parentMembers: members) {} 

  void childDrive() {
    print(super.parentMembers); //親クラスのプロパティを使用
    super.parentDrive(); //親クラスのメソッドを使用
  }
}

//出力
//6
//I am driving