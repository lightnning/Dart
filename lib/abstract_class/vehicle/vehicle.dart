abstract class Vehicle{
  void showStatus();
}

class Car extends Vehicle{
  @override 
  void showStatus(){
    print('.....');
  }
}

void main(){
  var a = Car();
  a.showStatus();
  print(Car());
  Car().showStatus();
}