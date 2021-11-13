void main() {
  Car car = Car(doors: 2,members: 6);
  print(car.doors);
  print(car.members);
  car.drive();
}

class Car {
  //プロパティ
  int doors;
  int members;

  //コンストラクタ
  Car({int doors, int members}) {
    this.doors = doors;
    this.members = members;
  }

  //メソッド
  void drive() {
    print('I am driving');
  }
}

//出力
//4
//6
//I am driving