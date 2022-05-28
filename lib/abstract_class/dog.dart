
abstract class Dog {
  final String name;

  Dog({this.name});

  void bark();
  void run() {
    print('running...');
  }
}

class Poodle extends Dog {
  Poodle({name}) : super(name: name);
  @override 
  void bark() {
    print('bow wow!');
  }
  void run() {
    super.run();
    print('it is a poodle...');
  }
}


void main(){
  Dog poodle = Poodle(name: 'pochi');
  print(poodle.name);
  poodle.bark();
  poodle.run();
}
