import 'dart:convert';

import '../domain/ip.dart';

void main() {
  String json13 = """
{
  "ip": "127.0.0.1",
  "port": 8080,
  "protocol": "http"
}
""";

  Map<String, dynamic> jsonMap = jsonDecode(json13);

  IP ip = IP(
    ip: jsonMap['ip'],
  );

  print(ip);
}
