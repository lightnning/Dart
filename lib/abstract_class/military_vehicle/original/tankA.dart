import 'tank.dart';

class TankA implements OriginTank {
  final String _type;
  TankA(this._type);

  @override
  void equipment() {
    print('こちらの製品は、$_type高性能な装備です。');
  }
}