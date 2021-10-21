// @overrideを使えば、クラスを継承する際、親クラスがもつメソッドを上書きすることができます。

//例
main() {
  SportCar sport_car = SportCar();
  sport_car.model();
}

//親クラスの定義
class Car {
  void model() {
    print('It is a family car.');
  }
}

//子クラスの定義
class SportCar extends Car {
  @override //親クラスの「modelメソッド」を上書き
  void model() {
    print('It is a sport car');
  }
}

//出力
//It is a sport car