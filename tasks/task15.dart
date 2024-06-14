import 'dart:convert';

import '../domain/ip.dart';

void main() {
  String json15 = """
{
  "game": "Dota 2",
  "players": [
    {
      "name": "Miracle-",
      "team": "Nigma",
      "position": 1,
      "ip-address": {
        "host": "40.110.5.5",
        "port": 8080
      }
    },
    {
      "name": "Topson",
      "team": "OG",
      "position": 2,
      "ip-address": {
        "host": "200.100.0.0",
        "port": 8080
      }
    },
    {
      "name": "SumaiL",
      "team": "OG",
      "position": 3,
      "ip-address": {
        "host": "33.9.122.90",
        "port": 8080
      }
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse IP basierend auf dem JSON-String json15
  // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json15);

  // Extrage lista de jucători din Map-ul JSON
  List<dynamic> playersList = jsonMap['players'];

  // Creează instanțe ale clasei IP pentru fiecare jucător
  List<IP> ipList = playersList.map((playerItem) {
    Map<String, dynamic> ipAddressMap = playerItem['ip-address'];
    return IP(ip: ipAddressMap['host']);
  }).toList();

  // Afișează adresele IP
  for (IP ip in ipList) {
    print(ip);
  }
}

