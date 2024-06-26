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

  Map<String, dynamic> jsonMap = jsonDecode(json11);

  List<dynamic> moviesList = jsonMap['movies'];

  List<Movie> movies = moviesList.map((movieItem) {
    Map<String, dynamic> detailsMap = movieItem['details'];
    return Movie(
      title: movieItem['title'],
      rating: detailsMap['rating'].toDouble(),
      year: detailsMap['year'],
    );
  }).toList();

  for (Movie m in movies) {
    print(m);
  }
}
