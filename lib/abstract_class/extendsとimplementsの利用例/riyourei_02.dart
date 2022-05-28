// For extends
abstract class Creature {
  String name;
  int hp;
  Creature(this.name, this.hp);

  bool isDead() => hp <= 10;
  void attack();
}

class Human extends Creature {
  String nickName;
  Human(name, this.nickName,hp) : super(name, hp);
  
  

  @override
  void attack() {
    print('${this.name}のhpは、${this.hp}');
    if (isDead()) {
      print('${this.name}(${this.nickName})は、瀕死状態だった');
      return;
    }
    
    print('humanは、パンチをした');
  }
}

class Monster extends Creature {
  Monster(name, hp) : super(name, hp);
  
  @override
  void attack() {
    print('${this.name}のhpは、${this.hp}だった');
    if (isDead()) {
      print('${this.name}は、瀕死状態だった');
      return;
    }
    
    print('${this.name}は、魔法をかけた');
  }
  
}

void main() {
  final human = Human('Warrior','Wa-' ,10);
  final monster1 = Monster('Slime', 0);
  final monster2 = Monster('Dragon', 100);
  human.attack();
  monster1.attack();
  monster2.attack();
}
