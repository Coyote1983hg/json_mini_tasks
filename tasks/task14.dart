import 'dart:convert';

import '../domain/ip.dart';

void main() {
  String json14 = """
{
  "users": [
    {
      "name": "John Doe",
      "age": 30,
      "ip": "244.111.4.24"
    },
    {
      "name": "Jane Doe",
      "age": 25,
      "ip": "100.44.94.1"
    }
  ]
}
""";

  Map<String, dynamic> jsonMap = jsonDecode(json14);

  List<dynamic> usersList = jsonMap['users'];

  List<IP> ipList = usersList.map((userItem) {
    return IP(ip: userItem['ip']);
  }).toList();

  for (IP ip in ipList) {
    print(ip);
  }
}
