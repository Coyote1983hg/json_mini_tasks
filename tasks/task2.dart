import 'dart:convert';

import '../domain/user.dart';

void main() {
  String json2 = """
{
  "username": "kristinward",
  "sex": "F",
  "address": "122 Powell Trace Suite 016, Lloydport, SC 08075",
  "name": "Katherine Gill",
  "email": "jestrada@gmail.com",
  "birthday": "1958-04-05",
  "location": {
    "city": "Lloydport",
    "state": "South Carolina",
    "country": "United States",
    "postcode": "08075"
  }
}
""";
  // Erstelle eine Instanz der Klasse User basierend auf dem JSON-String json2
  Map<String, dynamic> m = jsonDecode(json2);
  User a =
      User(gender: m["sex"], fullName: m["name"], city: m["location"]["city"]);
  print(a.gender);
  print(a.fullName);
  print(a.city);
}
