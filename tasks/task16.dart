import 'dart:convert';

import '../domain/dog.dart';

void main() {
  String json16 = """
{
  "name": "Buddy",
  "breed": "Golden Retriever",
  "age": 3,
  "color": "Golden",
  "size": "Large",
  "weight": 30
}
""";

  // Erstelle eine Instanz der Klasse Dog basierend auf dem JSON-String json16
  // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json16);

  // Creează o instanță a clasei Dog
  Dog dog = Dog(
    name: jsonMap['name'],
    breed: jsonMap['breed'],
    age: jsonMap['age'],
  );

  print(dog);
}
