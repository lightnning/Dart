class Vehicle{
  num weight,height;

  Vehicle(num weight,num height) {
    this.weight = weight;
    this.height = height;
  } 
}

// void main(){
//  var c1 = Vehicle();

//  print(c1.height);
//  print(c1.weight);


// }

class Cat {
  String name;
  int old;
  Cat(this.name,this.old);
}

void main(List<String> arguments) {
  var cat = Cat("Mike",90);
  print("cat name is ${cat.name}");
  print(cat.old);
}