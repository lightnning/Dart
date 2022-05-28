import 'profession.dart';
// 職業魔法戦士を表すウイザードクラス
class MagicWarrior extends Profession {
  MagicWarrior(String _pfofessionName, String _ability)
      : super(_pfofessionName, _ability);

  // 親クラスの技能を表示するスキルメソッドを上書き
  @override
  List skill(e) {
    return ["魔神斬り", "メタル斬り", "火炎斬り", "ホイミ", "マヌーサ", "メダパニ"];
  }
  // 親クラスの経験のある職業を表示するエクスペリアンスメソッドを上書き
  @override
  List experience(e) {
    return ["戦士", "魔法使い"];
  }
}