import 'dart:convert';

import '../domain/movie.dart';

void main() {
  String json12 = """
{
  "ratings": {
      "rating": "9",
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
}
""";

  // Erstelle eine Instanz der Klasse Movie basierend auf dem JSON-String json12
   // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json12);

  // Extrage lista de filme din Map-ul JSON
  Map<String, dynamic> ratingsMap = jsonMap['ratings'];
  List<dynamic> moviesList = ratingsMap['movies'];

  // Creează instanțe ale clasei Movie
  List<Movie> movies = moviesList.map((movieItem) {
    return Movie(
      title: movieItem['title'],
      rating: movieItem['rating'].toDouble(),
      year: movieItem['year'],
    );
  }).toList();

  // Afișează fiecare film
  for (Movie m in movies) {
    print(m);
  }
}
