import 'dart:convert';

import '../domain/movie.dart';

void main() => jsonDecode("""
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
""")
['ratings']['movies']
    .map<Movie>((movieItem) => Movie(
          title: movieItem['title'],
          rating: movieItem['rating'].toDouble(),
          year: movieItem['year'],
        ))
    .forEach(print);
