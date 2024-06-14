import 'dart:convert';

import '../domain/movie.dart';

void main() {
  String json11 = """
{
  "movies": [
    {
      "title": "The Shawshank Redemption",
      "details": {
        "year": 1994,
        "duration": "2h 22min",
        "genre": "Drama",
        "rating": 9.3
      }
    },
    {
      "title": "The Godfather",
      "details": {
        "year": 1972,
        "duration": "2h 55min",
        "genre": "Crime, Drama",
        "rating": 9.2
      }
    },
    {
      "title": "The Dark Knight",
      "details": {
        "year": 2008,
        "duration": "2h 32min",
        "genre": "Action, Crime, Drama",
        "rating": 9.0
      }
    }
  ]
}
""";

  List<Movie> movies = (jsonDecode(json11)['movies'] as List)
      .map((movieItem) => Movie(
            title: movieItem['title'],
            year: movieItem['details']['year'],
            rating: movieItem['details']['rating'].toDouble(),
          ))
      .toList();

  for (Movie m in movies) {
    print(m);
  }
}
