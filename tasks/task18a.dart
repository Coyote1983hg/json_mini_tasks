import 'dart:convert';
import '../domain/dog.dart';

void main() => jsonDecode("""
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
""")['animals']
    .where((animalItem) => animalItem['species'] == 'Dog')
    .map<Dog>((dogItem) => Dog(
          name: dogItem['name'],
          breed: dogItem['breed'],
          age: dogItem['age'],
        ))
    .forEach(print);
