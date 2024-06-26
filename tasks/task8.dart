import 'dart:convert';

import '../domain/news.dart';

void main() {
  String json8 = """
{
  "newsOutlets": [
    {
      "title": "The New York Times",
      "source": "The New York Times Company",
      "latestNews": [
        {
          "title": "Germany's Scholz says Russia must pay high price if it invades Ukraine",
          "source": "Reuters",
          "time": "2022-02-20T14:00:00Z"
        },
        {
          "title": "Ukraine crisis: US warns Russia of consequences if it invades",
          "source": "BBC",
          "time": "2022-02-20T14:00:00Z"
        },
        {
          "title": "UAPB's 21st annual Black History Month program to feature 'The Black Family: Representation, Identity and Diversity'",
          "source": "Pine Bluff Commercial",
          "time": "2022-02-20T14:00:00Z"
        }
      ]
    },
    {
      "title": "The Washington Post",
      "source": "Nash Holdings LLC",
      "latestNews": [
        {
          "title": "Germany's Scholz says Russia must pay high price if it invades Ukraine",
          "source": "Reuters",
          "time": "2022-02-20T14:00:00Z"
        },
        {
          "title": "Ukraine crisis: US warns Russia of consequences if it invades",
          "source": "BBC",
          "time": "2022-02-20T14:00:00Z"
        },
        {
          "title": "UAPB's 21st annual Black History Month program to feature 'The Black Family: Representation, Identity and Diversity'",
          "source": "Pine Bluff Commercial",
          "time": "2022-02-20T14:00:00Z"
        }
      ]
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse News basierend auf dem JSON-String json8
   // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json8);

  // Extrage lista de surse de știri din Map-ul JSON
  List<dynamic> newsOutletsList = jsonMap['newsOutlets'];

  // Iterează prin lista de surse de știri și creează instanțe ale clasei News
  List<News> allNews = [];
  for (var newsOutlet in newsOutletsList) {
    List<dynamic> latestNewsList = newsOutlet['latestNews'];
    for (var newsItem in latestNewsList) {
      allNews.add(News(
        title: newsItem['title'],
        source: newsItem['source'],
      ));
    }
  }

  // Afișează fiecare știre
  for (News n in allNews) {
    print(n);
  }
}

