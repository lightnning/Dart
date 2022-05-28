//例
void main() {
  print(Circle.pi);
  Circle.circleArea(5);
  Trapezoid.trapezoidArea(3, 5, 4);
}

class Circle {
  static const pi = 3.14;

  static void circleArea(int radius) {
    double area = radius * radius * pi;
    print(area);
  }
}

//出力
//3.13
//78.5

class Trapezoid {
  static const i = 0.5;

  static void trapezoidArea(int upperSide,int lowerSide, int height){
    double area = (upperSide + lowerSide) * height * i;
    print(area);
  }
}