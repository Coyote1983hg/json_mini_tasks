import 'dart:convert';

void main() {
  String json13 = """
{
  "ip": "127.0.0.1",
  "port": 8080,
  "protocol": "http"
}
""";

  // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json13);

  // Creează o instanță a clasei IP
  IP ip = IP(
    ipAddress: jsonMap['ip'],
    port: jsonMap['port'],
    protocol: jsonMap['protocol'],
  );

  print(ip);
}

class IP {
  final String ipAddress;
  final int port;
  final String protocol;

  IP({
    required this.ipAddress,
    required this.port,
    required this.protocol,
  });

  @override
  String toString() {
    return '$protocol://$ipAddress:$port';
  }
}
