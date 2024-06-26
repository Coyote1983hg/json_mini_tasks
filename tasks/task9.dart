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

  // Erstelle eine Instanz der Klasse News basierend auf dem JSON-String json9
  // Decodează JSON-ul în List<dynamic>
  List<dynamic> jsonList = jsonDecode(json9);

  // Creează instanțe ale clasei News
  List<News> newsList = jsonList.map((newsItem) {
    return News(
      title: newsItem['title'],
      source: newsItem['source'],
    );
  }).toList();

  // Afișează fiecare știre
  for (News n in newsList) {
    print(n);
  }
}
