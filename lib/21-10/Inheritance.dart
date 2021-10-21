void main() {
  SportCar sport_car = SportCar();
  sport_car.childModel(); 
  sport_car.parentDrive(); 

}

//親クラスの定義(パラメータなしの場合)
class Car {
  void parentDrive() {
    print('I am driving');
  }
}

//子クラスの定義
class SportCar extends Car {
  void childModel() {
    print('It is a sport car');
  }
}

//出力
//It is a sport car
//I am driving