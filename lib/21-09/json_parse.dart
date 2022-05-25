import 'dart:convert';
var jsonString = '''
{
  "name": "John Smith",
  "email": "john@example.com"
}
''';

Map<String, dynamic> user = jsonDecode(jsonString);

void main(){
 
  print('${user.toString}');
  print('Howdy, ${user['name']}!');
  print('We sent the verification link to ${user['email']}.');

}

