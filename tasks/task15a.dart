import 'dart:convert';
import '../domain/ip.dart';

void main() => jsonDecode("""
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
""")
['players']
    .map<IP>((playerItem) => IP(ip: playerItem['ip-address']['host']))
    .forEach(print);
