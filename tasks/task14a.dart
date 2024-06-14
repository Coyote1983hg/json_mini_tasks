import 'dart:convert';
import '../domain/ip.dart';

void main() => jsonDecode("""
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
""")['users']
    .map<IP>((userItem) => IP(ip: userItem['ip']))
    .forEach(print);
