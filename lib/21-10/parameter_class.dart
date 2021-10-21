//例
void main() {
  SportCar sportCar = SportCar(speed: 200, a: 6);
  print(sportCar.speed);
  print(sportCar.parentMembers);
}

//親クラスの定義(パラメータありの場合)
class Car {
  int parentMembers;
  Car({this.parentMembers}) {}
}

//子クラスの定義
class SportCar extends Car {
  int speed;
  SportCar({this.speed, int a}) : super(parentMembers: a) {}
}

//出力
//200
//6