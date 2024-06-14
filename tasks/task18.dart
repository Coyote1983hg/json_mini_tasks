import 'dart:convert';

import '../domain/dog.dart';

void main() {
  String json18 = """
{
  "shelter": "Animal Shelter",
  "address": {
    "street": "1234 Elm Street",
    "city": "Springfield",
    "state": "IL",
    "zip": 62701
  },
  "animals": [
    {
      "name": "Whiskers",
      "species": "Cat",
      "breed": "Siamese",
      "age": 2
    },
    {
      "name": "Rex",
      "species": "Dog",
      "breed": "Golden Retriever",
      "age": 3
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse Dog basierend auf dem JSON-String json18
  // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json18);

  // Extrage lista de animale din Map-ul JSON
  List<dynamic> animalsList = jsonMap['animals'];

  // Creează instanțe ale clasei Dog pentru câinii din listă
  List<Dog> dogs = animalsList
      .where((animalItem) => animalItem['species'] == 'Dog')
      .map((dogItem) {
    return Dog(
      name: dogItem['name'],
      breed: dogItem['breed'],
      age: dogItem['age'],
    );
  }).toList();

  // Afișează fiecare câine
  for (Dog dog in dogs) {
    print(dog);
  }
}
