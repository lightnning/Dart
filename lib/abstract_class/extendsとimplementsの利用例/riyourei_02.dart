// For extends
abstract class Creature {
  String name;
  int hp;
  Creature(this.name, this.hp);

  bool isDead() => hp <= 0;
  void attack();
}

class Human extends Creature {
  Human(name, hp) : super(name, hp);

  @override
  void attack() {
    print('human name:${this.name} hp:${this.hp}');
    if (isDead()) {
      print('瀕死');
      return;
    }
    
    print('human パンチ');
  }
}

class Monster extends Creature {
  Monster(name, hp) : super(name, hp);
  
  @override
  void attack() {
    print('monster name:${this.name} hp:${this.hp}');
    if (isDead()) {
      print('monster 瀕死');
      return;
    }
    
    print('魔法');
  }
  
}

void main() {
  final human = Human('Warrior', 10);
  final monster1 = Monster('Slime', 0);
  final monster2 = Monster('Dragon', 100);
  human.attack();
  monster1.attack();
  monster2.attack();
}
