// 戦車の装備を継承して
// 輸出先の国独自の実態を作成
import '../original/tankA.dart';
import 'country_if.dart';

class CountryA extends TankA implements CountryIf {
  CountryA(String type) : super(type);

  @override
  void information() {
    print('これは、A国に輸出された戦車です');
    super.equipment();
  }
}