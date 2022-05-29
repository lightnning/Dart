import 'derivation/countryA_tank.dart';
import 'derivation/countryB_tank.dart';
import 'derivation/country_if.dart';

void main() {
  CountryIf countryA = CountryA('120mm滑空砲を搭載した戦車です。');
  CountryIf countryB = CountryB('装甲が貧弱な戦車です。');
  countryA.information();
  countryB.information();
}