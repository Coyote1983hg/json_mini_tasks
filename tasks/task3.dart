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

  // Erstelle eine Instanz der Klasse User basierend auf dem JSON-String json3
  // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json3);

  // Extrage datele necesare din Map-ul JSON
  Map<String, dynamic> personMap = jsonMap['person'];
  Map<String, dynamic> nameMap = personMap['name'];
  String firstName = nameMap['first'];
  String lastName = nameMap['last'];
  String city = personMap['city'];

  // Creează o instanță a clasei User folosind factory constructor
  User user = User(
    gender: '', // Valorile pentru gender și fullName nu sunt furnizate în JSON
    fullName: '$firstName $lastName',
    city: city,
  );

  print('Full Name: ${user.fullName}');
  print('City: ${user.city}');
}
