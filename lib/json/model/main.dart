import 'dart:convert';
import 'sample_json.dart';
import 'user.dart';

void main(){

  Map userMap = json.decode(sampleJson);
  var user = new User.fromJson(userMap);

print('Howdy, ${user.name}!');
print('We sent the verification link to ${user.email}.');
print(user.runtimeType);
}


