import 'dart:convert';
import '../domain/user.dart';

void main() {
  String json3 = """
{
  "person": {
    "name": {
      "first": "Katherine",
      "last": "Gill"
    },
    "city": "Lloyd",
    "zip": "08075"
  },
  "phone": "1-202-555-0191",
  "email": "k.gill@hotmail.com"
}
""";

  Map<String, dynamic> jsonMap = jsonDecode(json3);
  Map<String, dynamic> personMap = jsonMap['person'];
  Map<String, dynamic> nameMap = personMap['name'];

  User user = User(
    gender: '',
    fullName: '${nameMap['first']} ${nameMap['last']}',
    city: personMap['city'],
  );

  print(user);
}


