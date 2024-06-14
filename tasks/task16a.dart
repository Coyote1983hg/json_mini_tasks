import 'dart:convert';
import '../domain/dog.dart';

void main() => print(Dog(
    name: jsonDecode("""
{
  "name": "Buddy",
  "breed": "Golden Retriever",
  "age": 3,
  "color": "Golden",
  "size": "Large",
  "weight": 30
}
""")['name'],
    breed: jsonDecode("""
{
  "name": "Buddy",
  "breed": "Golden Retriever",
  "age": 3,
  "color": "Golden",
  "size": "Large",
  "weight": 30
}
""")['breed'],
    age: jsonDecode("""
{
  "name": "Buddy",
  "breed": "Golden Retriever",
  "age": 3,
  "color": "Golden",
  "size": "Large",
  "weight": 30
}
""")['age'],
  ));
