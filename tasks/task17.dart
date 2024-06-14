import 'dart:convert';

import '../domain/dog.dart';

void main() {
  String json17 = """
{
  "rescueDogs": [
    {
      "name": "Buddy",
      "breed": "Golden Retriever",
      "age": 3,
      "bodyStats": {
        "color": "Golden",
        "size": "Large",
        "weight": 30
      }
    },
    {
      "name": "Luna",
      "breed": "Labrador Retriever",
      "age": 2,
      "bodyStats": {
        "color": "Black",
        "size": "Medium",
        "weight": 25
      }
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse Dog basierend auf dem JSON-String json17
  // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json17);

  // Extrage lista de câini din Map-ul JSON
  List<dynamic> dogsList = jsonMap['rescueDogs'];

  // Creează instanțe ale clasei Dog
  List<Dog> dogs = dogsList.map((dogItem) {
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
