import 'dart:convert';

import '../domain/news.dart';

void main() {
  String json9 = """
[
  {
    "title": "The best way to learn Flutter",
    "source": "Flutter Dev",
    "time": "2022-02-20T14:00:00Z"
  },
  {
    "title": "Dart is the best programming language",
    "source": "Dart Dev",
    "time": "2022-02-20T14:00:00Z"
  },
  {
    "title": "The best way to learn Dart",
    "source": "Dart Dev",
    "time": "2022-02-20T14:00:00Z"
  }
]
""";
// Decode JSON and create News objects in one line
  List<News> newsList = (jsonDecode(json9) as List)
      .map((item) => News(title: item['title'], source: item['source']))
      .toList();

  // Print each news item
  for (News n in newsList) {
    print(n);
  }
}
