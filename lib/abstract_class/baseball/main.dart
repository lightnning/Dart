abstract class Baseball {
  void hit();
  void pitch();
}

// ピッチャークラス
class Pitcher extends Baseball {
  String name;
  Pitcher(this.name);

  @override
  void hit() => {print('指名打者で打席に入った')};
  void pitch() => {print('ピッチングをした')};
}

// バッタークラス
class Batter extends Baseball {
  String name;
  Batter(this.name);

  @override
  void hit() => {print('一番バッターで打席に入った')};
  void pitch() => {print('ピッチングをした')};
}

void main() {
  new Pitcher('大谷').hit();
  new Batter('大谷').hit();

  Pitcher ohtani = Pitcher('大谷');
  ohtani.pitch();
}
