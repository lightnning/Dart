//例
class Car {
  //プロパティ
  int doors;
  int members;

  //コンストラクタ
  Car({int doors, int members}) {
    this.doors = doors;
    this.members = members;
  }
  // Car(this.doors, this.members);

  //メソッド
  void drive() {
    print('I am driving ' + 'doors= ' + this.doors.toString());
  }
}