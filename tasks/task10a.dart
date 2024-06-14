import 'dart:convert';

import '../domain/movie.dart';

void main() {
  String json10 = """
{
  "movies": [
    {
      "title": "The Shawshank Redemption",
      "year": 1994,
      "duration": "2h 22min",
      "genre": "Drama",
      "rating": 9.3
    },
    {
      "title": "The Godfather",
      "year": 1972,
      "duration": "2h 55min",
      "genre": "Crime, Drama",
      "rating": 9.2
    },
    {
      "title": "The Dark Knight",
      "year": 2008,
      "duration": "2h 32min",
      "genre": "Action, Crime, Drama",
      "rating": 9.0
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse Movie basierend auf dem JSON-String json10
  // Decode and create Movie objects in one line
  List<Movie> movies = (jsonDecode(json10)['movies'] as List)
      .map((item) => Movie(
          title: item['title'],
          year: item['year'],
          rating: item['rating'].toDouble(),
        ))
      .toList();

  // Print each movie
  for (Movie m in movies) {
    print(m);
  }
}
