
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
    print('半径${this.radius}の円の面積は${this.radius*this.radius}');
   
  }
  
}

class CircleLength extends Shape {
  double radius = 0;
  CircleLength(this.radius);
  
  void getArea(){
    print('半径${this.radius}の円周は、${this.radius * 2 * 3.14}');
  }

}

void main(){
  var rect = Rectangle(3, 4);
  var cir = Circle(1);
  var cir_le = CircleLength(1);
  rect.getArea();
  cir.getArea();
  cir_le.getArea();


}