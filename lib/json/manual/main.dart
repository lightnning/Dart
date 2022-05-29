import 'dart:convert';
import 'sample_json.dart';

void main() {
 
  Map<String, dynamic> user = json.decode(sampleJson);

  String userString = json.encode(user);
  // json.decode() の戻り値の型は Map<String, dynamic>

  print('Howdy, ${user['name']}!');
  print('We sent the verification link to ${user['email']}.');
  print(user.runtimeType);
  print(userString);
}
