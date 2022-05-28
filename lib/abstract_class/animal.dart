abstract class Animal {
  String cry(); // 抽象メソッド
}

class Baby extends Animal{
  String cry(){
    return "オギャー";
  }
}

class Dog extends Animal{
  String cry(){
    return "ワン";
  }
}

class Crow extends Animal{
  String cry(){
    return "カー";
  }
}

class Trainer {
  void excute(Animal animal){
    print(animal.cry());
  }
}

main(){
  var baby = Baby();
  var dog = Dog();
  var crow = Crow();
  var trainer = Trainer();

  trainer.excute(baby);
  trainer.excute(dog);
  trainer.excute(crow);
  
}