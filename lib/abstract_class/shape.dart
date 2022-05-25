
abstract class Shape{
  void getArea();
}

class Rectangle extends Shape {
  double width = 0;
  double height = 0;

  Rectangle(this.width,this.height);

  void getArea() {
    print('幅${this.width},高さ${this.height}の四角形の面積は${this.width * this.height}');
    // return this.width * this.height;
  }

}

class Circle extends Shape {
  double radius = 0;
  Circle(this.radius);
  void getArea() {
    print('半径${this.radius}の円の面積は${this.radius * this.radius * 3.14}');
   
  }
  
}

class CircleLength extends Circle{
  CircleLength(double radius) : super(radius); //親クラスのコンストラクタを呼び出す

  void getCircleLength(){
    print('半径${this.radius}の円周は、${this.radius * 2 * 3.14}');
  }
}



void main(){
  var rect = Rectangle(3, 4);
  var cir = Circle(2);
  var cir_le = CircleLength(2);
  rect.getArea();
  cir.getArea();
  cir_le.getCircleLength();


}