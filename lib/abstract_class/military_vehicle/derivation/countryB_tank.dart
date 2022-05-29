// 戦車の装備を継承して
// 輸出先の国独自の実態を作成
import '../original/tankB.dart';
import 'country_if.dart';

class CountryB extends TankB implements CountryIf {
  CountryB(String type) : super(type);

  @override
  void information() {
    print('これは、B国に輸出された戦車です');
    super.equipment();
  }
}