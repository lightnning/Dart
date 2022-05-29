import 'tank.dart';

class TankB implements OriginTank {
  final String _type;
  TankB(this._type);

  @override
  void equipment() {
    print('こちらの製品は、$_type装備が貧弱で、旧式の兵器です。');
  }
}