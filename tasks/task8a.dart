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

  Map<String, dynamic> jsonMap = jsonDecode(json8);

  List<dynamic> newsOutletsList = jsonMap['newsOutlets'];

  List<News> allNews = (jsonDecode(json8)['newsOutlets'] as List)
      .expand((outlet) => outlet['latestNews'])
      .map((item) => News(title: item['title'], source: item['source']))
      .toList();

  for (News n in allNews) {
    print(n);
  }
}
