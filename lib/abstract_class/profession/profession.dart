// 職業を意味するプロフェッションクラス
class Profession {
  final String _professionName; // 職業の名前を表すプロフェショナルプロパティ
  final String _ability; // 能力を表すアビリティプロパティ

  Profession(this._professionName, this._ability);

  String get pfofessionName => _professionName;
  String get ability => _ability;

  // 技能を表示するスキルメソッド
  List skill(e) {
    return e;
  }

  // 経験のある職業を表示するエクスペリアンスメソッド
  List experience(e) {
    return e;
  }
}
