import 'dart:convert';

import '../domain/btc_price.dart';

void main() {
  String json6 = """
{
  "crypto": [
    {
      "time": "Jun 10, 2024 13:25:54 UTC",
      "chartName": "Ethereum",
      "btcPr": {
          "rate": "4,581.537",
          "symbol": "&euro;"
      }
    },
    {
      "time": "Jun 10, 2024 13:25:54 UTC",
      "chartName": "Bitcoin",
      "btcPr": {
          "rate": "64,581.537",
          "symbol": "&euro;"
      }
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse BtcPrice basierend auf dem JSON-String json6 (in Euro)
   // Decodează JSON-ul în Map<String, dynamic>
  Map<String, dynamic> jsonMap = jsonDecode(json6);

  // Extrage datele pentru Bitcoin
  List<dynamic> cryptoList = jsonMap['crypto'];
  Map<String, dynamic> bitcoinMap = cryptoList.firstWhere((item) => item['chartName'] == 'Bitcoin');
  Map<String, dynamic> btcPrMap = bitcoinMap['btcPr'];
  String currency = btcPrMap['symbol'].replaceAll('&euro;', 'EUR');
  String price = btcPrMap['rate'];

  // Creează o instanță a clasei BtcPrice
  BtcPrice btcPrice = BtcPrice(currency: currency, price: price);

  // Afișează prețul Bitcoin în Euro
  print(btcPrice);
}


