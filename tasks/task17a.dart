import 'dart:convert';
import '../domain/dog.dart';

void main() => jsonDecode("""
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
""")['rescueDogs']
    .map<Dog>((dogItem) => Dog(
          name: dogItem['name'],
          breed: dogItem['breed'],
          age: dogItem['age'],
        ))
    .forEach(print);
