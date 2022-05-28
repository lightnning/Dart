import 'dart:math';

import 'magic_warrior.dart';
import 'profession.dart';
import 'warrior.dart';
import 'wizard.dart';

void main() {
  Profession warrior = Warrior("戦士", "剣でモンスターと戦う人");
  print(warrior.pfofessionName);
  print(warrior.ability);
  var skillA = warrior.skill(["魔神斬り", "メタル斬り", "火炎斬り"]);
  print(skillA);
  var experienceA = warrior.experience(["戦士"]);
  print(experienceA);

  Wizard wizard = Wizard("魔法使い", "魔法でモンスターと戦う人");
  print(wizard.pfofessionName);
  print(wizard.ability);
  var skillB = wizard.skill(["ホイミ", "マヌーサ", "メダパニ"]);
  print(skillB);
  var experienceB = wizard.experience(["魔法使い"]);
  print(experienceB);

  MagicWarrior magicWarrior = MagicWarrior("魔法戦士", "剣と魔法でモンスター戦う人");
  print(magicWarrior.pfofessionName);
  print(magicWarrior.ability);
  var skillC = magicWarrior.skill(e);
  print(skillC);
  var experienceC = magicWarrior.experience(e);
  print(experienceC);
}