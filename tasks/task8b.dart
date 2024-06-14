import 'dart:convert';
import '../domain/news.dart';

void main() => jsonDecode("""
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
""")['newsOutlets']
    
  .map<News>((item) => News(title: item['latestNews'][1]['title'], source: item['latestNews'][2]['source']))
  .forEach(print);
