
class Cal{
  num x,y;

  // Point(num x, num y){
  //   this.x = x;
  //   this.y = y;
  // }

  Cal(this.x, this.y); // 一般的な書き方。前のコードと同じ意味

  void cal(){
    int add = this.x + this.y;
    int subtraction = this.x - this.y;
    int multiplication = this.x * this.y;
    double division = this.x / this.y;

    print(this.x.toString() + 'と' + this.y.toString() + 'は');
    print('足すと ' + add.toString());
    print('引くと ' + subtraction.toString());
    print('掛けると ' + multiplication.toString());
    print('割ると ' + division.toString());
  }
}

void main() {
  Point test = new Point(1,2);
  test.cal();

  
  
}