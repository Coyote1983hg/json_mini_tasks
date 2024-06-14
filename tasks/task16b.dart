import 'dart:convert';
import '../domain/dog.dart';

void main() {
  // Parse JSON string once and access properties directly
  Map<String, dynamic> dogMap = jsonDecode("""
  {
    "name": "Buddy",
    "breed": "Golden Retriever",
    "age": 3,
    "color": "Golden",
    "size": "Large",
    "weight": 30
  }
  """);

  // Create Dog object with constructor
  print(Dog(
      name: dogMap['name'],
      breed: dogMap['breed'],
      age: dogMap['age'],
  ));
}
