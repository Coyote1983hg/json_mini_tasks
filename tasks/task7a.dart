import 'dart:convert';

import '../domain/news.dart';

void main() {
  String json7 = """
{
  "news": [
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
""";
// One-liner for decoding and creating News objects
  List<News> news = (jsonDecode(json7)['news'] as List)
      .map((item) => News(title: item['title'], source: item['source']))
      .toList();

  // Print each news item
  for (News n in news) {
    print(n);
  }
}
